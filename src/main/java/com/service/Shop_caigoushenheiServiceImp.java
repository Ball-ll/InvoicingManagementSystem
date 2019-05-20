package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Shop_caigoushenheiDao;
import com.entitys.Shop_caigoushenheiEntity;
import com.service.base.BaseServiceImp;
/**
 * 商品采购审核serviceImp实现类
 * @author 丸子'
 *
 */
@Service("Shop_caigoushenheiService")
public class Shop_caigoushenheiServiceImp extends BaseServiceImp<Shop_caigoushenheiEntity> implements Shop_caigoushenheiService{

	@Autowired
	private Shop_caigoushenheiDao caigoushenheidao;
	/**
	 * 根据审核状态显示
	 */
	public List<Shop_caigoushenheiEntity> findzt(Shop_caigoushenheiEntity caigoushenheiEntity) {
		return caigoushenheidao.findzt(caigoushenheiEntity);
	}
	/**
	 * 审核驳回
	 */
	public void updatebohui(Shop_caigoushenheiEntity caigoushenheiEntity) {
		caigoushenheidao.updatebohui(caigoushenheiEntity);
	}
	/**
	 * 采购状态
	 */
	public void updatecgzt(Shop_caigoushenheiEntity caigoushenheiEntity) {
		caigoushenheidao.updatecgzt(caigoushenheiEntity);
	}
}
