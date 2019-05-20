package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Shop_gongyinDao;
import com.entitys.Shop_gongyinEntity;
import com.service.base.BaseServiceImp;
/**
 * 商品供应商service实现类
 * @author 丸子'
 *
 */
@Service("Shop_gongyinService")
public class Shop_gongyinServiceImp extends BaseServiceImp<Shop_gongyinEntity> implements Shop_gongyinService{
	@Autowired
	private Shop_gongyinDao gongyindao;
	/**
	 * 条件查询（根据供应商名）
	 */
	public List<Shop_gongyinEntity> findby(Shop_gongyinEntity gongyinby) {
		return gongyindao.findby(gongyinby);
	}
	/**
	 * 分页查询（bootstrap）
	 */
	public List<Shop_gongyinEntity> findbt(Shop_gongyinEntity gongyinby) {
		return gongyindao.findbt(gongyinby);
	}
    /**
     * 查询总数
     */
	public int count(Shop_gongyinEntity gongyinby) {
		return gongyindao.count(gongyinby);
	}
}
