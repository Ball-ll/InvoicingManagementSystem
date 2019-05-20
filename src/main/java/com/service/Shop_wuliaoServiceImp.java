package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Shop_wuliaoDao;
import com.entitys.Shop_wuliaoEntity;
import com.service.base.BaseServiceImp;
/**
 * 系统物料serviceImp实现类
 * @author 丸子'
 *
 */
@Service("Shop_wuliaoService")
public class Shop_wuliaoServiceImp extends BaseServiceImp<Shop_wuliaoEntity> implements Shop_wuliaoService{

	@Autowired
	private Shop_wuliaoDao wuliaoDao;
	/**
	 * 条件查询（根据物料名/单位）
	 */
	public List<Shop_wuliaoEntity> findby(Shop_wuliaoEntity wuliao) {
		return wuliaoDao.findby(wuliao);
	}
	/**
	 * 判断系统是否已有当前物料
	 */
	public List<Shop_wuliaoEntity> findbywuliaona(Shop_wuliaoEntity wuliao) {
		return wuliaoDao.findbywuliaona(wuliao);
	}
	/**
	 * 根据id查询（物料）
	 */
	public List<Shop_wuliaoEntity> findbyId(Shop_wuliaoEntity wuliao) {
		return wuliaoDao.findbyId(wuliao);
	}    
	/**
	 * 分页查询（bootstrap）
	 */
	public List<Shop_wuliaoEntity> findbt(Shop_wuliaoEntity wuliao) {
		return wuliaoDao.findbt(wuliao);
	}
	/**
	 * 查询总数
	 */
	public int count(Shop_wuliaoEntity wuliao) {
		return wuliaoDao.count(wuliao);
	}
}
