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
<link rel="stylesheet" href="static/vendor/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet" href="static/vendor/font-awesome/css/fontawesome-all.min.css">
<link rel="stylesheet" href="static/css/styles.css">
<link rel="stylesheet" href="static/boostrap/css/bootstrap-table.min.css">
<!--日期插件 -->
<link rel="stylesheet" href="static/assets/css/jquery-ui-1.10.3.full.min.css">
<link rel="stylesheet" href="static/assets/css/ace.min.css">
<link rel="stylesheet" href="static/assets/css/ace-rtl.min.css">
<!-- 事件 -->
<link rel="stylesheet" href="static/btactive/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/wuliao.css">
</head>
<body>
	<div class="content">
		<!--内容-->
		<table id="table">
		
		</table>
		
		<div class="modal fade" id="upinfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><!--商品采购（jq模态框） -->
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">
								修改商品信息
							</h4>
						</div>
						<form class="up_from" style="width: 90%; margin: 0  auto;">
						<input name="shop_id" type="hidden">
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">商品名:</label> <input
										class="form-control update_txt" placeholder="商品名"
										 name="shop_name"  readonly="readonly">
								</div>
							</div>
							<br />
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">ISBN编码:</label> <input
										class="form-control update_txt" placeholder="ISBN编码"
										 name="shop_isbn">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">生产日期:</label> <input
										class="form-control update_txt datepicker" placeholder="生产日期"
										 name="shop_produced_time">
								</div>
							</div>					
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">保质期:</label> <input
										class="form-control update_txt datepicker" placeholder="保质期"
										name="shop_guarantee_time">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">销售单价:</label> <input
										class="form-control update_txt" placeholder="单价"
										 name="shop_price">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">存放仓库:</label> <input
										class="form-control update_txt" name="shop_int_cangku" readonly="readonly">
								</div>
							</div>
							<br />
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" 
									data-dismiss="modal">关闭
							</button>
							<button type="button" class="btn btn-primary upbtn">
								修改
							</button>
						</div>
					</div>
				</div>
			</div><!--商品采购 -->	
			
			<div class="modal fade" id="sales_shop" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><!--商品出售（jq模态框） -->
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">
								商品出售
							</h4>
						</div>
						<form class="sale_from" style="width: 90%; margin: 0  auto;">						
						<input name="shop_id" type="hidden">
						<input name="shop_sales_user" value="1" type="hidden">
						<input name="shop_id" type="hidden">
						<input name="shop_int_cangku" type="hidden">
						<input name="now_rongliang"  type="hidden">
						<input name="fianl_rongliang" type="hidden">
						<input name="now_shop_rongliang"type="hidden">
						<input name="shop_size"type="hidden">								
						<input name="shop_sales_cangku" type="hidden">
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">商品名:</label> <input
										class="form-control update_txt" placeholder="商品名"
										 name="shop_sales_shop"  readonly="readonly">
								</div>
							</div>
							<br />
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">销售单价:</label> <input
										class="form-control update_txt" placeholder="销售单价"  readonly="readonly"
										 name="shop_sales_shop_danjia">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">出售数量:</label> <input
										class="form-control update_txt" placeholder="出售数量"
										 name="shop_sales_shop_size">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">销售金额:</label> <input
										class="form-control update_txt" placeholder="出售数量"
										 name="shop_sales_jine">
								</div>
							</div>						
							<br />
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" 
									data-dismiss="modal">关闭
							</button>
							<button type="button" class="btn btn-primary salebtn">
								出售
							</button>
						</div>
					</div>
				</div>
			</div><!--商品采购 -->
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
	<!-- 日期插件 -->
	<script src="static/assets/js/jquery-ui-1.10.3.full.min.js"></script>
	<script type="text/javascript">
    var jpath= "${jpath}";
    //商品销售
    function sale(shop_cangku_name){
		$.post("${jpath}/findsize", {
			shop_cangku_name : shop_cangku_name
		}, function(data) {
			var json = $.parseJSON(data);
			var result = json.obj[0];
			var rongliang = (result.shop_cangku_now_rongliang);
			//将仓库容量赋值给相应的input框
			$("[name=now_rongliang]").val(rongliang);
		})
    }; 
	$(".salebtn").click(function() {
		//计算销售金额
		var danjia=$("[name=shop_sales_shop_danjia]").val();
		var shuliang=parseInt($("[name=shop_sales_shop_size]").val());
		var finalrongliang=parseInt($("[name=now_rongliang]").val());
		$("[name=shop_sales_jine]").val(danjia*shuliang);
		//更新仓库容量
		$("[name=fianl_rongliang]").val(finalrongliang+shuliang);
		//更新库存容量
		var now_shop_rongliang=parseInt($("[name=now_shop_rongliang]").val());
		var shop_sales_shop_size=parseInt($("[name=shop_sales_shop_size]").val());
		if(shop_sales_shop_size>now_shop_rongliang){
			alert("当前库存不足以对外销售!");
			return false;
		}else{
			$("[name=shop_size]").val(now_shop_rongliang-shop_sales_shop_size);
	 	    var dataJson = "{";
			var dataArr = [];
			$(".sale_from").find("input").each(function(index, _this) {
				var inputN = $(_this).attr("name");
				if (inputN != "" && inputN != null) {
					dataArr.push(inputN + ":'" + $(_this).val() + "'");
					dataJson += ",";
				}
			});
			dataJson = "{" + dataArr.join(",") + "}";
			var jsonForms = eval('(' + dataJson + ')');
			$.post("${jpath}/addSales", jsonForms, function(data) {
				console.log(data);
				var json = $.parseJSON(data);
				alert(json.resMsg);
				//清空表单
				$(".sale_from")[0].reset();
				//重新刷新页面（当前操作的子页面）
			    window.location.replace("${jpath}/shop_show_info");
			}); 
		}

	});
	$(function(){
		    $('#table').bootstrapTable({ 
		    method: 'POST',
		    search:true,
		    pagination:true,
		    sidePagination:'server',
		    pageNumber:1,
		    pageSize:5,
		    pageList:[5, 10, 50, 100],
			url:'${jpath}/show_shop_info',
			columns:[{
					title:'商品名',
					field:'shop_name'
				},{
					title:'ISBN编码',
					field:'shop_isbn'
				},{
					title:'生产日期',
					field:'shop_produced_time'
				},{
					title:'保质期',
					field:'shop_guarantee_time'
				},{
					title:'销售单价',
					field:'shop_price'
				},{
					title:'存放仓库',
					field:'shop_int_cangku'
				},{
					title:'库存',
					field:'shop_size'
				},{
					title:'操作',
					field:'shop_id',
					formatter:function(value, row, index){
						var bt='<button class="btn" data-toggle="modal" data-target="#upinfo" style="background-color:#2181ff;color:#FFF;margin-left:5px;">编辑</button>'
							bt+='<button class="btn" data-toggle="modal" data-target="#sales_shop" style="margin-left:5px;" onclick="sale(\''+row.shop_int_cangku+'\')">出售</button>'
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
                      //获得值
                        var shop_id=row.shop_id;
                        var shop_name=row.shop_name;
			    	    var shop_isbn=row.shop_isbn;
			    	    var shop_produced_time=row.shop_produced_time;
			    	    var shop_guarantee_time=row.shop_guarantee_time;
			    	    var shop_price=row.shop_price;
			    	    var shop_int_cangku=row.shop_int_cangku;
			    	    var shop_size=row.shop_size;
			    	    //赋值
			    	    $("[name=shop_id]").val(shop_id);
			    	    $("[name=shop_name]").val(shop_name);
			    	    $("[name=shop_sales_shop]").val(shop_name);
			    	    $("[name=shop_isbn]").val(shop_isbn);
			    	    $("[name=shop_produced_time]").val(shop_produced_time);
			    	    $("[name=shop_guarantee_time]").val(shop_guarantee_time);
			    	    $("[name=shop_price]").val(shop_price);
			    	    $("[name=shop_sales_shop_danjia]").val(shop_price);
			    	    $("[name=shop_int_cangku]").val(shop_int_cangku);
			    	    $("[name=now_shop_rongliang]").val(shop_size);
			    	    $("[name=shop_sales_cangku]").val(shop_int_cangku);
			    	    
			    	   }
			
		});
	        //修改商品信息
			$(".upbtn").click(function() {
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
				$.post("${jpath}/up_shop_info", jsonForms, function(data) {
					console.log(data);
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//清空表单
					$(".up_from")[0].reset();
					//重新刷新页面（当前操作的子页面）
				    window.location.replace("${jpath}/shop_show_info");
				});
			});

		  //日期控件
		  $( ".datepicker" ).datepicker({
			showOtherMonths: true,
			selectOtherMonths: false,
		    });   

});
	</script>

</body>
</html>
