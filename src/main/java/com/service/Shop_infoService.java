package com.service;

import java.util.List;

import com.entitys.Shop_infoEntity;
import com.service.base.BaseService;
/**
 * 商品信息service接口类
 * @author 丸子'
 *
 */
public interface Shop_infoService extends BaseService<Shop_infoEntity>{

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
	 * 商品出库以及销售时修改库存
	 * @param infoEntity
	 */
	public void upout(Shop_infoEntity infoEntity);
}
