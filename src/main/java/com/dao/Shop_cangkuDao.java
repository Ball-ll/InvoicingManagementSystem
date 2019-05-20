package com.dao;

import java.util.List;

import com.dao.base.BaseDao;
import com.entitys.Shop_cangkuEntity;

public interface Shop_cangkuDao extends BaseDao<Shop_cangkuEntity>{
	/**
	 * 根据仓库名查询
	 * @param cangku
	 * @return
	 */
	public List<Shop_cangkuEntity> findbyname(Shop_cangkuEntity cangku);
	/**
	 * 根据厂库名修改仓库容量
	 * @param cangku
	 */
	public void update_rongliang(Shop_cangkuEntity cangku);
}
