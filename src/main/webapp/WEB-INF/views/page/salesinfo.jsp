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
	<script type="text/javascript">	//操作区域默认影藏
		//定义全局变量利于赋值删除的id
		var del_sales_id;
		function del_img(delid) {
			del_sales_id=delid;
		}
		//确认删除
		$(".yesdel").click(function() {
			shop_sales_id = del_sales_id;
			$.post("${jpath}/del_sales", {
				shop_sales_id : shop_sales_id
			}, function(data) {
				var json = $.parseJSON(data);
				alert("删除成功！");
				//重新刷新页面（当前操作的子页面）
				window.location.reload();
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
								pageSize : 20,
								pageList : [20, 50, 100, 150 ],
								url : '${jpath}/findsalesInfo',
								columns : [
										{
											title : '销售商品',
											field : 'shop_sales_shop'
										},
										{
											title : '商品仓库',
											field : 'shop_sales_cangku'
										},
										{
											title : '销售单价',
											field : 'shop_sales_shop_danjia'
										},
										{
											title : '销售数量',
											field : 'shop_sales_shop_size'
										},
										{
											title : '收获金额',
											field : 'shop_sales_jine'
										},
										{
											title : '销售人',
											field : 'shop_sales_user'
										},
										{
											title : '销售时间',
											field : 'zh_shop_sales_time'
										},
										{
											title : '操作',
											field : 'shop_sales_id',
											formatter : function(value, row,
													index) {
												return '<button onclick="del_img(\''+ row.shop_sales_id+ '\')" data-toggle="modal" data-target="#del_img" style="border: 0; background-color: #e21918; color:#fff; padding: 0.474rem; border-radius: 0.4rem;">删除</button>';
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
