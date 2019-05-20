package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.entitys.Users_infoEntity;

public class LoginInterceptor implements HandlerInterceptor{


	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}


	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}
	/**
	 * 定义系统访问时的拦截器 根据登录session进行判断 有放行 反之则跳转至登录页 提示登录
	 */
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resq, Object handler) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		Users_infoEntity Users_infoEntity=(Users_infoEntity) session.getAttribute("user");
		if(Users_infoEntity !=null){//session存在放行
			return true;
		}else{
			String path=req.getRequestURI();
			if(path.indexOf("login")!=-1 || path.indexOf("static")!=-1 || path.indexOf("addUsers")!=-1){
				return true;
			}
			resq.sendRedirect("login");
			return false;
		}
 }

}
