package com.dao;

import java.util.List;

import com.dao.base.BaseDao;
import com.entitys.Shop_infoEntity;

public interface Shop_infoDao extends BaseDao<Shop_infoEntity>{

	/**
	 * 根据仓库名查询
	 * @param infoEntity
	 * @return
	 */
	public List<Shop_infoEntity> findbyckname(Shop_infoEntity infoEntity);
	/**
	 * 根据ISBN编码查询（唯一约束）
	 * @param infoEntity
	 * @return
	 */
	public List<Shop_infoEntity> findbyIsbn(Shop_infoEntity infoEntity);
	/**
	 * 商品出库已经销售时修改库存
	 * @param infoEntity
	 */
	public void upout(Shop_infoEntity infoEntity);
}
