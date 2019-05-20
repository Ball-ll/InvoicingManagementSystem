package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Users_infoDao;
import com.entitys.Users_infoEntity;
import com.service.base.BaseServiceImp;
/**
 * 用户信用（注册 登录）service实现类
 * @author 丸子'
 *
 */
@Service("Users_infoService")
public class Users_infoServiceImp extends BaseServiceImp<Users_infoEntity> implements Users_infoService{

	@Autowired
	private Users_infoDao users_infoDao;
	/**
	 * 根据用户输入的账号查询（唯一约束以及登录验证）
	 */
	public List<Users_infoEntity> findbyzh(Users_infoEntity users_info) {
		return users_infoDao.findbyzh(users_info);
	}
	/**
	 * 根据用户输入的邮箱查询（唯一约束）
	 */
	public List<Users_infoEntity> findbyem(Users_infoEntity users_info) {
		return users_infoDao.findbyem(users_info);
	}
	/**
	 * 根据用户输入的昵称查询（唯一约束）
	 */
	public List<Users_infoEntity> findbyna(Users_infoEntity users_info) {
		return users_infoDao.findbyna(users_info);
	}
	/**
	 * 根据用户输入的密码查询（登录验证）
	 */
	public List<Users_infoEntity> findbypws(Users_infoEntity users_info) {
		return users_infoDao.findbypws(users_info);
	}
	/**
	 * 根据用户Id查询（用户资料页）
	 */
	public List<Users_infoEntity> findbyId(Users_infoEntity users_info) {
		return users_infoDao.findbyId(users_info);
	}
	/**
	 * 用户登陆成功时修改登陆时间
	 */
	public void updatedlzc(Users_infoEntity users_info) {
		users_infoDao.updatedlzc(users_info);
	}
	/**
	 * 用户安全修改（密码已经邮箱）
	 */
	public void updatesave(Users_infoEntity users_info) {
		users_infoDao.updatesave(users_info);
	}
}
