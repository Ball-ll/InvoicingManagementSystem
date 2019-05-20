package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Shop_cangkuDao;
import com.entitys.Shop_cangkuEntity;
import com.service.base.BaseServiceImp;


/**
 * 商品仓库serviceImp实现类
 * @author 丸子'
 *
 */
@Service("Shop_cangkuService")
public class Shop_cangkuServiceImp extends BaseServiceImp<Shop_cangkuEntity> implements Shop_cangkuService{

	@Autowired
	private Shop_cangkuDao cangkudao;
	/**
	 * 根据仓库名查询
	 */
	public List<Shop_cangkuEntity> findbyname(Shop_cangkuEntity cangku) {
		return cangkudao.findbyname(cangku);
	}
	/**
	 * 根据厂库名修改仓库容量
	 */
	public void update_rongliang(Shop_cangkuEntity cangku) {
		cangkudao.update_rongliang(cangku);
	}
}
