package com.service;

import java.util.List;

import com.entitys.Shop_caigouEntity;
import com.service.base.BaseService;
/**
 * 商品采购service接口类
 * @author 丸子'
 *
 */
public interface Shop_caigouService extends BaseService<Shop_caigouEntity>{

	/**
	 * 根据仓库名查询
	 * @param caigou
	 * @return
	 */
	public List<Shop_caigouEntity> findbyckname(Shop_caigouEntity caigou);
}
