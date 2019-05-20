package com.controller;



import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Shop_wuliaoEntity;
import com.pageUtil.Page;
import com.service.Shop_wuliaoService;
import com.uuid.UuidUtil;

@Controller
public class Shop_wuliaoController {

	@Autowired
	private Shop_wuliaoService wuliaoService;
	/**
	 * 入料录入 并且判断当前系统是否已有此物料
	 * @param wuliao
	 * @param shop_wuliao_name
	 * @return
	 */
	@RequestMapping("/addwuliao")
	@ResponseBody
	public AjaxRes wuliao(Shop_wuliaoEntity wuliao,
			@Param("shop_wuliao_name") String shop_wuliao_name){
		AjaxRes res=new AjaxRes();
		wuliao.setShop_wuliao_name(shop_wuliao_name);
		List<Shop_wuliaoEntity> wuliaowuyi=wuliaoService.findbywuliaona(wuliao);
		if(wuliaowuyi.size()>0){
			res.setResMsg("系统已有当前物料!");
		}else{
			//赋值uuid
			wuliao.setShop_wuliao_id(UuidUtil.get32UUID());
			wuliaoService.insert(wuliao);
			res.setResMsg("录入成功");
		}
		return res;
		
	}
	/**
	 * 查询物料信息
	 * @param wuliao
	 * @param md
	 * @return
	 */
	@RequestMapping("/findwuliao")
	public String find(Shop_wuliaoEntity wuliao,Model md){
		List<Shop_wuliaoEntity> wuliaos=wuliaoService.find(wuliao);
		md.addAttribute("wuliaos", wuliaos);
		return "page/wuliao";	
	}

	/**
	 * /查询物料信息(boostrop-table)
	 * @param wuliao
	 * @return
	 */
	@RequestMapping("/findwuliaobt")
	@ResponseBody
	public Object findwuliaobt(Shop_wuliaoEntity wuliao){
		if(wuliao.getLimit()>0){
			wuliao.setLimits("1");
		}
		List<Shop_wuliaoEntity> wuliaos=wuliaoService.findbt(wuliao);
		Page page=new Page();
		page.setPageNumber(wuliao.getOffset());
		page.setPageSize(wuliao.getLimit());
		page.setTotal(wuliaoService.count(wuliao));
		page.setObj(wuliaos);
		return page;
	}
	/**
	 * 条件查找（根据物料名/单位 模糊查询）
	 * @param wuliao
	 * @param md
	 * @param tiaojian
	 * @return
	 */
	@RequestMapping("/findwuliaoby")
	public String findwuliaoby(Shop_wuliaoEntity wuliao,Model md,@Param("tiaojian") String tiaojian){
		wuliao.setShop_wuliao_name(tiaojian);
		wuliao.setShop_wuliao_danwei(tiaojian);
		List<Shop_wuliaoEntity> wuliaoby=wuliaoService.findby(wuliao);
		md.addAttribute("wuliaoby",wuliaoby);
		return "page/wuliao";			
	}
	/**
	 * 删除物料
	 * @param wuliao
	 * @return
	 */
	@RequestMapping("/delwuliao")
	@ResponseBody
	public AjaxRes delwuliao(Shop_wuliaoEntity wuliao){
		AjaxRes res=new AjaxRes();
		wuliaoService.delete(wuliao);
		res.setResMsg("删除成功");
		return res;
		
	}
	
}
