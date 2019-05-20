package com.dao;

import java.util.List;

import com.dao.base.BaseDao;
import com.entitys.Shop_gongyinEntity;

public interface Shop_gongyinDao extends BaseDao<Shop_gongyinEntity>{
	/**
	 * 条件查询（根据供应商名"模糊查询"）
	 * @param gongyinby
	 * @return
	 */
	public List<Shop_gongyinEntity> findby(Shop_gongyinEntity gongyinby);
	/**
	 * 分页查询（bootstrap）
	 * @param gongyinby
	 * @return
	 */
	public List<Shop_gongyinEntity> findbt(Shop_gongyinEntity gongyinby);
    /**
     * 查询总数
     */
	public int count(Shop_gongyinEntity gongyinby);
}
