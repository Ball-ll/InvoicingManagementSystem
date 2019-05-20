package com.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Shop_cangkuEntity;
import com.entitys.Shop_infoEntity;
import com.entitys.Shop_salesEntity;
import com.pageUtil.Page;
import com.service.Shop_cangkuService;
import com.service.Shop_infoService;
import com.service.Shop_salesService;
import com.uuid.UuidUtil;

@Controller
public class Shop_salesController {
	@Autowired
	private Shop_salesService shop_salesService;
	@Autowired
	private Shop_cangkuService cangkuService;	
	@Autowired
	private Shop_infoService shop_infoService;
	
	/**
	 * 操作员销售商品时自动添加销售记录
	 * @param salesEntity
	 * @param cangku
	 * @param shop_infoEntity
	 * @param fianl_rongliang
	 * @param shop_int_cangku
	 * @return
	 */
	@RequestMapping("/addSales")
	@ResponseBody
	public AjaxRes addSales(Shop_salesEntity salesEntity,Shop_cangkuEntity cangku,Shop_infoEntity shop_infoEntity,
			@Param("fianl_rongliang") Integer fianl_rongliang,
			@Param("shop_int_cangku") String shop_int_cangku){
		AjaxRes res=new AjaxRes();
		//自动修改库存量并更新仓库容量	
		cangku.setShop_cangku_now_rongliang(fianl_rongliang);
		cangku.setShop_cangku_name(shop_int_cangku);
		cangkuService.update_rongliang(cangku);
		//更新商品库存容量
		shop_infoService.upout(shop_infoEntity);
		//添加销售记录
		salesEntity.setShop_sales_id(UuidUtil.get32UUID());
		shop_salesService.insert(salesEntity);
		res.setResMsg("出售成功!");
		return res;
	}
	/**
	 * 查找出全部销售记录
	 * @param salesEntity
	 * @return
	 */
	@RequestMapping("/findsalesInfo")
	@ResponseBody
	public Object findOutInfo(Shop_salesEntity salesEntity) {
		List<Shop_salesEntity> salesEntitys = shop_salesService.find(salesEntity);
		// 获取到时间戳 并将其转换
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (int i = 0; i < salesEntitys.size(); i++) {
			salesEntitys.get(i).setZh_shop_sales_time(sdf.format(salesEntitys.get(i).getShop_sales_time()));
		}
		if (salesEntity.getLimit() > 0) {
			salesEntity.setLimits("1");
		}
		Page page = new Page();
		page.setPageNumber(salesEntity.getOffset());
		page.setPageSize(salesEntity.getLimit());
		page.setTotal(shop_salesService.count(salesEntity));
		page.setObj(salesEntitys);
		return page;
	}
	
	/**
	 * 根据id删除销售记录
	 * @param salesEntity
	 * @return
	 */
	@RequestMapping("/del_sales")
	@ResponseBody
	public AjaxRes del_sales(Shop_salesEntity salesEntity){
		AjaxRes res=new AjaxRes();
		shop_salesService.delete(salesEntity);
		res.setResMsg("删除成功!");
		return res;
	}
}
