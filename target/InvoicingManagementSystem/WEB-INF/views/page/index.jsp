<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<c:set var="jpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>进销存管理系统</title>
    <%@ include file="../refer/css.jsp" %>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <nav class="navbar page-header">
        <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
            <i class="fa fa-bars"></i>
        </a>

         <a class="navbar-brand" href="#" style="color:#000;">
            <img src="static/imgs/logo.png" alt="logo">&nbsp;&nbsp;&nbsp;&nbsp;进存销管理系统
        </a> 

        <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
            <i class="fa fa-bars"></i>
        </a>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item d-md-down-none">
                <a href="#">
                    <i class="fa fa-bell"></i>
                    <span class="badge badge-pill badge-danger">5</span>
                </a>
            </li>

            <li class="nav-item d-md-down-none">
                <a href="#">
                    <i class="fa fa-envelope-open"></i>
                    <span class="badge badge-pill badge-danger">5</span>
                </a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    
                    
                    <c:if test="${user.users_touxiang==null || user.users_touxiang==''}">
                      <img src="static/imgs/nologo.png" class="avatar avatar-sm">
                    </c:if>
                    <c:if test="${user.users_touxiang!=null}">
                      <img src="${user.users_touxiang}"  style="width:40px; height:40px;border-radius:20px;">
                    </c:if>
                    <c:if test="${user.users_niceng==null || user.users_niceng==''}">
                      <span class="small ml-1 d-md-down-none">${user.users_zhanghao}</span>
                    </c:if>
                    <c:if test="${user.users_niceng!=null || user.users_niceng!=''}">
                      <span class="small ml-1 d-md-down-none">${user.users_niceng}</span>
                    </c:if>
                </a>

                <div class="dropdown-menu dropdown-menu-right">
                    <div class="dropdown-header">信息板块</div>

                    <a href="#" class="dropdown-item">
                   <i class="fa fa-user"></i>
                   <c:if test="${user.users_niceng==null || user.users_niceng==''}"> 
                                                                设置昵称
                    </c:if>
                    <c:if test="${user.users_niceng!=null || user.users_niceng!=''}">
                      ${user.users_niceng}
                    </c:if>
                    </a>

                    <a href="#" class="dropdown-item">
                        <i class="fa fa-envelope"></i> 邮件
                    </a>


                    <a href="#" class="dropdown-item">
                        <i class="fa fa-bell"></i> 消息
                    </a>

                    <a href="#" class="dropdown-item" onclick="user_info('${user.users_id}')">
                        <i class="fa fa-wrench"></i> 资料设置
                    </a>

                    <a  class="dropdown-item logout">
                        <i class="fa fa-lock"></i> 退出登录
                    </a>
                </div>
            </li>
        </ul>
    </nav>

    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title"></li>

                    <li class="nav-item">
                        <a href="#" class="nav-link active">
                            <i class="icon icon-speedometer"></i>进存销管理系统
                        </a>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 物料<i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="${jpath }/findwuliao" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 物料信息
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/wuliao-table" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> (bootstrop-table版)
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 采购<i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item db">
                                <a href="${jpath }/findwuliaoname" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 申请采购
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/caigoushenhei" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 已提交申请
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/showgongyinandcangku" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 商品采购
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 商品及仓库<i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="${jpath }/shop_show_info" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 商品信息
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/findckname" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 仓库商品
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/panku_info" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 盘库记录
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/shop_out_info" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 出库记录
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/salesinfo" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 销售记录
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 供应商<i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="${jpath }/findgongyin" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> 供应商信息
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${jpath }/gongyin-table" class="nav-link  nav-link-button">
                                    <i class="icon icon-target"></i> (bootstrop-table版)
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="content"><!-- 内容 -->
          <iframe src="${jpath }/shouye" style="width:100%;height:100%; border:0;"id="iframe_src"></iframe>
        </div><!-- 内容 -->
    </div>
</div>
<%@ include file="../refer/js.jsp" %>
<script>
//个人信息页面
function user_info(users_id){
		//个人资料页
		location.href="${jpath}/user_info?users_id="+users_id;	
}
 $(function(){
	 //用户退出登录
	 $(".logout").click(function(){
		 var r=confirm("确定退出吗？");
		 if(r){
				//退出登录
				location.href="${jpath}/logout"; 
		 }	 
	 });
	 
 })
</script>
<%@ include file="../refer/bottom.jsp" %>

