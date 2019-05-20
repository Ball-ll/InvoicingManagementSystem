package com.service;

import java.util.List;

import com.entitys.Shop_caigoushenheiEntity;
import com.service.base.BaseService;
/**
 * 商品采购审核service接口类
 * @author 丸子'
 *
 */
public interface Shop_caigoushenheiService extends BaseService<Shop_caigoushenheiEntity>{

	/**
	 * 根据审核状态显示
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
