package com.service;
import java.util.List;

import com.entitys.Shop_wuliaoEntity;
import com.service.base.BaseService;
/**
 * 系统物料service接口类
 * @author 丸子'
 *
 */
public interface Shop_wuliaoService extends BaseService<Shop_wuliaoEntity>{

	/**
	 * 条件查询（根据物料名/单位）
	 * @param wuliao
	 * @return
	 */
	public List<Shop_wuliaoEntity> findby(Shop_wuliaoEntity wuliao);
	/**
	 * 判断系统是否已有当前物料
	 * @param wuliao
	 * @return
	 */
	public List<Shop_wuliaoEntity> findbywuliaona(Shop_wuliaoEntity wuliao);
	/**
	 * 根据id查询（物料）
	 * @param wuliao
	 * @return
	 */
	public List<Shop_wuliaoEntity> findbyId(Shop_wuliaoEntity wuliao);
	/**
	 * 分页查询（bootstrap）
	 * @param wuliao
	 * @return
	 */
	public List<Shop_wuliaoEntity> findbt(Shop_wuliaoEntity wuliao);
    /**
     * 查询总数
     */
	public int count(Shop_wuliaoEntity wuliao);
}
