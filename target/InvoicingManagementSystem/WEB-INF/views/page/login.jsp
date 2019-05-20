<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="jpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户登录</title>
    <link rel="stylesheet" href="static/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="static/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="static/css/styles.css">
</head>
<body>
<div class="page-wrapper flex-row align-items-center">
    <div class="container">
         <div  style="height:100px; margin-bottom: 40px; position: absolute;top:10px;left: 10px;">
            <div style="width: 600px;height: 100px; margin: 0 auto; line-height: 100px;">
		       <img src="static/imgs/logo.png" width="100" height="100" style="margin-bottom: 20px;">
		       <label style="font-size:40px;">进存销管理系统</label>
		    </div>
		  </div>
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card p-4">
		  
                    <div class="card-header text-center text-uppercase h4 font-weight-light">
                                                             登录
                    </div>

                    <form class="card-body py-5 login">
                        <div class="form-group">
                            <label class="form-control-label">账号</label>
                            <input name="users_zhanghao" type="text" class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">密码</label>
                            <input name="users_pws" type="password" class="form-control">
                        </div>
                        
		                <div class="form-group">
		                    <label class="form-control-label" style="margin-top:10px;">验证码：</label><img style="float: right; padding-bottom: 10px;" id="codeImg" alt="验证码" src="${jpath}/logoVerify" onclick="changeImg()"/>
                            <input name="logoVerify_val" placeholder="请输入验证码" class="form-control">          
		                </div> 

                        <div class="custom-control custom-checkbox mt-4">
                            <input type="checkbox" class="custom-control-input" id="login">
                            <label class="custom-control-label" for="login">记住密码</label>
                        </div>
                    </form>

                    <div class="card-footer">
                        <div class="row">
                            <div class="col-3">
                                <button type="button" class="btn btn-primary px-5">登录</button>
                            </div>

                            <div class="col-9">
                                <a href="${jpath}/register" class="btn btn-link"  style="float: right;">没有账号?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/popper.js/popper.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="static/vendor/chart.js/chart.min.js"></script>
<script src="static/js/carbon.js"></script>
<script src="static/js/demo.js"></script>
<script>
//设置换一张图的js
var jpath = "${jpath}";
function changeImg() {
      var imgSrc = $("#codeImg");
      var src = imgSrc.attr("src");
      imgSrc.attr("src",chgUrl(src));
  }  
 //加入时间戳，去缓存机制   
  function chgUrl(url) {
      var timestamp = (new Date()).valueOf();if ((url.indexOf("&") >= 0)) {
          url = url + "&timestamp=" + timestamp;
      } else {
          url = url + "?timestamp=" + timestamp;
      }
      return url;
  } 
 $(function(){
	 //用户登录
		$(".btn-primary").click(function() {
			//提交表单验证
			var users_zhanghao=$("[name=users_zhanghao]").val();
			var users_pws=$("[name=users_pws]").val();
			if(users_zhanghao=="" || users_zhanghao==null || users_pws==null){
				alert("请填入登录信息!");
				return false;
			}else{
				var dataJson = "{";
				var dataArr = [];
				$(".login").find("input").each(function(index, _this) {
					var inputN = $(_this).attr("name");
					if (inputN != "" && inputN != null) {
						dataArr.push(inputN + ":'" + $(_this).val() + "'");
						dataJson += ",";
					}
				});
				dataJson = "{" + dataArr.join(",") + "}";
				var jsonForms = eval('(' + dataJson + ')');
				$.post("${jpath}/users_login", jsonForms, function(data) {
					console.log(data);
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//清空表单
					$(".login")[0].reset();
					//登录成功跳转至主页页面
					location.href="${jpath}/index";
				});
			}

		});
 })
</script>
</body>
</html>
