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
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="static/boostrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="static/vendor/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet"
	href="static/vendor/font-awesome/css/fontawesome-all.min.css">
<link rel="stylesheet" href="static/css/styles.css">
<link rel="stylesheet"
	href="static/boostrap/css/bootstrap-table.min.css">
<!-- 事件 -->
<link rel="stylesheet" href="static/btactive/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/wuliao.css">
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header bg-light">
							<button class="up_panku_excel" style="border: 0; background-color: #2181ff; color: #fff; padding: 0.874rem; border-radius: 0.4rem; float: left;">上传盘库Excel表+</button>
						<form class="up_panku_excel_form" style="float: right;">
						    <input type="file" id="up_panku_exce_file" class="up_panku_exce_file" style="display:none;">
						    <input placeholder="未选择文件" style="width:300px;border:#CCC 1px dashed; padding: 0.674rem; border-radius: 0.3rem;" name="shop_panku_excel"  />
						    <input style=" width:100px; border: 0; background-color: #2181ff; color: #fff; padding: 0.674rem; border-radius: 0.4rem;" type="button" class="up_btn" value="上传  ↑">
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="pan_btn" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 下载Excel提示框 -->
			<div class="modal-dialog">
				<div class="modal-content" style="width: 400px;">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">操作工作表已导出！</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="width: 100px; margin-right: 160px;">取消</button>
						   <a class="load btn btn-primary" style="color:#fff;width: 100px;" >下载</a>
					</div>
				</div>
			</div>
		</div>
         <!-- 下载Excel提示框 -->


	</div>
	<!--内容-->

	<script src="static/vendor/jquery/jquery.min.js"></script>
	<script src="static/vendor/popper.js/popper.min.js"></script>
	<script src="static/vendor/chart.js/chart.min.js"></script>
	<script src="static/js/carbon.js"></script>
	<script src="static/js/demo.js"></script>
	<script src="static/boostrap/js/bootstrap-table.min.js"></script>
	<script src="static/boostrap/js/bootstrap-table-zh-CN.min.js"></script>
	<!-- 事件 -->
	<script src="static/btactive/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(".up_panku_excel").click(function(){
		$(".up_panku_exce_file").click();
	});

	$(".up_panku_exce_file").change(function(){
		var up_panku_exce_file=$(".up_panku_exce_file").val();
		$("[name=shop_panku_excel]").val(up_panku_exce_file);
	});
    $(".up_btn").click(function () {
        var formData = new FormData();
        formData.append("file", document.getElementById("up_panku_exce_file").files[0]);   
        $.ajax({
            url: "up_panku_excel_file",
            type: "POST",
            data: formData,
            /**
            *必须false才会自动加上正确的Content-Type
            */
            contentType: false,
            /**
            * 必须false才会避开jQuery对 formdata 的默认处理
            * XMLHttpRequest会对 formdata 进行正确的处理
            */
            processData: false,
            success: function (data) {
                if (data == 1) {
        			alert(resMsg);
                }
            },
            error: function () {
    			alert(resMsg);
            }
        });
    });
	</script>

</body>
</html>
