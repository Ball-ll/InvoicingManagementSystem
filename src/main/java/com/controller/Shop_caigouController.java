package com.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Shop_caigouEntity;
import com.entitys.Shop_caigoushenheiEntity;
import com.entitys.Shop_cangkuEntity;
import com.entitys.Shop_gongyinEntity;
import com.entitys.Shop_infoEntity;
import com.service.Shop_caigouService;
import com.service.Shop_caigoushenheiService;
import com.service.Shop_cangkuService;
import com.service.Shop_gongyinService;
import com.service.Shop_infoService;
import com.uuid.UuidUtil;

@Controller
public class Shop_caigouController {

	@Autowired
	private Shop_caigouService shop_caigouService;
	@Autowired
	private Shop_gongyinService gongyinService;
	@Autowired
	private Shop_cangkuService cangkuService;	
	@Autowired
	private Shop_infoService shop_infoService;
	@Autowired
	private Shop_caigoushenheiService caigoushenheiService;
	
	/**
	 * 商品采购 入库 并且相应的减少原仓库的库存容量 
	 * @param shop_caigou
	 * @param shop_info
	 * @param shop_cangku_name
	 * @param shop_cangku_rongliang
	 * @return
	 */
	@RequestMapping("/shop_caigou")
	@ResponseBody
	public AjaxRes Shop_caigou(Shop_caigouEntity shop_caigou,Shop_infoEntity shop_info,Shop_cangkuEntity cangku,Shop_caigoushenheiEntity caigoushenhei,
			@Param("shop_cangku_name") String shop_cangku_name,
			@Param("shop_int_shijisize") Integer shop_int_shijisize,
			@Param("shop_gongyin_name") String shop_gongyin_name,
			@Param("shop_cangku_now_rongliang") Integer shop_cangku_now_rongliang,
			@Param("shop_caigoushenhei_id") String shop_caigoushenhei_id){
		AjaxRes res=new AjaxRes();
		//给采购赋值uuid
		shop_caigou.setShop_caigou_id(UuidUtil.get32UUID());
		//采购是添加相关产品信息
		String shopid=UuidUtil.get32UUID();
		shop_caigou.setShop_id(shopid);
		shop_info.setShop_id(shopid);
		shop_info.setShop_int_cangku(shop_cangku_name);
		shop_info.setShop_size(shop_int_shijisize);
		shop_info.setShop_gongyin_name(shop_gongyin_name);
		shop_infoService.insert(shop_info);
		shop_caigouService.insert(shop_caigou);
		//更新存放仓库的容量
		cangku.setShop_cangku_name(shop_cangku_name);
		cangku.setShop_cangku_now_rongliang(shop_cangku_now_rongliang);
		cangkuService.update_rongliang(cangku);
		//根据当前id修改采购状态
		caigoushenhei.setShop_caigoushenhei_id(shop_caigoushenhei_id);
		caigoushenheiService.updatecgzt(caigoushenhei);
		
		res.setResMsg("采购成功!");
		return res;	
	}
	/**
	 * 商品采购的时候 查询出全部系统录入的供应 以及仓库
	 * @param gongyin
	 * @param cangku
	 * @param md
	 * @return
	 */
	@RequestMapping("/showgongyinandcangku")
	public String findgongyin(Shop_gongyinEntity gongyin,Shop_cangkuEntity cangku,Model md){
		//查询供应商
		List<Shop_gongyinEntity> gongyins=gongyinService.find(gongyin);
		md.addAttribute("gongyins",gongyins);
		//查询仓库
		List<Shop_cangkuEntity> cangkus=cangkuService.find(cangku);
		md.addAttribute("cangkus",cangkus);
		return "page/caigou";	
	}
	

	
}
