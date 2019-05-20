package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Shop_infoDao;
import com.entitys.Shop_infoEntity;
import com.service.base.BaseServiceImp;
/**
 * 商品信息service实现类
 * @author 丸子'
 *
 */
@Service("Shop_infoService")
public class Shop_infoServiceImp extends BaseServiceImp<Shop_infoEntity> implements Shop_infoService{
	@Autowired
	private Shop_infoDao infoDao;
	/**
	 * 根据仓库名查询
	 */
	public List<Shop_infoEntity> findbyckname(Shop_infoEntity infoEntity) {
		return infoDao.findbyckname(infoEntity);
	}
	/**
	 * 根据ISBN编码查询（唯一约束）
	 */
	public List<Shop_infoEntity> findbyIsbn(Shop_infoEntity infoEntity) {
		return infoDao.findbyIsbn(infoEntity);
	}
	/**
	 * 商品出库已经销售时修改库存
	 */
	public void upout(Shop_infoEntity infoEntity) {
		infoDao.upout(infoEntity);
	}
}
