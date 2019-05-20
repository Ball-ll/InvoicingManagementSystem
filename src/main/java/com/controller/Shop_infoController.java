package com.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Shop_cangkuEntity;
import com.entitys.Shop_infoEntity;
import com.entitys.Shop_outEntity;
import com.pageUtil.Page;
import com.service.Shop_cangkuService;
import com.service.Shop_infoService;
import com.service.Shop_outService;
import com.uuid.UuidUtil;

@Controller
public class Shop_infoController {

	@Autowired
	private Shop_infoService shop_infoService;
	//出库实体
	@Autowired
	private Shop_outService shop_outService;
	@Autowired
	private Shop_cangkuService cangkuService;	
	
	/**
	 * 查询全部商品信息
	 * @param shop_infoEntity
	 * @param md
	 * @return
	 */
	@RequestMapping("/show_shop_info")
	@ResponseBody
	public Object show_shop_info(Shop_infoEntity shop_infoEntity,Model md){	
		if(shop_infoEntity.getLimit()>0){
			shop_infoEntity.setLimits("1");
		}
		List<Shop_infoEntity> shop_infoEntitys=shop_infoService.find(shop_infoEntity);
		Page page=new Page();
		page.setPageNumber(shop_infoEntity.getOffset());
		page.setPageSize(shop_infoEntity.getLimit());
		page.setTotal(shop_infoService.count(shop_infoEntity));
		page.setObj(shop_infoEntitys);
		return page;
	}
	/**
	 * 修改商品信息 （ISBN编码 生产日期 保质期 已交商品的销售单价）
	 * @param shop_infoEntity
	 * @param shop_isbn
	 * @return
	 */
	@RequestMapping("/up_shop_info")
	@ResponseBody
	public AjaxRes up_shop_info(Shop_infoEntity shop_infoEntity,@Param("shop_isbn") String shop_isbn){
		AjaxRes res=new AjaxRes();
		//查询ISBN编码是否已被使用
		shop_infoEntity.setShop_isbn(shop_isbn);
		List<Shop_infoEntity> shop_infoIsbn=shop_infoService.findbyIsbn(shop_infoEntity);
		if(shop_infoIsbn.size()>0){
			res.setResMsg("ISBN编码不能重复使用!");
		}else{
			shop_infoService.update(shop_infoEntity);
			res.setResMsg("修改成功!");
		}
		return res;	
	}
	/**
	 * 采购后（入库的商品）出库 修改仓库库存添加出库记录 并且还原仓库仓库容量 
	 * @param shop_caigou
	 * @param shop_out
	 * @return
	 */
	@RequestMapping("/outAndrecord")
	@ResponseBody
	public AjaxRes outAndrecord(Shop_infoEntity shop_infoEntity,Shop_outEntity shop_out,Shop_cangkuEntity cangku,@Param("now_name") String now_name,@Param("final_rongliang") Integer final_rongliang){
		AjaxRes res=new AjaxRes();
		//出库以及销售后修改商品库存
		shop_infoService.upout(shop_infoEntity);
		//出库后修改（还原）仓库的容量
		cangku.setShop_cangku_name(now_name);
		cangku.setShop_cangku_now_rongliang(final_rongliang);
		cangkuService.update_rongliang(cangku);
		//添加出库记录：赋值出库id uuid
		shop_out.setShop_out_id(UuidUtil.get32UUID());
		//添加记录
		shop_outService.insert(shop_out);
		res.setResMsg("出库成功!");
		return res;
	}
}
