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
							<button data-toggle="modal" data-target="#addnewcangku"
								style="border: 0; background-color: #2181ff; color: #fff; padding: 0.874rem; border-radius: 0.4rem;">新加仓库</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--内容-->
		<c:forEach items="${cangkus }" var="cangkus">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header bg-light">
								<div
									style="width: 10%; float: left; padding: 0.874rem; display: none";>
									仓库id:<label name="now_cangku_id">${cangkus.shop_cangku_id}</label>
								</div>
								<div style="width: 10%; float: left; padding: 0.874rem;">
									仓库名:<label name="now_cangku_name">${cangkus.shop_cangku_name }</label>
								</div>
								<div style="width: 10%; float: left; padding: 0.874rem;">
									仓库类型:<label name="now_cangku_leixing">${cangkus.shop_cangku_leixing }</label>
								</div>
								<div style="width: 10%; float: left; padding: 0.874rem;">
									管理人员:<label name="now_cangku_user">${cangkus.shop_cangku_user }</label>
								</div>
								<div style="width: 10%; float: left; padding: 0.874rem;">
									仓库容量:<label name="shop_cangku_rongliang">${cangkus.shop_cangku_rongliang }</label>
								</div>
								<div style="width: 10%; float: left; padding: 0.874rem;">
									剩余容量:<label name="now_cangku_now_rongliang">${cangkus.shop_cangku_now_rongliang }</label>
								</div>
								<div style="width: 10%; float: left; padding: 0.874rem;">
									仓库位置:<label name="now_cangku_weizhi">${cangkus.shop_cangku_weizhi }</label>
								</div>
								<div style="width: 10%; float: left; padding: 0.874rem;">
									使用状态:<label name="now_cangku_zhuangtai">${cangkus.shop_cangku_zhuangtai }</label>
								</div>
								<form class="findby" style="width: 20%;">
									<input class="findby_input ckname" name="shop_int_cangku"
										value="${cangkus.shop_cangku_name }" type="hidden">
								 <input class="findby_btn" type="button" value="详情" style="border: 0; background-color: #2181ff; color: #fff; padding: 0.874rem; border-radius: 0.4rem;">
									<input class="panck_btn" type="button" value="盘点" data-toggle="modal" data-target="#pan_btn"
										style="border: 0; background-color: #2181ff; color: #fff; padding: 0.874rem; border-radius: 0.4rem;">
									<input class="up_btn" type="button" value="管理"
										data-toggle="modal" data-target="#upck_btn"
										style="border: 0; background-color: #eee; color: #000; padding: 0.874rem; border-radius: 0.4rem;">
									<input class="del_btn" type="button" value="删除"
										data-toggle="modal" data-target="#del_btn"
										style="border: 0; background-color: #e21918; color:#fff; padding: 0.874rem; border-radius: 0.4rem;">
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<div class="card-body">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th class="col-2">商品名</th>
											<th class="col-2">供应商</th>
											<th class="col-2">库存</th>
											<th class="col-2">存放仓库</th>
											<th class="col-4"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${shop_infos }" var="shop_infos">
											<tr class="info_tr">
												<td class="shop_id" style="display: none;">${shop_infos.shop_id }</td>
												<td class="col-2 shop_name">${shop_infos.shop_name }</td>
												<td class="col-2">${shop_infos.shop_gongyin_name   }</td>
												<td class="col-2 shop_int_shijisize">${shop_infos.shop_size }</td>
												<td class="col-2 shop_int_cangku">${shop_infos.shop_int_cangku }</td>
												<td class="col-4"><div class="cztd">
														<div class="cz out_img" data-toggle="modal"
															data-target="#out_img">
															<img src="static/imgs/out.png" class="cz_img"><br>
															<label class="cz_label">出库</label>
														</div>
														<div class="cz del_img" data-toggle="modal"
															data-target="#del_img">
															<img src="static/imgs/del.png" class="cz_img"><br>
															<label class="cz_label">删除</label>
														</div>
													</div></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="addnewcangku" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 新加仓位 -->
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">新加仓库</h4>
					</div>
					<form class="add_from" style="width: 90%; margin: 20px auto;">
						<input name="shop_cangku_leixing" type="hidden"> <input
							name="shop_cangku_user" type="hidden"> <input
							name="shop_cangku_rongliang" type="hidden"> <input
							name="shop_cangku_now_rongliang" type="hidden">
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">仓库名称:</label> <input
									class="form-control update_txt" placeholder="仓库名称"
									name="shop_cangku_name">
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="disabled-input" class="form-control-label">仓库类型:</label>
								<select class="form-control update_txt">
									<option class="ckleixing">成品物料仓库</option>
									<option class="ckleixing">半成品物料仓库</option>
									<option class="ckleixing">原材料物料仓库</option>
								</select>
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">管理人员:</label> <select
									class="form-control update_txt">
									<option class="guanli">管理人员A</option>
									<option class="guanli">管理人员A</option>
									<option class="guanli">管理人员B</option>
								</select>
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="disabled-input" class="form-control-label">选择仓库容量:</label>
								<select class="form-control update_txt">
									<option class="ckrongliang">2000</option>
									<option class="ckrongliang">4000</option>
									<option class="ckrongliang">8000</option>
								</select>
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">仓库位置:</label> <input
									class="form-control update_txt" placeholder="仓库位置"
									name="shop_cangku_weizhi">
							</div>
						</div>
						<br />
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary addcangku">
								添加</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 新加仓位 -->

		<div class="modal fade" id="upck_btn" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 仓库管理-->
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">仓库管理</h4>
					</div>
					<form class="up_from" style="width: 90%; margin: 20px auto;">
						<input name="shop_cangku_id" type="hidden">
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">当前仓库类型:</label> <input
									class="form-control update_txt" name="cangku_leixing"
									disabled="disabled">
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">当前管理人员:</label> <input
									class="form-control update_txt" name="shop_cangku_user"
									disabled="disabled">
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">管理人员:</label> <select
									class="form-control update_txt">
									<option class="guanli">管理人员A</option>
									<option class="guanli">管理人员b</option>
									<option class="guanli">管理人员c</option>
								</select>
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">仓库位置:</label> <input
									class="form-control update_txt" placeholder="仓库位置"
									name="shop_cangku_weizhi">
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">当前状态:</label> <input
									class="form-control update_txt" name="shop_cangku_zhuangtai"
									disabled="disabled">
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">运营状态:</label> <select
									class="form-control update_txt">
									<option class="yyzt">停运</option>
									<option class="yyzt">运用中</option>
								</select>
							</div>
						</div>
						<br />
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							
							<button type="button" class="btn btn-primary upcangku">
								修改</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 仓库管理-->


		<div class="modal fade" id="out_img" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 商品出库-->
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">商品出库</h4>
					</div>
					<form class="out_from" style="width: 90%; margin: 20px auto;">
						<input name="shop_id"type="hidden"> <input
							name="shop_size"type="hidden"> <input
							name="shop_final_size"type="hidden">
						<!-- 出库操作人 -->
						<input name="shop_out_user" value="小李" type="hidden">
						<!-- 当前仓库以及容量 -->
						<input name="now_name" type="hidden"> <input
							name="now_rongliang" type="hidden">
						<!-- 出库后的容量 -->
						<input name="final_rongliang" type="hidden">
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">出库商品:</label> <input
									class="form-control update_txt" disabled="disabled"
									name="shop_name">
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">当前库存:</label> <input
									class="form-control update_txt" disabled="disabled"
									name="shop_before_size">
							</div>
						</div>
						<div class="update_div">
							<div class="form-group">
								<label for="read-only">出库数量:</label> <input
									class="form-control update_txt" placeholder="出库数量"
									name="shop_out_size">
							</div>
						</div>
						<br />
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary shop_out">
								确定</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 商品出库-->
		
		<div class="modal fade" id="del_btn" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 删除（仓库）提示框 -->
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
		<!-- 删除仓库提示框 -->
		<div class="modal fade" id="del_img" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 删除商品提示框 -->
			<div class="modal-dialog">
				<div class="modal-content" style="width: 400px;">

					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">该操作将会清空存储并删除全部商品信息！</h4>
					</div>
					<form class="del_up_form">
						<input name="shop_id" type="hidden"> 
						<!-- 当前仓库以及容量 -->
						<input name="shop_cangku_name" type="hidden"> 
						<input name="now_rongliang" type="hidden">
						<!-- 删除后的容量 -->
						<input name="shop_cangku_now_rongliang" type="hidden">
						<!-- 当前仓库以及容量 -->
						<input name="shop_size" type="hidden">
					</form>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="width: 100px; margin-right: 160px;">取消</button>
						<button type="button" class="btn btn-primary yesdelshop">确定删除</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 删除商品提示框 -->
		
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

	//操作区域默认影藏
	$(".cztd").hide();
	//显示链接提示
	$(".cz").hover(function() {
		var _this = $(this);
		_this.find(".cz_label").show();
		_this.siblings().find(".cz_label").hide();
	});
	//隐藏链接提示
	$(".cz").mouseout(function() {
		var _this = $(this);
		_this.find(".cz_label").hide();
	});
	$(".info_tr").hover(function() {
		var _this = $(this);
		_this.find(".cztd").show();
		_this.siblings().find(".cztd").hide();
	})
	$(".info_tr").mouseleave(function() {
		var _this = $(this);
		_this.find(".cztd").hide();
	});
		$(function() {
			var jpath = "${jpath}";
			var shop_int_cangku;
			$(".findby_btn").click(
					function() {
						var name = $(this).prev(".ckname").val();
						shop_int_cangku = name;
						location.href = "${jpath}/findckname?shop_int_cangku="
								+ shop_int_cangku;
					});
			//出库值获取
			$(".out_img").click(
					function() {
						var id = $(this).parents('.info_tr').find(".shop_id")
								.text();
						var name = $(this).parents('.info_tr').find(
								".shop_name").text();
						var size = $(this).parents('.info_tr').find(
								".shop_int_shijisize").text();
						$("[name=shop_id]").val(id);
						$("[name=shop_name]").val(name);
						$("[name=shop_before_size]").val(size);
						//根据仓库查询容量
						var shop_cangku_name = $(this).parents('.info_tr')
								.find(".shop_int_cangku").text();
						$("[name=now_name]").val(shop_cangku_name);
						$.post("${jpath}/findsize", {
							shop_cangku_name : shop_cangku_name
						}, function(data) {
							var json = $.parseJSON(data);
							var result = json.obj[0];
							var rongliang = (result.shop_cangku_now_rongliang);
							//将仓库容量赋值给相应的input框
							$("[name=now_rongliang]").val(rongliang);
						})
					});
			//商品出库
			$(".shop_out")
					.click(
							function() {
								//出库算法
								var ck_shop_size = parseInt($("[name=shop_before_size]").val());
								var out_shop_size = parseInt($("[name=shop_out_size]").val());
								//获取当前仓库的容量
								var now_rongliang = parseInt($("[name=now_rongliang]").val());
								if (out_shop_size <= ck_shop_size && out_shop_size != 0) {
									$("[name=shop_size]").val(ck_shop_size - out_shop_size);
									//最后库存
									$("[name=shop_final_size]").val(ck_shop_size - out_shop_size);
								} else {
									alert("请检查出库数量是否超出或为0!");
									return;
								}
								//商品出库
								//仓库融入增加（出库多少则增加多少）
								final_rongliang = parseInt($("[name=final_rongliang]").val(now_rongliang + out_shop_size));
								var dataJson = "{";
								var dataArr = [];
								$(".out_from").find("input")
										.each(
												function(index, _this) {
													var inputN = $(_this).attr(
															"name");
													if (inputN != ""
															&& inputN != null) {
														dataArr.push(inputN
																+ ":'"
																+ $(_this)
																		.val()
																+ "'");
														dataJson += ",";
													}
												});
								dataJson = "{" + dataArr.join(",") + "}";
								var jsonForms = eval('(' + dataJson + ')');
								$
										.post(
												"${jpath}/outAndrecord",
												jsonForms,
												function(data) {
													console.log(data);
													var json = $
															.parseJSON(data);
													alert(json.resMsg);
													//清空表单
													$(".out_from")[0].reset();
													//重新刷新页面（当前操作的子页面）
													window.location
															.replace("${jpath}/findckname");
												});
							});
			//获取select下拉框中的值
			$(".ckleixing").click(function() {
				var leixing = $(this).val();
				$("[name=shop_cangku_leixing]").val(leixing);
			});
			$(".guanli").click(function() {
				var user = $(this).val();
				$("[name=shop_cangku_user]").val(user);
			});
			$(".yyzt").click(function() {
				var yyzt = $(this).val();
				$("[name=shop_cangku_zhuangtai]").val(yyzt);
			});
			$(".ckrongliang").click(function() {
				var ckrongliang = parseInt($(this).val());
				$("[name=shop_cangku_rongliang]").val(ckrongliang);
				$("[name=shop_cangku_now_rongliang]").val(ckrongliang);
			});
			//新加仓库
			$(".addcangku").click(function() {
				var ckrongliang = $("[name=shop_cangku_rongliang]").val();
				if (ckrongliang == "") {
					alert("请选择仓库容量!");
					return false;
				}
				var dataJson = "{";
				var dataArr = [];
				$(".add_from").find("input").each(function(index, _this) {
					var inputN = $(_this).attr("name");
					if (inputN != "" && inputN != null) {
						dataArr.push(inputN + ":'" + $(_this).val() + "'");
						dataJson += ",";
					}
				});
				dataJson = "{" + dataArr.join(",") + "}";
				var jsonForms = eval('(' + dataJson + ')');
				$.post("${jpath}/addcangku", jsonForms, function(data) {
					console.log(data);
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//清空表单
					$(".add_from")[0].reset();
					//重新刷新页面（当前操作的子页面）
					window.location.replace("${jpath}/findckname");
				});
			});
			//仓库管理		
			$(".up_btn")
					.click(
							function() {
								$("[name=shop_cangku_id]").val(
										$(this).parent().parent().find(
												"[name=now_cangku_id]").html());
								$("[name=shop_cangku_name]").val(
										"不可修改："+$(this).parent().parent().find(
												"[name=now_cangku_name]")
												.html());
								$("[name=cangku_leixing]")
										.val(
												"不可修改："
														+ $(this)
																.parent()
																.parent()
																.find(
																		"[name=now_cangku_leixing]")
																.html());
								$("[name=shop_cangku_user]").val(
										$(this).parent().parent().find(
												"[name=now_cangku_user]")
												.html());
								$("[name=shop_cangku_weizhi]").val(
										$(this).parent().parent().find(
												"[name=now_cangku_weizhi]")
												.html());
								$("[name=shop_cangku_zhuangtai]").val(
										$(this).parent().parent().find(
												"[name=now_cangku_zhuangtai]")
												.html());
							})
			$(".upcangku").click(function() {
				var dataJson = "{";
				var dataArr = [];
				$(".up_from").find("input").each(function(index, _this) {
					var inputN = $(_this).attr("name");
					if (inputN != "" && inputN != null) {
						dataArr.push(inputN + ":'" + $(_this).val() + "'");
						dataJson += ",";
					}
				});
				dataJson = "{" + dataArr.join(",") + "}";
				var jsonForms = eval('(' + dataJson + ')');
				$.post("${jpath}/upck", jsonForms, function(data) {
					console.log(data);
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//清空表单
					$(".up_from")[0].reset();
					//重新刷新页面（当前操作的子页面）
					window.location.replace("${jpath}/findckname");
				});
			});
			//仓库删除
			var now_rl;
			var yuan_rl;
			var shop_cangku_id;
			$(".del_btn").click(function(){
				now_rl=$(this).parent().parent().find("[name=now_cangku_now_rongliang]").html();
				yuan_rl=$(this).parent().parent().find("[name=shop_cangku_rongliang]").html();
				shop_cangku_id=$(this).parent().parent().find("[name=now_cangku_id]").html();
			});
			$(".yesdel").click(function(){
				if(now_rl!=yuan_rl){
					alert("当前仓库中有存放物 请先清空！");
					//重新刷新页面（当前操作的子页面）
					window.location.replace("${jpath}/findckname");
				}else{
					$.post("${jpath}/del_cangku", {
						shop_cangku_id : shop_cangku_id
					}, function(data) {
						console.log(data);
						var json = $.parseJSON(data);
						alert(json.resMsg);
						//重新刷新页面（当前操作的子页面）
						window.location.replace("${jpath}/findckname");
					})	
				}
			});
			var shop_id;
			//删除商品信息获取相关值
			$(".del_img").click(
					function() {
						var id = $(this).parents('.info_tr').find(".shop_id").text();
						var name = $(this).parents('.info_tr').find(".shop_name").text();
						var size = $(this).parents('.info_tr').find(".shop_int_shijisize").text();
						$("[name=shop_id]").val(id);
						$("[name=shop_name]").val(name);
						$("[name=shop_size]").val(size);
						shop_id=id;
						//根据仓库查询容量
						var shop_cangku_name = $(this).parents('.info_tr').find(".shop_int_cangku").text();
						$("[name=shop_cangku_name]").val(shop_cangku_name);
						$.post("${jpath}/findsize", {
							shop_cangku_name : shop_cangku_name
						}, function(data) {
							var json = $.parseJSON(data);
							var result = json.obj[0];
							var rongliang = (result.shop_cangku_now_rongliang);
							//将仓库容量赋值给相应的input框
							$("[name=now_rongliang]").val(rongliang);
						})
					});
			//删除商品信息（仓库已经全部相关的产品信息并更新仓库容量）
			$(".yesdelshop").click(function(){
	            //当前仓库容量
				var ck_now_rongliang= parseInt($("[name=now_rongliang]").val());
	            //当前商品容量
				var shop_size=parseInt($("[name=shop_size]").val());
	            //删除商品后仓库的容量
				$("[name=shop_cangku_now_rongliang]").val(ck_now_rongliang+shop_size);
				var dataJson = "{";
				var dataArr = [];
				$(".del_up_form").find("input").each(function(index, _this) {
					var inputN = $(_this).attr("name");
					if (inputN != "" && inputN != null) {
						dataArr.push(inputN + ":'" + $(_this).val() + "'");
						dataJson += ",";
					}
				});
				dataJson = "{" + dataArr.join(",") + "}";
				var jsonForms = eval('(' + dataJson + ')');
				$.post("${jpath}/delete_shop_info", jsonForms, function(data) {
					console.log(data);
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//清空表单
					$(".del_up_form")[0].reset();
					//重新刷新页面（当前操作的子页面）
					window.location.replace("${jpath}/findckname");
				});
	            
			});
			//仓库盘点
			var shop_cangku_name;
			$(".panck_btn").click(function(){
				var name = $(this).parent().find(".ckname").val();
				shop_cangku_name = name;
				$.post("${jpath}/panku", {shop_cangku_name:shop_cangku_name}, function(data) {
				});
			});
			$(".load").click(function(){
				$(this).attr('href','${jpath }/static/excel/'+shop_cangku_name+'盘库表.xls');
			});

		})
	</script>

</body>
</html>
