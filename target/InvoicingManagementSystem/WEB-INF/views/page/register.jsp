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
    <title>用户注册</title>
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
                                                                  注册
                    </div>

                    <form class="card-body py-5 register">
                        <div class="form-group">
                            <label class="form-control-label">账号</label>
                            <input name="users_zhanghao" class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">邮箱</label>
                            <input name="users_mail" type="email"  class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">密码</label>
                            <input  name="users_pws" type="password" class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">确认密码</label>
                            <input  name="re_users_pws"type="password" class="form-control">
                        </div>
                    </form>

                    <div class="card-footer">
                        <button type="button" class="btn btn-success btn-block">确认注册</button>
                    </div>    
                    <div style="text-align: center;">
                                <a href="${jpath}/login" class="btn btn-link">已有账号</a>
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
var jpath = "${jpath}";
 $(function(){
	 //用户注册
		$(".btn-success").click(function() {
			//提交表单验证
			var pws=$("[name=users_pws]").val();
			var repws=$("[name=re_users_pws]").val();
			if(repws!=pws){
				alert("确认密码不符合!");
				return false;
			}else{
				var dataJson = "{";
				var dataArr = [];
				$(".register").find("input").each(function(index, _this) {
					var inputN = $(_this).attr("name");
					if (inputN != "" && inputN != null) {
						dataArr.push(inputN + ":'" + $(_this).val() + "'");
						dataJson += ",";
					}
				});
				dataJson = "{" + dataArr.join(",") + "}";
				var jsonForms = eval('(' + dataJson + ')');
				$.post("${jpath}/addUsers", jsonForms, function(data) {
					console.log(data);
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//清空表单
					$(".register")[0].reset();
					//跳转到登录页
					location.href="${jpath}/login"
				});
			}

		});
	 
 })
</script>
</body>
</html>
