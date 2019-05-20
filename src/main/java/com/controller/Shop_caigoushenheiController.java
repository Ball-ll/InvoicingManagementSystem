package com.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Shop_caigoushenheiEntity;
import com.entitys.Shop_wuliaoEntity;
import com.pageUtil.Page;
import com.service.Shop_caigoushenheiService;
import com.service.Shop_wuliaoService;
import com.uuid.UuidUtil;

import sun.misc.BASE64Decoder;

@Controller
public class Shop_caigoushenheiController {

	@Autowired
	private Shop_wuliaoService wuliaoService;
	@Autowired
	private Shop_caigoushenheiService caigoushenheiService;
	/**
	 * 查询物料信息(放入前面的页面select下拉选项选项)
	 * @param wuliao
	 * @param md
	 * @return
	 */
	@RequestMapping("/findwuliaoname")
	public String find(Shop_wuliaoEntity wuliao,Model md){
		List<Shop_wuliaoEntity> wuliaos=wuliaoService.find(wuliao);
		md.addAttribute("wuliaos", wuliaos);
		return "page/subchaigoushenhei";	
	}
	/**
	 * 条件查询物料信息(放入前面的页面物料选项卡中)
	 * @param wuliao
	 * @param md
	 * @return
	 */
	@RequestMapping("/findwuliaobyId")
	@ResponseBody
	public AjaxRes findwuliaoby(Shop_wuliaoEntity wuliao,Model md){
		AjaxRes res=new AjaxRes();
		List<Shop_wuliaoEntity> wuliaoby=wuliaoService.findbyId(wuliao);
		res.setSucceed(wuliaoby,"获取成功");
		md.addAttribute("wuliaoby",wuliaoby);
		return res;			
	}
	/**
	 * 申请采购的提交
	 * @param caigoushenhei
	 * @return
	 */
	@RequestMapping("/subcaigoushenhei")
	@ResponseBody
	public AjaxRes Subcaigoushenhei(Shop_caigoushenheiEntity caigoushenhei){
		//赋值uuid
		caigoushenhei.setShop_caigoushenhei_id(UuidUtil.get32UUID());
		AjaxRes res=new AjaxRes();
		caigoushenheiService.insert(caigoushenhei);
		res.setResMsg("申请提交成功！");
		return res;
	}
	/**
	 * 查询出全部的采购审核信息 并显示到页面
	 * @param caigoushenhei
	 * @return
	 */
	@RequestMapping("/showcaigoushenhei")
	@ResponseBody
	public Object Showcaigoushenhei(Shop_caigoushenheiEntity caigoushenhei){
		List<Shop_caigoushenheiEntity> caigoushenheis=caigoushenheiService.find(caigoushenhei);
		if(caigoushenhei.getLimit()>0){
			caigoushenhei.setLimits("1");
		}
		//实例化page对象
		Page page=new Page();
		page.setPageNumber(caigoushenhei.getOffset());
		page.setPageSize(caigoushenhei.getLimit());
		page.setTotal(caigoushenheiService.count(caigoushenhei));
		page.setObj(caigoushenheis);
		return page;
	}
	/**
	 * 此处查询审核通过的提交信息 必将审核日期格式进行转换
	 * @param caigoushenhei
	 * @return
	 */
	@RequestMapping("/showcaigoushenheizt")
	@ResponseBody
	public Object Showcaigoushenheizt(Shop_caigoushenheiEntity caigoushenhei){
		List<Shop_caigoushenheiEntity> caigoushenheis=caigoushenheiService.findzt(caigoushenhei);
		//获取到时间戳 并将其转换
		 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 for(int i=0;i<caigoushenheis.size();i++){
			 caigoushenheis.get(i).setZhuanyishop_caigoushenhei_time(sdf.format(caigoushenheis.get(i).getShop_caigoushenhei_time()));
		 }
		if(caigoushenhei.getLimit()>0){
			caigoushenhei.setLimits("1");
		}
		//实例化page对象
		Page page=new Page();
		page.setPageNumber(caigoushenhei.getOffset());
		page.setPageSize(caigoushenhei.getLimit());
		page.setTotal(caigoushenheiService.count(caigoushenhei));
		page.setObj(caigoushenheis);
		return page;
	}
	//申请批准
	/**
	 * 当管理员同意申请过后 并置入管理员的签名 签名后将base64格式的签名图片转换为文件路径格式存放在数据库中
	 * @param caigoushenhei
	 * @param req
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/pizhuncaigou")
	@ResponseBody
	public AjaxRes pizhuncaigou(Shop_caigoushenheiEntity caigoushenhei,HttpServletRequest req) throws IOException{
		AjaxRes res=new AjaxRes();
		String qianming=caigoushenhei.getShop_caigoushenhei_qianming();
		//声明要截取的字段（前几位）
		int i=22;
		//将base64编码获取并截取
		byte[] buffer;
	    qianming=qianming.substring(i);
	    //转码
	    buffer = new BASE64Decoder().decodeBuffer(qianming);
	    //存入的文件路径
		String lujing="\\uploadFile\\qianming\\"+buffer+".png";
		String realPath=req.getServletContext().getRealPath(lujing);
		FileOutputStream out = new FileOutputStream(realPath);
		out.write(buffer);
		out.close();
		//把路径存到数据库	
		caigoushenhei.setShop_caigoushenhei_qianming_lujing(lujing);
		caigoushenheiService.update(caigoushenhei);
		res.setResMsg("申请批准成功！");
		return res;
	}
	/**
	 * 审核驳回 如果未通过审核 管理员可将本条审核信息进行驳回
	 * @param caigoushenhei
	 * @return
	 */
	@RequestMapping("/pizhunbohui")
	@ResponseBody
	public AjaxRes pizhunbohui(Shop_caigoushenheiEntity caigoushenhei){
		AjaxRes res=new AjaxRes();
		caigoushenheiService.updatebohui(caigoushenhei);
		res.setResMsg("执行成功!");
		return res;
		
	}
	/**
	 * 删除已处理的审核信息
	 * @param caigoushenhei
	 * @return
	 */
	@RequestMapping("/delshenhei")
	@ResponseBody
	public AjaxRes delshenhei(Shop_caigoushenheiEntity caigoushenhei){
		AjaxRes res=new AjaxRes();
		caigoushenheiService.delete(caigoushenhei);
		res.setResMsg("删除成功");
		return res;
		
	}

}
