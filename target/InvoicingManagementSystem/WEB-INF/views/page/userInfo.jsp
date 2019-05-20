<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="jpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<style type="text/css">
	 *{ margin:0; padding:0;}
	</style>
<title>个人信息界面</title>
<link rel="stylesheet" type="text/css" href="static/css/userinfo.css" />
<link rel="stylesheet" type="text/css" href="static/date/css/date.css" />
</head>

<body>
	<div class="main">
		<!--主框架-->
		<div>
			<!--头部-->
			<div class="pan_logo">
				<div class="pan_logo_left">
					<img src="static/imgs/logo.png" style="margin-top: 10px;" />&nbsp;
					<label>进存销管理系统&nbsp;|&nbsp;账号设置 </label>
				</div>
				<div class="pan_logo_right">
					<label>账号：${user_infos.users_zhanghao }</label> &nbsp;|&nbsp; <label class="back">返回首页</label>
				</div>
			</div>
		</div>
		<!--头部-->
		<div class="count_left" style="margin-top:10px;">
			<!--内容左边-->
			<c:if test="${user_infos.users_touxiang==null || user_infos.users_touxiang=='' }">
			 <img src="static/imgs/nologo.png" style="width: 300px;height: 300px; border-radius: 50px; margin-left:60px;"/><br />
			</c:if>
			<c:if test="${user_infos.users_touxiang!=null }">
			 <img src="${user_infos.users_touxiang }" style="width: 300px;height: 300px; border-radius: 150px; margin-left:60px;" /><br />
			</c:if>
			<div class="ul" style="margin-top: 20px;">
				<span>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 称：</span><label>${user_infos.users_niceng }</label>
			</div>
			<br />
			<div class="ul">
				<span>登录账号 ：</span><label>${user_infos.users_zhanghao }</label>
			</div>
			<br />
			<div class="ul">
				<span>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：</span><label>${user_infos.users_sex }</label>
			</div>
			<br />
			<div class="ul">
				<span>生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日：</span><label>${user_infos.users_birth }</label>
			</div>
			<br />
			<div class="ul">
				<span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 箱：</span><label>${user_infos.users_mail }</label>
			</div>
			<br />
			<div class="ul">
				<span>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 话：</span><label>${user_infos.users_phone }</label>
			</div>
			<br />
			<div class="ul">
				<span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 址：</span><label>${user_infos.users_address }</label>
			</div>
			<br />
			<div class="ul">
				<span>注册时间 ：</span><label>${user_infos.zh_users_zc_time }</label>
			</div>
			<br />
			<div class="ul">
				<span>上次登录 ：</span><label>${user_infos.zh_users_dl_time }</label>
			</div>
			<br />
		</div>
		<!--内容左边-->
		<div class="count_right">
			<!--内容右边-->
			<div class="biaoti">信息修改:</div>
			<form class="up_info">
			    <input class="from_input" name="users_id" value="${user_infos.users_id }" type="hidden"/><br />
				<label>昵称:</label><input placeholder="请输入新的昵称" class="from_input" name="users_niceng" /><br />
				<label>生日:</label><input placeholder="出生日期" class="from_input date_picker" name="users_birth" value="${user_infos.users_birth }"/><br />
				<label>性别:</label><input placeholder="性别" class="from_input" name="users_sex" value="${user_infos.users_sex }"/><br />
				<label>电话:</label><input placeholder="联系方式" class="from_input"name="users_phone" value="${user_infos.users_phone }"/><br />
				<label>邮箱:</label><input placeholder="邮箱e-mail" class="from_input" name="users_mail"/><br />
				<div style="margin-top: 40px;">
				<label>地址:</label><input placeholder="地址" class="from_input" name="users_address" type="hidden" value="${user_infos.users_address }"/><br />
				  <iframe style="margin-left: 50px; margin-top: -40px;" src="${jpath }/address" width="100%" frameborder="0" scrolling="no"></iframe>
				</div>
                <br/>
				<input placeholder="请选择上传头像" class="from_input" name="users_touxiang" type="hidden" value="${user_infos.users_touxiang }"/>
				<label>头像:</label><input placeholder="请选择上传头像" class="from_input" name="touxiangname" style="margin-top: -50px;"/><br />
				<!--头像选择及上传  -->
				<input placeholder="选择头像" class="from_input" name="users_touxiang" style="display: none;"/><br /> 
			    <input class="from_input uptouxiang" type="file" id="f" style="display: none"/><br />
				<div class="up_show_div">  
				 <img class="up_show_img" src=""> 
				</div>
				<div class="up_change_img">
				 <img src="static/imgs/add.png" style="width: 30px; height: 30px; margin-top: 10px; margin-left: 10px;"> 
			    </div>
				<!--头像选择及上传   -->
				<br /> 
				
				<input type="button" value="重新填写" class="reset" /> <input
					type="button" value="确认修改" class="ok yes_up" />
			</form>
			<div class="biaoti">账户安全:</div>

			<form class="up_save">
			     <input class="from_input" name="users_id" value="${user_infos.users_id }" type="hidden"/><br />
				 <label>验证旧的密码:</label><input placeholder="请输入旧的密码" class="save_input" name="old_users_pws" type="password"/><br /> 
				 <label>输入新的密码:</label><input placeholder="新的密码" class="save_input" name="users_pws" type="password"/><br />
				 <label>确&nbsp;认&nbsp;&nbsp; &nbsp; &nbsp;密&nbsp;码:</label><input placeholder="确认密码" class="save_input"  name="re_users_pws" type="password"/><br />
				 <label>邮&nbsp;箱&nbsp;&nbsp; &nbsp; &nbsp;更&nbsp;换:</label><input placeholder="新的邮箱" class="save_input" name="users_mail"/><br />
				  <input type="button" value="重新填写" class="reset" /> <input type="button"
					value="确认修改" class="ok yes_save" />
			</form>
		</div>
		<!--内容右边-->
	</div>
	<!--主框架-->
	<div class="hengtiao"></div>
	<!--底部-->
	<div style="width:100%;height:200px; background-color: #eee;margin-top:400px;"></div>
	<script src="static/vendor/jquery/jquery.min.js"></script>
	<!-- 日期插件 -->
	<script src="http://www.jq22.com/jquery/1.8.3/jquery.min.js"></script>
	<script src="static/date/js/jquery.date_input.pack.js"></script>
	<script>
		//图片转换为base64格式
		$(".up_change_img").click(function () {  
		    $(".uptouxiang").click();
		});  
		$(".uptouxiang").change(function () {  
		    run(this, function (data) {  
		    	$(".up_show_div").show();
		        $('.up_show_img').attr('src', data); 
		        $(".up_change_img").css({"margin-left":"260px","margin-top":"-52px"}); 
		        var touxiangname=$('.uptouxiang').val();
		        //截取data:image/png;base64,便于存入数据库后 页面能够显示
		        //var users_touxiang=data.substring(data.indexOf(",") + 1);
		        $('[name=users_touxiang]').val(data); 
		        $('[name=touxiangname]').val(touxiangname);  
		    });  
		});  
	function run(input_file, get_data) {  
	    /*input_file：文件按钮对象*/  
	    /*get_data: 转换成功后执行的方法*/  
	    if (typeof (FileReader) === 'undefined') {  
	        alert("抱歉，你的浏览器不支持 FileReader，不能将图片转换为Base64，请使用现代浏览器操作！");  
	    } else {  
	        try {  
	            /*图片转Base64 核心代码*/  
	            var file = input_file.files[0];        
	            //得到上传文件的大小
	            var f= document.getElementById("f").files; 
	            var filemaxsize = 1024*1024;//最大限制1M 
	            var fileSize =f[0].size;
	            //这里我们判断下类型如果不是图片就返回 去掉就可以上传任意文件  
	            if (!/image\/\w+/.test(file.type)) {  
	                alert("请确保文件为图像类型");  
	                return false;  
	            }else if(fileSize>filemaxsize){ //这里判断选择图片的大小
	            alert("头像图片不能大于"+filemaxsize/(1024*1024)+"M！请重新选择"); 
 	            target.value =""; 
	            return false; 
	            } 
	            var reader = new FileReader();  
	            reader.onload = function () {  
	                get_data(this.result);  
	            }  
	            reader.readAsDataURL(file);  
	        } catch (e) {  
	            /* alert('图片转Base64出错啦！' + e.toString())  */ 
	        }  
	    }  
	};
</script>

<script >
$(function(){
	$('.date_picker').date_input();
	});
$(".back").click(function(){
	 window.history.back(-1); 
})
//清空表单值
$(".reset").click(function(){
	$(".up_info")[0].reset();
    $(".up_save")[0].reset();
});
//邮箱格式判断
$("[name=users_mail]").change(function(){
	var email=$("[name=users_mail]").val()
	if (email != "") {
        var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        isok= reg.test(email );
        if (!isok) {
                   alert("邮箱格式不正确，请重新输入！");
                   return false;
        }
 };
})
//用户信息修改
$(".yes_up").click(function(){
	//获取三级联动页面中的地址（值）
	var dizhi = localStorage.getItem("dizhi");
	$("[name=users_address]").val(dizhi);
	//表单空值判断
	var users_niceng=$(this).parent().find("[name=users_niceng]").val();
	var users_birth=$(this).parent().find("[name=users_birth]").val();
	var users_sex=$(this).parent().find("[name=users_sex]").val();
	var users_phone=$(this).parent().find("[name=users_phone]").val();
	var users_mail=$(this).parent().find("[name=users_mail]").val();
	var users_address=$(this).parent().find("[name=users_address]").val();
	if(users_niceng=='' || users_birth=='' || users_sex=='' || users_phone=='' || users_mail=='' || users_birth=='' || users_address==''){
		alert("请将数据填写完整!")
	}else{
		var dataJson = "{";
		var dataArr = [];
		$(".up_info").find("input").each(function(index, _this) {
			var inputN = $(_this).attr("name");
			if (inputN != "" && inputN != null) {
				dataArr.push(inputN + ":'" + $(_this).val() + "'");
				dataJson += ",";
			}
		});
		dataJson = "{" + dataArr.join(",") + "}";
		var jsonForms = eval('(' + dataJson + ')');
		$.post("${jpath}/update_user_info", jsonForms, function(data) {
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
			//清空表单
			$(".up_info")[0].reset();
			//刷新用户信息页面
			window.location.reload();
		});
	}
		
});
//两次输入密码验证相等否
$("[name=re_users_pws]").change(function(){
	var users_pws=$("[name=users_pws]").val();
	var re_users_pws=$("[name=re_users_pws]").val();
	if(users_pws!=re_users_pws){
	  alert("确认密码不相等!")
	}
	})
//用户密码邮箱修改
$(".yes_save").click(function(){
		var dataJson = "{";
		var dataArr = [];
		$(".up_save").find("input").each(function(index, _this) {
			var inputN = $(_this).attr("name");
			if (inputN != "" && inputN != null) {
				dataArr.push(inputN + ":'" + $(_this).val() + "'");
				dataJson += ",";
			}
		});
		dataJson = "{" + dataArr.join(",") + "}";
		var jsonForms = eval('(' + dataJson + ')');
		$.post("${jpath}/update_user_save", jsonForms, function(data) {
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
			//清空表单
			$(".up_save")[0].reset();
			//刷新用户信息页面
			window.location.reload();
		});
});
</script>
</body>
</html>
