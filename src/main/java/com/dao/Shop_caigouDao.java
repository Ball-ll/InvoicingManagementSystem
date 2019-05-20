package com.dao;

import java.util.List;

import com.dao.base.BaseDao;
import com.entitys.Shop_caigouEntity;

public interface Shop_caigouDao extends BaseDao<Shop_caigouEntity>{
	/**
	 * 根据仓库名查询
	 * @param caigou
	 * @return
	 */
	public List<Shop_caigouEntity> findbyckname(Shop_caigouEntity caigou);
	
}
