package com.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Shop_gongyinEntity;
import com.pageUtil.Page;
import com.service.Shop_gongyinService;
import com.uuid.UuidUtil;

@Controller
public class Shop_gongyinController {
	@Autowired
	private Shop_gongyinService gongyinService;
	/**
	 * 系统供应商的录入
	 * @param gongyin
	 * @return
	 */
	@RequestMapping("/lurugongyin")
	@ResponseBody
	public AjaxRes lurugongyin(Shop_gongyinEntity gongyin){
		AjaxRes res=new AjaxRes();
		//赋值uuid
		gongyin.setShop_gongyin_id(UuidUtil.get32UUID());
		gongyinService.insert(gongyin);
		res.setResMsg("录入成功");
		return res;
	}
	/**
	 * 显示供应商（全部信息）
	 * @param gongyin
	 * @param md
	 * @return
	 */
	@RequestMapping("/findgongyin")
	public String findgongyin(Shop_gongyinEntity gongyin,Model md){
		List<Shop_gongyinEntity> gongyins=gongyinService.find(gongyin);
		md.addAttribute("gongyins",gongyins);
		return "page/gongyinshang";	
	}
    /**
     * 查询物料信息(boostrop-table)
     * @param gongyin
     * @return
     */
	@RequestMapping("/findgongyinbt")
	@ResponseBody
	public Object findgongyinbt(Shop_gongyinEntity gongyin){
		if(gongyin.getLimit()>0){
			gongyin.setLimits("1");
		}
		List<Shop_gongyinEntity> gongyins=gongyinService.findbt(gongyin);
		Page page=new Page();
		page.setPageNumber(gongyin.getOffset());
		page.setPageSize(gongyin.getLimit());
		page.setTotal(gongyinService.count(gongyin));
		page.setObj(gongyins);
		return page;
	}
	/**
	 * 条件查询供应商信息（根据供应商名 模糊查询）
	 * @param gongyin
	 * @param md
	 * @param tiaojian
	 * @return
	 */
	@RequestMapping("/findgongyinby")
	public String findgongyinby(Shop_gongyinEntity gongyin,Model md,@Param("tiaojian") String tiaojian){
		gongyin.setShop_gongyin_name(tiaojian);
		List<Shop_gongyinEntity> gongyinby=gongyinService.findby(gongyin);
		md.addAttribute("gongyinby",gongyinby);
		return "page/gongyinshang";	
	}
	/**
	 * 删除供应商信息
	 * @param gongyin
	 * @return
	 */
	@RequestMapping("/delgongyin")
	@ResponseBody
	public AjaxRes delgongyin(Shop_gongyinEntity gongyin){
		AjaxRes res=new AjaxRes();
		gongyinService.delete(gongyin);
		res.setResMsg("删除成功");
		return res;	
	}
	/**
	 * 修改供应商信息
	 * @param gongyin
	 * @return
	 */
	@RequestMapping("/updategongyin")
	@ResponseBody
	public AjaxRes updategongyin(Shop_gongyinEntity gongyin){
		AjaxRes res=new AjaxRes();
		gongyinService.update(gongyin);
		res.setResMsg("修改成功!");
		return res;
	}
	
}
