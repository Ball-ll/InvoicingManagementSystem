package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Shop_caigouDao;
import com.entitys.Shop_caigouEntity;
import com.service.base.BaseServiceImp;
/**
 * 商品采购serviceImp实现类
 * @author 丸子'
 *
 */
@Service("Shop_caigouService")
public class Shop_caigouServiceImp extends BaseServiceImp<Shop_caigouEntity> implements Shop_caigouService{
    @Autowired
    private Shop_caigouDao caigouDao;
	/**
	 * 根据仓库名查询
	 */
	public List<Shop_caigouEntity> findbyckname(Shop_caigouEntity caigou) {
		return caigouDao.findbyckname(caigou);
	}
}
