package com.service;

import java.util.List;

import com.entitys.Users_infoEntity;
import com.service.base.BaseService;
/**
 * 用户信用（注册 登录）service接口类
 * @author 丸子'
 *
 */
public interface Users_infoService extends BaseService<Users_infoEntity>{

	/**
	 * 根据用户输入的账号查询（唯一约束以及登录验证）
	 */
	public List<Users_infoEntity> findbyzh(Users_infoEntity users_info);
	/**
	 * 根据用户输入的邮箱查询（唯一约束）
	 */
	public List<Users_infoEntity> findbyem(Users_infoEntity users_info);
	/**
	 * 根据用户输入的昵称查询（唯一约束）
	 */
	public List<Users_infoEntity> findbyna(Users_infoEntity users_info);
	/**
	 * 根据用户输入的密码查询（登录验证）
	 */
	public List<Users_infoEntity> findbypws(Users_infoEntity users_info);
	/**
	 * 根据用户Id查询（用户资料页）
	 */
	public List<Users_infoEntity> findbyId(Users_infoEntity users_info);
	/**
	 * 用户登陆成功时修改登陆时间
	 */
	public void updatedlzc(Users_infoEntity users_info);
	/**
	 * 用户安全修改（密码已经邮箱）
	 */
	public void updatesave(Users_infoEntity users_info);
}
