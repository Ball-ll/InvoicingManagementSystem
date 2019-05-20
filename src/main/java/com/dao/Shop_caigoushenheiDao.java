package com.dao;

import java.util.List;

import com.dao.base.BaseDao;
import com.entitys.Shop_caigoushenheiEntity;

public interface Shop_caigoushenheiDao extends BaseDao<Shop_caigoushenheiEntity>{
	/**
	 * 根据审核状态显示
	 * @param caigoushenheiEntity
	 * @return
	 */
	public List<Shop_caigoushenheiEntity> findzt(Shop_caigoushenheiEntity caigoushenheiEntity);
	/**
	 * 审核驳回
	 * @param caigoushenheiEntity
	 */
	public void updatebohui(Shop_caigoushenheiEntity caigoushenheiEntity);
	/**
	 * 采购状态
	 * @param caigoushenheiEntity
	 */
	public void updatecgzt(Shop_caigoushenheiEntity caigoushenheiEntity);
}
