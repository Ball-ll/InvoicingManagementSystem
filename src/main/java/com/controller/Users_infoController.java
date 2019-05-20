package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Ajax.AjaxRes;
import com.entitys.Users_infoEntity;
import com.service.Users_infoService;
import com.uuid.UuidUtil;

@Controller
public class Users_infoController {
	@Autowired
	private Users_infoService users_infoService;

	/**
	 * 用户注册 并且判断用户账号 以及用户邮箱是否被使用 如果是 则阻止用户注册 并提示跟换
	 * 
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/addUsers")
	@ResponseBody
	public AjaxRes addUsers(Users_infoEntity users_info,
			@Param("users_zhanghao") String users_zhanghao,
			@Param("users_mail") String users_mail) throws IOException {
		AjaxRes res = new AjaxRes();
		// 账号判断
		users_info.setUsers_zhanghao(users_zhanghao);
		List<Users_infoEntity> users_infobyzh = users_infoService.findbyzh(users_info);
		// 邮箱判断
		users_info.setUsers_mail(users_mail);
		List<Users_infoEntity> users_infobyem = users_infoService.findbyem(users_info);
		if (users_infobyzh.size() > 0) {
			res.setResMsg("该账号已被使用!");
		} else if (users_infobyem.size() > 0) {
			res.setResMsg("该邮箱已被使用!");
		} else {
			// 用户注册
			// 用户赋值Uuid
			users_info.setUsers_id(UuidUtil.get32UUID());
			users_infoService.insert(users_info);
			res.setResMsg("注册成功!");
		}
		return res;
	}

	/**
	 * 用户登录 并且判断用户账号 以及用户密码的输入是否正确
	 * 
	 * @return
	 */
	@RequestMapping("/users_login")
	@ResponseBody
	public AjaxRes users_login(Users_infoEntity users_info,
			@Param("users_zhanghao") String users_zhanghao,
			@Param("users_pws") String users_pws,
			HttpServletRequest req,
			@Param("logoVerify_val") String logoVerify_val) {
		AjaxRes res = new AjaxRes();
		HttpSession session=req.getSession();
		String ip = req.getHeader("x-forwarded-for");
		// 账号判断
		users_info.setUsers_zhanghao(users_zhanghao);
		List<Users_infoEntity> users_infobyzh = users_infoService.findbyzh(users_info);
		// 密码判断
		users_info.setUsers_pws(users_pws);
		List<Users_infoEntity> users_infobypws = users_infoService.findbypws(users_info);
		if (users_infobyzh.isEmpty()) {
			res.setResMsg("该账号未注册!");
		} else if (users_infobypws.isEmpty()) {
			res.setResMsg("密码不正确!");
		}else if (!(logoVerify_val.equalsIgnoreCase(session.getAttribute("logoVerify_val").toString()))) {//验证码不区分大小写
			res.setResMsg("验证码不正确!");
		} else {
			//用户登录
			session.setAttribute("user",users_infobyzh.get(0));
			//更新用户登录ip地址 以及登录区域
			users_info.setUsers_zhanghao(users_zhanghao);
			users_info.setUsers_dl_ip(ip);
			System.out.println("---------------------------------------------"+ip);
			users_infoService.updatedlzc(users_info);
			res.setResMsg("登录成功!");
		}
		return res;
	}
	/**
	 * 用户退出登录（清空session）
	 * 
	 * @return
	 */
	@RequestMapping("/logout")
	public String Logout(HttpServletRequest req){
		HttpSession session=req.getSession();
		session.setAttribute("user", null);
		return "redirect:login";	
	}
	/**
	 * 用户资料设置
	 * @param users_info
	 * @param md
	 * @return
	 */
	@RequestMapping("/user_info")
	public String user_info(Users_infoEntity users_info,Model md){
		List<Users_infoEntity> user_infos=users_infoService.findbyId(users_info);
		//日期格式转换
		SimpleDateFormat slf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for(int i=0;i<user_infos.size();i++){
			user_infos.get(i).setZh_users_zc_time(slf.format(user_infos.get(i).getUsers_zc_time()));
			user_infos.get(i).setZh_users_dl_time(slf.format(user_infos.get(i).getUsers_dl_time()));
		}
		md.addAttribute("user_infos", user_infos.get(0));	
	    return "page/userInfo";
	}
	/**
	 * 用户个人修改信息 因用户昵称 邮箱为唯一约束 故此需要进行判断系统是否存在新输入的值
	 * @param users_info
	 * @param users_niceng
	 * @param users_pws
	 * @param users_mail
	 * @return
	 */
	@RequestMapping("/update_user_info")
	@ResponseBody
	public AjaxRes update_user_info(Users_infoEntity users_info,
			@Param("users_niceng") String users_niceng,
			@Param("users_mail") String users_mail){
		AjaxRes res=new AjaxRes();
		//昵称判断
		users_info.setUsers_niceng(users_niceng);
		List<Users_infoEntity> users_infobyna = users_infoService.findbyna(users_info);
		// 邮箱判断
		users_info.setUsers_mail(users_mail);
		List<Users_infoEntity> users_infobyem = users_infoService.findbyem(users_info);
		if(users_infobyna.size()>0){
			res.setResMsg("该昵称已被使用!");
		} else if (users_infobyem.size() > 0) {
			res.setResMsg("该邮箱已被使用!");	
		}else{
			//用户修改个人数据
			users_infoService.update(users_info);
			res.setResMsg("修改成功!");	
		}
		return res;
	}
	/**
	 * 处于安全 用户在修改密码和邮箱时 必须经过原（旧密码的验证 ）通过后才可修改 反之则阻止 修改成功时清空当前session 提示重新登录
	 * @param users_info
	 * @param resq
	 * @param old_users_pws
	 * @param users_mail
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/update_user_save")
	@ResponseBody
	public AjaxRes update_user_save(Users_infoEntity users_info,
			HttpServletRequest req,
			@Param("old_users_pws") String old_users_pws,
			@Param("users_pws") String users_pws,
			@Param("users_mail") String users_mail) {
		AjaxRes res=new AjaxRes();
		//旧密码验证判断
		users_info.setUsers_pws(old_users_pws);
		List<Users_infoEntity> users_infobypws = users_infoService.findbypws(users_info);
		// 邮箱判断
		users_info.setUsers_mail(users_mail);
		List<Users_infoEntity> users_infobyem = users_infoService.findbyem(users_info);
		if(users_infobypws.isEmpty()){
			res.setResMsg("原密码验证不通过 请核对后在修改!");
		} else if (users_infobyem.size() > 0) {
			res.setResMsg("该邮箱已被使用!");	
		}else{
			//用户修改个人数据
			users_info.setUsers_pws(users_pws);
			users_infoService.updatesave(users_info);
			res.setResMsg("修改成功当前登陆已过期请重新登陆!");
			//清空session
			HttpSession session=req.getSession();
			session.setAttribute("user", null);
		}
		return res;
	}
}
