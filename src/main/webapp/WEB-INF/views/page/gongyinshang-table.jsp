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
<link rel="stylesheet" href="static/boostrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="static/vendor/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet"
	href="static/vendor/font-awesome/css/fontawesome-all.min.css">
<link rel="stylesheet" href="static/css/styles.css">
<link rel="stylesheet" href="static/css/wuliao.css">


<link rel="stylesheet"
	href="static/boostrap/css/bootstrap-table.min.css">
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
						<div class="card-header bg-light">供应商录入:</div>
						<div class="card-body">
							<form id="addgongyin">
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<label for="normal-input" class="form-control-label">供应商名:</label>
											<input id="normal-input" name="shop_gongyin_name"
												class="form-control" placeholder="填入供应商名称">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="read-only" class="form-control-label">联系人:</label>
											<input id="read-only" name="shop_gongyin_user"
												class="form-control" placeholder="供应商联系人">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="disabled-input" class="form-control-label">联系电话:</label>
											<input id="disabled-input" name="shop_gongyin_phone"
												class="form-control" placeholder="供应商联系电话">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="disabled-input" class="form-control-label">联系地址:</label>
											<iframe class="form-group" src="${jpath }/address"
												height="auto" width="100%" frameborder="0" scrolling="no"></iframe>
											<input id="shop_gongyin_address" name="shop_gongyin_address"
												type="hidden" />
										</div>
									</div>


									<div class="row col-md-12" style="margin-top: -10rem;">
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
												<input class="luruyes" value="确定" type="button" id="yesadd">
											</div>
										</div>
									</div>
							</form>
						</div>
						<hr>
						<div class="card-body">
							<div class="row" id="quanbuqu">
								<div class="col-md-12">
									<table id="table">
		
		                           </table>
								</div>
							</div>
						</div>
						<hr>
					</div>
				</div>
				
				
			    <div class="modal fade" id="del_img" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<!-- 删除提示框 -->
					<div class="modal-dialog">
						<div class="modal-content" style="width: 400px;">
						
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">
								确定删除吗?
							</h4>
						</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="width:100px;margin-right: 120px;margin-top: 20px">取消</button>
								<button type="button" class="btn btn-primary yesdel">确定删除</button>
							</div>
						</div>
					</div>
				</div><!-- 删除提示框 -->
							
				<div class="modal fade" id="up_img" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<!--商品采购（jq模态框） -->
					<div class="modal-dialog">
						<div class="modal-content" style="width: 700px;">
							<form id="upform" style="width: 90%; margin: 20px auto;">
								修改供应商信息：
								<hr />
								<input value="" class="form-control update_txt"
									id="nowgongyinid" name="shop_gongyin_id" type="hidden">
								<div class="update_div">
									<div class="form-group">
										<label for="read-only" class="">供应商名:</label> <input
											class="form-control update_txt" placeholder="供应商名"
											id="nowgongyinname" name="shop_gongyin_name">
									</div>
								</div>
								<br />
								<div class="update_div">
									<div class="form-group">
										<label for="read-only" class="">联&nbsp;系&nbsp;人&nbsp;:</label>
										<input class="form-control update_txt" placeholder="联系人"
											id="nowgongyinuser" name="shop_gongyin_user">
									</div>
								</div>
								<br />
								<div class="update_div">
									<div class="form-group">
										<label for="read-only" class="">联系电话:</label> <input
											class="form-control update_txt" placeholder="联系电话"
											id="nowgongyinphone" name="shop_gongyin_phone">
									</div>
								</div>
								<br />
								<div class="update_div">
									<div class="form-group">
										<label for="read-only" class="">联系地址:</label>
										<iframe class="update_txt form-group" src="${jpath }/address"
											height="auto" frameborder="0"></iframe>
										<input type="hidden" name="shop_gongyin_address"
											id="upshop_gongyin_address">
									</div>
								</div>
								<br />
							</form>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">取消</button>
								<button type="button" class="btn btn-primary yesup">确定修改</button>
							</div>
						</div>
					</div>
				</div>
				<!--修改信息-->

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
	<script type="text/javascript">
	//删除
	//定义全局变量利于赋值删除的id
	var delid;
	function del_img(shop_gongyin_id){
		delid=shop_gongyin_id;
		$(".delts_div").fadeToggle();
	}
	//确认删除
	$(".yesdel").click(function() {
		shop_gongyin_id = delid;
		$.post("${jpath}/delgongyin", {
			shop_gongyin_id : shop_gongyin_id
		}, function(data) {
			var json = $.parseJSON(data);
			alert("删除成功！");
			$(".delts_div").hide();
			//重新刷新页面（当前操作的子页面）
			window.location.replace("${jpath}/gongyin-table");
		});
	});
	//修改供应商信息
	$(".yesup").click(function() {
		//获取三级联动页面中的地址（值）
		var updizhi = localStorage.getItem("updizhi");
		$("#upshop_gongyin_address").val(updizhi);
		var dataJson = "{";
		var dataArr = [];
		$("#upform").find("input").each(function(index, _this) {
			var inputN = $(_this).attr("name");
			if (inputN != "" && inputN != null) {
				dataArr.push(inputN + ":'" + $(_this).val() + "'");
				dataJson += ",";
			}
		});
		dataJson = "{" + dataArr.join(",") + "}";

		var jsonForms = eval('(' + dataJson + ')');

		$.post("${jpath}/updategongyin", jsonForms, function(data) {

			var json = $.parseJSON(data);
			alert(json.resMsg);
			//重新刷新页面（当前操作的子页面）
			window.location.replace("${jpath}/gongyin-table");
			//清空表单
			$("#upform")[0].reset();
		});
	});
	$(".nodel").click(function() {
		$(".delts_div").hide();
	})
    var jpath= "${jpath}";
	$(function(){
		    $('#table').bootstrapTable({
		    method:'POST', 
		    search:true,
		    pagination:true,
		    sidePagination:'server',
		    pageNumber:1,
		    pageSize:5,
		    pageList:[5, 10, 50, 100],
			url:'${jpath}/findgongyinbt',
			queryParams:function(params){
				console.log(params);
				return params;
			},
			columns:[{
					title:'供应商',
					field:'shop_gongyin_name'
				},{
					title:'联系人',
					field:'shop_gongyin_user'
				},{
					title:'联系电话',
					field:'shop_gongyin_phone'
				},{
					title:'联系地址',
					field:'shop_gongyin_address'
				},{
					title:'操作',
					field:'shop_gongyin_id',
					formatter:function(value, row, index){
						var bt ='<div class="cz" onclick="del_img(\''+row.shop_gongyin_id+'\')" data-toggle="modal" data-target="#del_img"><img src="static/imgs/del.png" class="cz_img"><label class="cz_label">删除</label></div>';
						    bt +='<div class="cz" data-toggle="modal" data-target="#up_img"><img src="static/imgs/rn.png" class="cz_img"><label class="cz_label">修改</label></div>';
						 return bt;
				}
				}],
				responseHandler:function(data){
					var json={
							total:0,
							rows:[]
					};
					json.total=data.total;
					json.rows=data.obj;
					return json;
				}, 
		      //点击行获取其中的数据
		      onClickRow: function (row) {			
					    var yuangongyinid =row.shop_gongyin_id;
						var yuangongyinname = row.shop_gongyin_name;
						var yuangongyinuser = row.shop_gongyin_user;
						var yuangongyinphone =row.shop_gongyin_phone;
						//赋值给修改框（供应商信息）
						$("#nowgongyinid").val(yuangongyinid);
						$("#nowgongyinname").val(yuangongyinname);
						$("#nowgongyinuser").val(yuangongyinuser);
						$("#nowgongyinphone").val(yuangongyinphone);
		    	   },
			
		});

});
</script>

	<script>
		$(".cztd").hide();
		//默认隐藏修改框
		$("#updiv").hide();
		//删除提示
		$(".del_img").click(function() {
			$(".delts_div").fadeToggle();
		});
		$(".nodel").click(function() {
			$(".delts_div").hide();
		});
		//供应商录入
		$("#yesadd").click(function() {
			//获取三级联动页面中的地址（值）
			var dizhi = localStorage.getItem("dizhi");
			$("#shop_gongyin_address").val(dizhi);
			var dataJson = "{";
			var dataArr = [];
			$("#addgongyin").find("input").each(function(index, _this) {
				var inputN = $(_this).attr("name");
				if (inputN != "" && inputN != null) {
					dataArr.push(inputN + ":'" + $(_this).val() + "'");
					dataJson += ",";
				}
			});
			dataJson = "{" + dataArr.join(",") + "}";

			var jsonForms = eval('(' + dataJson + ')');

			$.post("${jpath}/lurugongyin", jsonForms, function(data) {

				var json = $.parseJSON(data);
				alert(json.resMsg);
				//重新刷新页面（当前操作的子页面）
				window.location.replace("${jpath}/gongyin-table");
				//清空表单
				$("#addgongyin")[0].reset();
			});
		});

		//重新录入
		$("#noadd").click(function() {
			$("#addgongyin")[0].reset();
		});
	</script>
</body>
</html>
