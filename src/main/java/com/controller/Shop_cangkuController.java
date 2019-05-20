package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.Ajax.AjaxRes;
import com.entitys.Shop_cangkuEntity;
import com.entitys.Shop_infoEntity;
import com.service.Shop_cangkuService;
import com.service.Shop_infoService;
import com.uuid.UuidUtil;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.format.UnderlineStyle;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

@Controller
public class Shop_cangkuController {
	@Autowired
	private Shop_cangkuService cangkuService;
	@Autowired
	private Shop_infoService shop_infoService;
	/**
	 *  新加仓库(先查询是否有输入的厂库 在让其添加   系统仓库唯一约束)
	 * @param cangku
	 * @param shop_cangku_name
	 * @return
	 */
	@RequestMapping("/addcangku")
	@ResponseBody
	public AjaxRes addcangku(Shop_cangkuEntity cangku, @Param("shop_cangku_name") String shop_cangku_name) {
		AjaxRes res = new AjaxRes();
		cangku.setShop_cangku_name(shop_cangku_name);
		List<Shop_cangkuEntity> cangkubyname = cangkuService.findbyname(cangku);
		// 判断是否已有厂库
		if (cangkubyname.isEmpty()) {
			// 赋值仓库id
			cangku.setShop_cangku_id(UuidUtil.get32UUID());
			cangkuService.insert(cangku);
			System.out.println("--------------------------------------------------------" + cangku);
			res.setResMsg("新加成功!");

		} else {
			res.setResMsg("系统已有此仓库 请勿重复添加!");
		}
		return res;
	}
	/**
	 * 根据仓库名查询(已采购的商品) 以及仓库 并显示在相关页面
	 * @param shop_info
	 * @param cangku
	 * @param md
	 * @return
	 */
	@RequestMapping("/findckname")
	public String findckname(Shop_infoEntity shop_info, Shop_cangkuEntity cangku, Model md) {
		List<Shop_cangkuEntity> cangkus = cangkuService.find(cangku);
		md.addAttribute("cangkus", cangkus);
		List<Shop_infoEntity> shop_infos = shop_infoService.findbyckname(shop_info);
		md.addAttribute("shop_infos", shop_infos);
		return "page/cangku";
	}
	/**
	 * 仓库管理 这里可以修改厂库的管理人员 运营状态 仓库地址 但不可修改仓库名 已交仓库容量
	 * @param cangku
	 * @param shop_cangku_name
	 * @return
	 */
	@RequestMapping("/upck")
	@ResponseBody
	public AjaxRes upck(Shop_cangkuEntity cangku, @Param("shop_cangku_name") String shop_cangku_name) {
		AjaxRes res = new AjaxRes();
		cangku.setShop_cangku_name(shop_cangku_name);
		List<Shop_cangkuEntity> cangkubyname = cangkuService.findbyname(cangku);
		// 判断是否已有厂库
		if (cangkubyname.isEmpty()) {
			cangkuService.update(cangku);
			res.setResMsg("修改成功!");

		} else {
			res.setResMsg("仓库名重复!");
		}
		return res;

	}
	/**
	 * 根据仓库名查询改仓库的容量 （因仓库名为唯一字段）
	 * @param cangku
	 * @param md
	 * @return
	 */
	@RequestMapping("/findsize")
	@ResponseBody
	public AjaxRes findsize(Shop_cangkuEntity cangku, Model md) {
		AjaxRes res = new AjaxRes();
		List<Shop_cangkuEntity> cangkusize = cangkuService.findbyname(cangku);
		res.setSucceed(cangkusize, "获取成功");
		md.addAttribute("cangkusize", cangkusize);
		return res;
	}	
	/**
	 * 在仓库管理中删除商品信息 当确认删除时 自动更新相关仓库的容量
	 * @param cangku
	 * @param shop_info
	 * @param shop_id
	 * @return
	 */
	@RequestMapping("/delete_shop_info")
	@ResponseBody
	public AjaxRes delete_shop_info(Shop_cangkuEntity cangku,Shop_infoEntity shop_info,
			@Param("shop_id") String shop_id) {
		AjaxRes res = new AjaxRes();
		cangkuService.update_rongliang(cangku);
		//得到需要删除的商品id
		shop_info.setShop_id(shop_id);
		shop_infoService.delete(shop_info);
		res.setResMsg("删除成功!");
		return res;
	}
	/**
	 * 系统仓库的删除 判断当前仓库中是否还存在商品信息 如果存在 则阻止删除（验证在前端验证）
	 * @param cangku
	 * @return
	 */
	@RequestMapping("/del_cangku")
	@ResponseBody
	public AjaxRes delcangku(Shop_cangkuEntity cangku){
		AjaxRes res=new AjaxRes();
		cangkuService.delete(cangku);
		res.setResMsg("改仓库已被成功删除!");
		return res;
	}

	
	/**
	 * 盘库管理(excel操作 导入以及导出)
	 * @param cangku
	 * @param shop_info
	 * @param req
	 * @param shop_cangku_name
	 * @return
	 */
	@RequestMapping("/panku")
	@ResponseBody
	public AjaxRes panku(Shop_cangkuEntity cangku,Shop_infoEntity shop_info, HttpServletRequest req,
			@Param("shop_int_cangku") String shop_cangku_name) {
		AjaxRes res = new AjaxRes();
		// excel存放路径
		String realPath = req.getSession().getServletContext().getRealPath("/");
		String exclePath = "static\\excel\\";
		String pathName = shop_cangku_name + "盘库表.xls";
		String fileName = realPath + exclePath + pathName;
		File xlsFile = new File(fileName);
		WritableWorkbook workbook = null;
		try {
			workbook = Workbook.createWorkbook(xlsFile);
			WritableSheet sheet = workbook.createSheet("sheet", 0);
			Date date = new Date();
			//日期格式装换
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String zhDate=sdf.format(date);	
			try {
				WritableFont wf = new WritableFont(WritableFont.ARIAL, 15,WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // 定义格式 字体 下划线 斜体 粗体 颜色
				WritableCellFormat wcf = new WritableCellFormat(wf); // 单元格定义
				wcf.setAlignment(jxl.format.Alignment.CENTRE); // 设置对齐方式
				//标题样式
				WritableFont wftit = new WritableFont(WritableFont.ARIAL, 15,WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // 定义格式 字体 下划线 斜体 粗体 颜色
				WritableCellFormat wcftit = new WritableCellFormat(wftit); // 单元格定义
/*				wcftit.setBackground(jxl.format.Colour.WHITE); // 设置单元格的背景颜色*/
				wcftit.setAlignment(jxl.format.Alignment.CENTRE); // 设置对齐方式
				//内容样式
				WritableFont wfcont = new WritableFont(WritableFont.ARIAL, 14,WritableFont.NO_BOLD, false, UnderlineStyle.NO_UNDERLINE,jxl.format.Colour.BLACK); // 定义格式 字体 下划线 斜体 粗体 颜色
				WritableCellFormat wccont = new WritableCellFormat(wfcont); // 单元格定义		
				wccont.setAlignment(jxl.format.Alignment.CENTRE); // 设置对齐方式
				// 因为仓库名为唯一约束（所以这里采用根据仓库名查询）
				List<Shop_cangkuEntity> cangkus = cangkuService.findbyname(cangku);
				if (cangkus != null && cangkus.size() > 0) {

					for (int i = 0; i < cangkus.size(); i++) {
						sheet.addCell(new Label(0, 0,zhDate+":"+cangkus.get(i).getShop_cangku_name() + ":盘库",wcf));
			            sheet.mergeCells(0, 0, 5, 0);//合并垮了5列。
						sheet.addCell(new Label(0, 1, "仓库类型"+":" + cangkus.get(i).getShop_cangku_leixing(),wcf));
						sheet.addCell(new Label(1, 1, "管理员"+":" + cangkus.get(i).getShop_cangku_user(),wcf));
						sheet.addCell(new Label(2, 1, "仓库容量"+":" + cangkus.get(i).getShop_cangku_rongliang().toString(),wcf));
						sheet.addCell(new Label(3, 1, "当前容量"+":" + cangkus.get(i).getShop_cangku_now_rongliang().toString(),wcf));
					}
				}
				// 设置盘库表头
				sheet.addCell(new Label(0, 2, "盘后商品总容量",wcftit));
				// 设置盘库表头
				sheet.addCell(new Label(2, 2, "现仓库剩余容量",wcftit));
				// 设置列表名
				sheet.addCell(new Label(0, 3, "商品名",wcftit));
				sheet.addCell(new Label(1, 3, "供应商",wcftit));
				sheet.addCell(new Label(2, 3, "入库仓库",wcftit));
				sheet.addCell(new Label(3, 3, "当前数量",wcftit));
				sheet.addCell(new Label(4, 3, "实际数量",wcftit));
				sheet.addCell(new Label(5, 3, "备注",wcftit));
				shop_info.setShop_int_cangku(shop_cangku_name);
				List<Shop_infoEntity> shop_infos = shop_infoService.findbyckname(shop_info);
				if (shop_infos != null && shop_infos.size() > 0) {
					for (int row = 0; row < shop_infos.size(); row++) {
						sheet.addCell(new Label(0, row + 4, shop_infos.get(row).getShop_name(),wccont));
						sheet.addCell(new Label(1, row + 4, shop_infos.get(row).getShop_gongyin_name(),wccont));
						sheet.addCell(new Label(2, row + 4, shop_infos.get(row).getShop_int_cangku(),wccont));
						sheet.addCell(new Label(3, row + 4, shop_infos.get(row).getShop_size().toString(),wccont));
						sheet.addCell(new Label(4, row + 4, null));
						sheet.addCell(new Label(5, row + 4, null));
					}
				}
				//设置行宽
				sheet.setColumnView(0,30); 
				sheet.setColumnView(1,30); 
				sheet.setColumnView(2,30); 
				sheet.setColumnView(3,30); 
				sheet.setColumnView(4,30); 
				sheet.setColumnView(5,30); 
				sheet.setColumnView(6,30); 
				//设置行高
				sheet.setRowView(0, 500);
				sheet.setRowView(2, 500);
				workbook.write();
				workbook.close();
			} catch (RowsExceededException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (WriteException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
}
