package com.service;

import java.util.List;

import com.entitys.Shop_cangkuEntity;
import com.service.base.BaseService;
/**
 * 商品仓库service接口类
 * @author 丸子'
 *
 */
public interface Shop_cangkuService extends BaseService<Shop_cangkuEntity>{

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
