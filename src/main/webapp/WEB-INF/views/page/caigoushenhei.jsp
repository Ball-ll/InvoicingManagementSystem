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
<link rel="stylesheet" href="static/css/wuliao.css">
<link rel="stylesheet" href="static/css/caigoushenhei.css">

<link rel="stylesheet" href="static/boostrap/css/bootstrap-table.min.css">
<!-- 事件 -->
<link rel="stylesheet" href="static/btactive/css/bootstrap.min.css">
</head>
<body>
	<div class="content">
		<!--内容-->
		<table id="table">
		
		</table>
		<div class="zheizao_pizhun"><!-- 批准提示框 -->
			  <div class="weizhi">				
					<div class="tanchu_pizhun">
						<form class="pizhunform">
							  审核批准
							<hr />
							<input name="shop_caigoushenhei_id"  type="hidden">
							<input name="shop_caigoushenhei_shenheiren"  type="hidden" value="${user.users_niceng}">
							<div class="update_div">
								<div class="form-group">
									<label class="qianming_div_label">物&nbsp;料&nbsp;名&nbsp;:</label><br/>
									<input class="form-control update_txt" placeholder="联系人"
										name="shop_caigoushenhei_shop"  disabled="disabled">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label class="qianming_div_label">说&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 明&nbsp;:</label><br/>
									<input class="form-control update_txt" 
										name="shop_int_shuoming" disabled="disabled">
								</div>
							</div>
							<div class="update_div">
							  <label class="qianming_div_label">审核人签名:</label><br/>
							  <div class="qianming"></div>
							   <input class="qianming_val" name="shop_caigoushenhei_qianming" type="hidden"/>						   
							   <input type="button" class="res_qianming" value="重签"/>
							</div>
							<br/>		
							<hr/>	
							  <input type="button"  class="yes" id="yespizhun" value="确定"/>
							  <input type="button"  class="bohui" id="bohui_btn"value="驳回 !"/>
							  <input type="button"  class="no"  value="取消"/>
						</form>
					</div>
				</div>		
		</div><!-- 批准提示框 -->
		<div class="zheizao_bohui"><!-- 驳回提示框 -->
			  <div class="weizhi">						
					<div class="tanchu_bohui">
						<form class="bohuiform">
							  驳回申请
							<hr />
							<input name="shop_caigoushenhei_id" type="hidden">
							<input name="shop_caigoushenhei_shenheiren" type="hidden">
							<input name="shop_caigoushenhei_bohui" type="hidden">
							<div class="update_div">
								<div class="form-group">
									<label class="qianming_div_label">物&nbsp;料&nbsp;名&nbsp;:</label><br/>
									<input class="form-control update_txt"
										name="shop_caigoushenhei_shop"  disabled="disabled">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label class="qianming_div_label">说&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 明&nbsp;:</label><br/>
									<input class="form-control update_txt"
										name="shop_int_shuoming" disabled="disabled">
								</div>
							</div>
							<div class="update_div">
							  <label class="qianming_div_label">驳回原因:</label><br/>
							  <textarea  class="update_txt" id="bohui"></textarea>
							</div>
							<br/>		
							  <input type="button"  class="yes" id="yesbohui" value="确定"/>
							  <input type="button"  class="no" value="取消"/>
						</form>
				</div>
			</div>		
		</div><!-- 驳回提示框 -->	
	  <div class="zheizao_delts" style="width:100%;height:100%;background-color:#eee;position:fixed;top: 0; background: rgba(0,0,0,0.2); display: none;" ><!-- 删除提示-->		
					<div class="tanchu_delts" style="width:20%; height:150px;margin:200px auto;border-radius:4px;background-color:#FFF;text-align:center;color:#000;padding-top:20px;">
					   <label style="font-size:24px;">确认删除吗！</label><br> 
					 <input type="button" value="取消" class="nodel" style="float:left;margin-top:50px;width: 20%;color:#000;border: 0;border-radius: 2px;margin-left: 20px;;height: 30px;">
					 <input type="button" value="确定" class="yesdel" style="margin-top:50px;float:right;width: 20%;background-color: #2181ff;color: #fff;border: 0;border-radius: 2px;margin-right:20px;height: 30px;">
				</div>

		</div><!-- 删除提示-->
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
	<!-- 签名插件 -->
	<script src="static/signature/js/jq-signature.min.js"></script>
	<script type="text/javascript">
		//处理
		function chuli(){
			$(".zheizao_pizhun").fadeToggle();
		}
		//关闭弹框并清空表单
		$(".no").click(function() {
			$(".zheizao_pizhun").hide();
			$(".zheizao_bohui").hide();
			//清空表单
			$(".pizhunform")[0].reset();
			$(".bohuiform")[0].reset();
		})
		//驳回弹出框
		$("#bohui_btn").click(function(){
			$(".zheizao_pizhun").hide();
			$(".zheizao_bohui").fadeToggle();
			
		})
	//删除信息
	var delid;
	function del(shop_caigoushenhei_id){
		delid=shop_caigoushenhei_id;
		$(".zheizao_delts").fadeToggle();
	}	
	//确认删除
	$(".yesdel").click(function() {
		shop_caigoushenhei_id = delid;
		$.post("${jpath}/delshenhei", {
			shop_caigoushenhei_id : shop_caigoushenhei_id
		}, function(data) {
			var json = $.parseJSON(data);
			alert("删除成功！");
			$(".delts_div").hide();
			//重新刷新页面（当前操作的子页面）
			window.location.replace("${jpath}/caigoushenhei");
		});
	});
	$(".nodel").click(function() {
		$(".zheizao_delts").hide();
	})
	
    var jpath= "${jpath}";
    //加载bootstrp表格数据
	$(function(){
		    $('#table').bootstrapTable({ 
		    method: 'POST',
		    search:true,
		    pagination:true,
		    sidePagination:'server',
		    pageNumber:1,
		    pageSize:5,
		    pageList:[5, 10, 50, 100],
			url:'${jpath}/showcaigoushenhei',
			columns:[{
				title:'物料名',
				field:'shop_caigoushenhei_shop'
			},{
				title:'商品进价',
				field:'shop_int_price'
			},{
				title:'进货数量',
				field:'shop_int_size'
			},{
				title:'预计花费',
				field:'shop_int_allprice'
			},{
				title:'预采时间',
				field:'shop_int_yutime'
			},{
				title:'说明',
				field:'shop_int_shuoming'
			},{
					title:'申请人',
					field:'shop_caigoushenhei_shenqinren'
				},{
					title:'审核状态',
					field:'shop_caigoushenhei_zhuangtai'
				},{
					title:'操作',
					field:'shop_caigoushenhei_id',
					formatter:function(value, row, index){
						if(row.shop_caigoushenhei_zhuangtai=="待审核"){
							var bt='<button class="btn" onclick="chuli()" style="background-color:#2181ff;color:#FFF;margin-left:5px;">处理</button>';
							return bt;
						}else{
							var bt='<button class="btn" onclick="del(\''+row.shop_caigoushenhei_id+'\')" style="background-color:#F00;color:#fff;margin-left:5px;">删除</button>';
							return bt;
						}
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
			    	    var shop_caigoushenhei_id=row.shop_caigoushenhei_id;
			    	    var shop_caigoushenhei_shop=row.shop_caigoushenhei_shop;
			    	    var shop_int_shuoming=row.shop_int_shuoming;
			    	    $("[name=shop_caigoushenhei_id]").val(shop_caigoushenhei_id);
			    	    $("[name=shop_caigoushenhei_shop]").val(shop_caigoushenhei_shop);
			    	    $("[name=shop_int_shuoming]").val(shop_int_shuoming);
			    	   }	
		});
});
	</script>
	<script type="text/javascript">
	    <!-- 签名 -->
		$(function(){
			//加载签名框
		     $('.qianming').jqSignature();
			 //清空签名
			 $(".res_qianming").click(function(){
			     $('.qianming').jqSignature('clearCanvas');
				 });
			 //保存签名到数据库
			 $("#yespizhun").click(function(){
			    var qianming_val=$('.qianming').jqSignature('getDataURL');
				var qianming=$(".qianming_val").val(qianming_val);
				if(qianming==''){
					alert("请输入签名!");
					return;
				 }
				var dataJson = "{";
				var dataArr = [];
				$(".pizhunform").find("input").each(function(index, _this) {
					var inputN = $(_this).attr("name");
					if (inputN != "" && inputN != null) {
						dataArr.push(inputN + ":'" + $(_this).val() + "'");
						dataJson += ",";
					}
				});
				dataJson = "{" + dataArr.join(",") + "}";
				var jsonForms = eval('(' + dataJson + ')');
				$.post("${jpath}/pizhuncaigou", jsonForms, function(data) {
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//重新刷新页面（当前操作的子页面）
					window.location.replace("${jpath}/caigoushenhei");
				});
				});
			});
		//申请驳回
		$(function(){
			$("#yesbohui").click(function(){
			   //获取并赋值驳回原因
			   var bohui=$("#bohui").val()	
			   $("[name=shop_caigoushenhei_bohui]").val(bohui);		
			    var dataJson = "{";
				var dataArr = [];
				$(".bohuiform").find("input").each(function(index, _this) {
					var inputN = $(_this).attr("name");
					if (inputN != "" && inputN != null) {
						dataArr.push(inputN + ":'" + $(_this).val() + "'");
						dataJson += ",";
					}
				});
				dataJson = "{" + dataArr.join(",") + "}";
				var jsonForms = eval('(' + dataJson + ')');
				$.post("${jpath}/pizhunbohui", jsonForms, function(data) {
					var json = $.parseJSON(data);
					alert(json.resMsg);
					//重新刷新页面（当前操作的子页面）
					window.location.replace("${jpath}/caigoushenhei");
				});
			})
		});
	</script>

</body>
</html>
