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
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="static/boostrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="static/vendor/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet"
	href="static/vendor/font-awesome/css/fontawesome-all.min.css">

<link rel="stylesheet" href="static/css/styles.css">
<link rel="stylesheet" href="static/css/wuliao.css">


<!-- 事件 -->
<link rel="stylesheet" href="static/btactive/css/bootstrap.min.css">
</head>
<body>
	<div class="content">
		<!--内容-->
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header bg-light">物料录入:</div>
						<div class="card-body">
							<form id="addwuliaoform">
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<label for="normal-input" class="form-control-label">物料名:</label>
											<input id="normal-input" name="shop_wuliao_name"
												class="form-control" placeholder="填入物料名">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="read-only" class="form-control-label">物料类型:</label>
											<input id="read-only" name="shop_wuliao_type"
												class="form-control" placeholder="填入物料类型">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="disabled-input" class="form-control-label">物料规格:</label>
											<input id="disabled-input" name="shop_wuliao_guige"
												class="form-control" placeholder="填物料规格入">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="disabled-input" class="form-control-label">物料类型:</label>
											<select class="form-control">
												<option class="wlleixing">成品物料</option>
												<option class="wlleixing">半成品物料</option>
												<option class="wlleixing">原材料物料</option>
											</select>
										</div>

									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="disabled-input" class="form-control-label">物料类型:</label>
											<input id="disabled-input" name="shop_wuliao_danwei"
												class="form-control" placeholder="填入物料单位">
										</div>
									</div>
									<input name="shop_wuliao_leixing" type="hidden"> <input
										name="shop_wuliao_qubie" value="原厂库物料" type="hidden">


								</div>

							</form>

						</div>
						<div class="card-body">
							 <div class="row  col-md-12">
								<div class="col-md-9">
									<div class="form-group"></div>
								</div>
								<div class="col-md-1">
									<div class="form-group">
										<label for="disabled-input" class="form-control-label">&nbsp;</label>
										<input class="resluru" value="重新录入" type="button" id="noadd">
									</div>
								</div>
								<div class="col-md-1">
									<div class="form-group">
										<label for="disabled-input" class="form-control-label">&nbsp;</label>
										<input class="luruyes" value="确定" type="button" id="addwuliao">
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="card-body" id="quanbuqu">
							<div class="row">
								<div class="col-md-12">
									<div class="card">
										<div class="card-header bg-light">
											已录入物料信息:
											<form class="findby">
												<input class="findby_input" placeholder="物料名/物料单位"
													name="tiaojian" id="tiaojian"> <input type="button"
													value="搜索" class="findby_button" onclick="findby(tiaojian)">
											</form>

										</div>
										<div class="card-body">
											<div class="table-responsive">
												<table class="table table-hover">
													<thead>
														<tr>
															<th class="col-2.5">物料名</th>
															<th class="col-2.5">物料类型</th>
															<th class="col-2.5">物料规格</th>
															<th class="col-2.5">物料单位</th>
															<th class="col-2.5">物料类型</th>
															<th class="col-2"></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${wuliaos }" var="wuliaos">
															<tr class="info_tr">
																<td class="wuliaoid" style="display: none;">${wuliaos.shop_wuliao_id }</td>
																<td class="col-2.5">${wuliaos.shop_wuliao_name }</td>
																<td class="text-nowrap col-2.5">${wuliaos.shop_wuliao_type  }</td>
																<td class="col-2.5">${wuliaos.shop_wuliao_guige }</td>
																<td class="col-2.5">${wuliaos.shop_wuliao_danwei }</td>
																<td class="col-2.5">${wuliaos.shop_wuliao_leixing }</td>
																<td class="col-2"><div class="cztd">
																		<div class="cz">
																			<img src="static/imgs/rn.png" class="cz_img"><br>
																			<label class="cz_label">修改</label>
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
													<tbody>
														<!-- 条件显示区 -->
														<c:forEach items="${wuliaoby }" var="wuliaoby">
															<tr class="info_tr">
																<td class="wuliaoid" style="display: none;">${wuliaoby.shop_wuliao_id }</td>
																<td class="col-2.5">${wuliaoby.shop_wuliao_name }</td>
																<td class="text-nowrap col-2.5">${wuliaoby.shop_wuliao_type  }</td>
																<td class="col-2.5">${wuliaoby.shop_wuliao_guige }</td>
																<td class="col-2.5">${wuliaoby.shop_wuliao_danwei }</td>
																<td class="col-2"><div class="cztd">
																		<div class="cz">
																			<img src="static/imgs/rn.png" class="cz_img"><br>
																			<label class="cz_label">修改</label>
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
													<!-- 条件显示区 -->
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="del_img" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<!-- 删除提示框 -->
								<div class="modal-dialog">
									<div class="modal-content" style="width: 400px;">

										<div class="modal-header">
											<h4 class="modal-title" id="myModalLabel">确定删除吗?</h4>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal"
												style="width: 100px; margin-right: 120px; margin-top: 20px">取消</button>
											<button type="button" class="btn btn-primary yesdel">确定删除</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 删除提示框 -->
						</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
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
	<script>
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
		//删除信息
		//定义全局变量利于赋值删除的id
		var delid;
		$(".del_img").click(function() {
			//找到父级元素
			//并将id赋值给删除提示框
			var _this = $(this);
			var wuliaoid = _this.parents('.info_tr').find(".wuliaoid").text();
			delid = wuliaoid;
		});
		//确认删除
		$(".yesdel").click(function() {
			shop_wuliao_id = delid;
			$.post("${jpath}/delwuliao", {
				shop_wuliao_id : shop_wuliao_id
			}, function(data) {
				var json = $.parseJSON(data);
				alert("删除成功！");
				//重新刷新页面（当前操作的子页面）
				window.location.replace("${jpath}/findwuliao");
			});
		});
		//物料类型选择
		$(".wlleixing").click(function() {
			var nowleixing = $(this).val();
			var leixing = $("[name=shop_wuliao_leixing]").val(nowleixing);
		})
		//物料录入
		$("#addwuliao").click(function() {
		var dataJson = "{";
			var dataArr = [];
			$("#addwuliaoform").find("input").each(function(index, _this) {
				var inputN = $(_this).attr("name");
				if (inputN != "" && inputN != null) {
					dataArr.push(inputN + ":'" + $(_this).val() + "'");
					dataJson += ",";
				}
			});
			dataJson = "{" + dataArr.join(",") + "}";
			var jsonForms = eval('(' + dataJson + ')');
			$.post("${jpath}/addwuliao", jsonForms, function(data) {
				console.log(data);
				var json = $.parseJSON(data);
				alert(json.resMsg);
				//清空表单
				$("#addwuliaoform")[0].reset();
				//重新刷新页面（当前操作的子页面）
				window.location.replace("${jpath}/findwuliao");
			}); 
		});
		//重新录入
		$("#noadd").click(function() {
			$("#addwuliaoform")[0].reset();
		});
		//条件查询 （根据物料名/单位）
		function findby(tiaojian) {
			tiaojian = $("#tiaojian").val();
			if (tiaojian != "" && tiaojian != null) {
				location.href = "${jpath}/findwuliaoby?tiaojian=" + tiaojian;
			} else {
				alert("请输入查询条件！");
				return;
			}
		}
		//返回全部信息
		$(".bkquanbu").click(function() {
			location.href = "${jpath}/findwuliao";
		})
	</script>

</body>
</html>
