package com.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Shop_outEntity;
import com.pageUtil.Page;
import com.service.Shop_outService;

@Controller
public class Shop_outController {
	@Autowired
	private Shop_outService shop_outService;

	/**
	 * 查询出全部出库记录 并将出库时间的日期格式转换 
	 * @param shop_out
	 * @return
	 */
	@RequestMapping("/findOutInfo")
	@ResponseBody
	public Object findOutInfo(Shop_outEntity shop_out) {
		List<Shop_outEntity> shop_outs = shop_outService.find(shop_out);
		// 获取到时间戳 并将其转换
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (int i = 0; i < shop_outs.size(); i++) {
			shop_outs.get(i).setZh_shop_out_time(sdf.format(shop_outs.get(i).getShop_out_time()));
		}
		if (shop_out.getLimit() > 0) {
			shop_out.setLimits("1");
		}
		Page page = new Page();
		page.setPageNumber(shop_out.getOffset());
		page.setPageSize(shop_out.getLimit());
		page.setTotal(shop_outService.count(shop_out));
		page.setObj(shop_outs);
		return page;
	}
	/**
	 * 删除出库信息
	 * @param shop_out
	 * @return
	 */
	@RequestMapping("/del_out_info")
	@ResponseBody
	public AjaxRes del_out_info(Shop_outEntity shop_out){
		AjaxRes res=new AjaxRes();
		shop_outService.delete(shop_out);
		res.setSucceed("删除成功!");
		return res;
	}
}
