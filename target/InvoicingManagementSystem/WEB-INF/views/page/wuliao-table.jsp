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
		<!--内容-->
		<table id="table">

		</table>
		<div class="modal fade" id="del_img" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 删除提示框 -->
			<div class="modal-dialog">
				<div class="modal-content" style="width: 400px;">

					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">确定删除吗?</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="width: 100px; margin-right: 120px; margin-top: 20px">取消</button>
						<button type="button" class="btn btn-primary yesdel">确定删除</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 删除提示框 -->
		<!--内容-->
	</div>

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
		//定义全局变量利于赋值删除的id
		var delid;
		function del_img(shop_wuliao_id) {
			delid = shop_wuliao_id;
		}
		//确认删除
		$(".yesdel").click(function() {
			shop_wuliao_id = delid;
			$.post("${jpath}/delwuliao", {
				shop_wuliao_id : shop_wuliao_id
			}, function(data) {
				var json = $.parseJSON(data);
				alert("删除成功！");
				//重新刷新页面（当前操作的子页面）
				window.location.replace("${jpath}/wuliao-table");
			});
		});
		$(".nodel").click(function() {
			$(".zheizao_delts").hide();
		})
		var jpath = "${jpath}";
		$(function() {
			$('#table')
					.bootstrapTable(
							{
								method : 'POST',
								search : true,
								pagination : true,
								sidePagination : 'server',
								pageNumber : 1,
								pageSize : 5,
								pageList : [ 5, 10, 50, 100 ],
								url : '${jpath}/findwuliaobt',
								columns : [
										{
											title : '物料名',
											field : 'shop_wuliao_name'
										},
										{
											title : '物料类型',
											field : 'shop_wuliao_type'
										},
										{
											title : '物料规格',
											field : 'shop_wuliao_guige'
										},
										{
											title : '物料单位',
											field : 'shop_wuliao_danwei'
										},
										{
											title : '物料类型',
											field : 'shop_wuliao_leixing'
										},
										{
											title : '操作',
											field : 'shop_wuliao_id',
											formatter : function(value, row,
													index) {
												return '<div class="cz" onclick="del_img(\''+ row.shop_wuliao_id+ '\')"><img src="static/imgs/del.png" class="cz_img" data-toggle="modal" data-target="#del_img"><label class="cz_label">删除</label></div>';
											}
										} ],
								responseHandler : function(data) {
									var json = {
										total : 0,
										rows : []
									};
									json.total = data.total;
									json.rows = data.obj;
									return json;
								}

							});

		});
	</script>

</body>
</html>
