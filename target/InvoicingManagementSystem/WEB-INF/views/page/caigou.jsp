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
<link rel="stylesheet" href="static/css/shopcaigou.css">


<link rel="stylesheet" href="static/boostrap/css/bootstrap-table.min.css">
<!-- 事件 -->
<link rel="stylesheet" href="static/btactive/css/bootstrap.min.css">

<!--日期插件 -->
<link rel="stylesheet" href="static/date/css/date.css"/>
</head>
<body>
	<div class="content">
		<!--内容-->
		<table id="table">
		</table>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><!--商品采购（jq模态框） -->
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">
								商品采购
							</h4>
						</div>
						<form class="caigou_from" style="width: 90%; margin: 0  auto;">
						<input name="shop_gongyin_name" type="hidden">
						<input name="shop_int_cangku" type="hidden">
						<input name="shop_caigoushenhei_id" type="hidden">
							<input value="" class="form-control update_txt" id="nowgongyinid"
								name="shop_gongyin_id" type="hidden">
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">采购物品:</label> <input
										class="form-control update_txt" placeholder="采购物品"
										 name="shop_name"  readonly="readonly">
								</div>
							</div>
							<br />
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">供&nbsp;应&nbsp;商&nbsp;:</label>
							    <select class="form-control">
			                       <c:forEach items="${gongyins }" var="gongyins">
			                        <option class="thisgy">${gongyins.shop_gongyin_name }</option>
			                       </c:forEach>
			                       <option data-toggle="modal" data-target="#addgongying">==新加供应商==</option>
			                    </select>
								</div>
							</div>
							<br />
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">进价:</label> <input
										class="form-control update_txt" placeholder="进价"
										 name="shop_int_price" readonly="readonly">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">实际进价:</label> <input
										class="form-control update_txt" placeholder="实际进价"
										 name="shop_int_shijiprice">
								</div>
							</div>					
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">预计数量:</label> <input
										class="form-control update_txt" placeholder="预计数量"
										 name="shop_int_size" readonly="readonly">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">实际数量:</label> <input
										class="form-control update_txt" placeholder="实际数量"
										 name="shop_int_shijisize">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">商品总价:</label> <input
										class="form-control update_txt" placeholder="商品总价"
										 name="shop_int_allprice"  readonly="readonly">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">采购时间:</label>
									<input class="form-control update_txt date_picker"  type="text" name="shop_int_time">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">采购人:</label> <input
										class="form-control update_txt" value="${user.users_niceng}"
										 name="shop_int_user"readonly="readonly">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">存放厂库:</label>	
									 剩余容量:<input for="read-only"  name="shop_cangku_now_rongliang" disabled="disabled"; style="background-color: #fff;border: 0;"/>	
									 <input name="shop_cangku_now_rongliang" type="hidden">	
									 <input name="shop_cangku_name" type="hidden">		
									    <select class="form-control">
					                       <c:forEach items="${cangkus }" var="cangkus">
					                        <option class="thisck">${cangkus.shop_cangku_name }</option>
					                       </c:forEach>
					                    </select>
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">支付方式:</label> <input
										class="form-control update_txt" placeholder="支付方式"
										 name="shop_int_pay">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">对方收款人:</label> <input
										class="form-control update_txt" placeholder="对方收款人"
										 name="shop_int_payforuser">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">差价:</label> <input
										class="form-control update_txt" placeholder="差价"
										id="shop_int_chajia" name="shop_int_chajia">
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">差价状态:</label> <input
										class="form-control update_txt" placeholder="状态"
										 name="shop_int_chajiastate ">
								</div>
							</div>
							<br />
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" 
									data-dismiss="modal">关闭
							</button>
							<button type="button" class="btn btn-primary" onclick="addcaigoubtn()">
								提交采购
							</button>
						</div>
					</div>
				</div>
			</div><!--商品采购 -->
			<div class="modal fade" id="shenheiInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><!--审核详情（jq模态框） -->
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">
								审核详情 
							</h4>
						</div>
						<form class="update_from">
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">采购物品:</label><input
										class="form-control update_txt"  style="border: 0; background-color: #eee;"
									    name="shop_name" readonly="readonly">
								</div>
							</div>
							<br />	
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">审核人:</label> <input
										class="form-control update_txt"style="border: 0; background-color: #eee;"
										name="shop_caigoushenhei_shenheiren" readonly="readonly"/>
								</div>
							</div>
							<div class="update_div qianming_div">
								<div class="form-group">
									<label for="read-only" class="">签名:</label> 
									<div style="border: 0;">
									   <img src="${jpath }" id="qianmingt" width="100%";  height="100%";/>
									</div>
								</div>
							</div>
							<div class="update_div bohui_div">
								<div class="form-group">
									<label for="read-only" class="">驳回原因:</label>
							       <textarea class="update_txt" name="shop_caigoushenhei_bohui" readonly="readonly"></textarea>
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">审核时间:</label> <input
										class="form-control update_txt" style="border: 0; background-color: #eee;"
										name="shop_caigoushenhei_time" readonly="readonly"/>
								</div>
							</div>
							<div class="update_div">
								<div class="form-group">
									<label for="read-only" class="">状态:</label> <input
										class="form-control update_txt"style="border: 0; background-color: #eee;"
										name="shop_caigoushenhei_zhuangtai" readonly="readonly"/>
								</div>
							</div>
							<br />
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" 
									data-dismiss="modal">关闭
							</button>
						</div>
					</div>
				</div>
			</div><!--审核详情 -->
			
					<!-- 新加供应商 -->
					<div class="modal fade" id="addgongying" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content" style="width:700px; margin:0 auto;">
							<form id="upform" style="width: 90%; margin: 20px auto;">
								新加供应商信息：
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
											id="shop_gongyin_address">
									</div>
								</div>
								<br />
							</form>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">取消</button>
								<button type="button" class="btn btn-primary addgongying">确定</button>
							</div>
						</div>
					</div>
				</div><!-- 新加供应商 -->
		<!--内容-->
	</div>
	<script src="static/vendor/jquery/jquery.min.js"></script>
	<!-- 日期插件 -->
	<script src="static/date/js/jquery.date_input.pack.js"></script>
	<script src="static/vendor/popper.js/popper.min.js"></script>
	<script src="static/vendor/chart.js/chart.min.js"></script>
	<script src="static/js/carbon.js"></script>
	<script src="static/js/demo.js"></script>
	
	<script src="static/boostrap/js/bootstrap-table.min.js"></script>
	<script src="static/boostrap/js/bootstrap-table-zh-CN.min.js"></script>
	<!-- 事件 -->
	<script src="static/btactive/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	//默认隐藏签名和驳回原因
	$(".bohui_div").hide();
	$(".qianming_div").hide();
	function addcaigoubtn(){	  		
		        //判断仓库容量是否足够(并转换数据类型)
			    var shop_int_shijisize=parseInt($("[name=shop_int_shijisize]").val());
				var shop_cangku_now_rongliang=parseInt($("[name=shop_cangku_now_rongliang]").val());
				if(shop_cangku_now_rongliang<shop_int_shijisize){
					alert("当前仓库容量不够 请更换仓库  或 减少入库数量!");
					return false;
				}else if(shop_cangku_now_rongliang>shop_int_shijisize){
					//条件成立时 减少原仓库容量
					$("[name=shop_cangku_now_rongliang]").val(shop_cangku_now_rongliang-shop_int_shijisize);	
					var dataJson = "{";
					var dataArr = [];
					$(".caigou_from").find("input").each(function(index, _this) {
						var inputN = $(_this).attr("name");
						if (inputN != "" && inputN != null) {
							dataArr.push(inputN + ":'" + $(_this).val() + "'");
							dataJson += ",";
						}
					});
					dataJson = "{" + dataArr.join(",") + "}";
					var jsonForms = eval('(' + dataJson + ')');
					$.post("${jpath}/shop_caigou", jsonForms, function(data) {
						console.log(data);
						var json = $.parseJSON(data);
						alert(json.resMsg);
						//清空表单
						$(".caigou_from")[0].reset();
						window.location.replace("${jpath}/showgongyinandcangku");
					});  
				}

	}
	//什么jq${jpath}
    var jpath= "${jpath}";
    //重新申请
    function reshenqin(){
    	location.href="${jpath}/findwuliaoname"
    };
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
			url:'${jpath}/showcaigoushenheizt',
			columns:[{
				title:'id',
				field:'shop_caigoushenhei_id',
				visible:false
			},{
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
				title:'采购状态',
				field:'shop_caigou_zhuangtai'
			},{
				title:'预采时间',
				field:'shop_int_yutime',
				visible:false
			},{
				title:'说明',
				field:'shop_int_shuoming',
				visible:false
			},{
					title:'申请人',
					field:'shop_caigoushenhei_shenqinren',
					visible:false
				},{
					title:'签名',
					field:'shop_caigoushenhei_qianming_lujing',
					visible:false
				},{
					title:'采购审核人',
					field:'shop_caigoushenhei_shenheiren',
					visible:false
				},{
					title:'审核时间',
					field:'zhuanyishop_caigoushenhei_time',
					visible:false
				},{
					title:'审核状态',
					field:'shop_caigoushenhei_zhuangtai',
					visible:false
				},{
					title:'驳回原因',
					field:'shop_caigoushenhei_bohui',
					visible:false
				},{
					title:'操作',
					field:'shop_wuliao_id',
					formatter:function(value, row, index){
						if(row.shop_caigoushenhei_zhuangtai=="已批准" && row.shop_caigou_zhuangtai=="未采购"){
							 var bt='<button class="btn" data-toggle="modal" data-target="#shenheiInfo" onclick="xiangqing()">审核详情</button>';
						         bt+='<button class="btn" data-toggle="modal" data-target="#myModal"style="background-color:#2181ff;color:#FFF;margin-left:5px;" >采购进行</button>';
						         return bt;
						}else{
							 var bt='<button class="btn" data-toggle="modal" data-target="#shenheiInfo" onclick="xiangqing()">审核详情</button>';
							     bt+='<button class="btn" data-toggle="modal" onclick="reshenqin()" style="background-color:#2181ff;color:#FFF;margin-left:5px;" >重新申请</button>';
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
                        //获得值
                        var shop_caigoushenhei_id=row.shop_caigoushenhei_id;
			    	    var shop_caigoushenhei_shop=row.shop_caigoushenhei_shop;
			    	    var shop_int_price=row.shop_int_price;
			    	    var shop_int_size=row.shop_int_size;
			    	    var shop_caigoushenhei_shenqinren=row.shop_caigoushenhei_shenqinren;
			    	    var shop_caigoushenhei_time=row.zhuanyishop_caigoushenhei_time;
			    	    var shop_caigoushenhei_zhuangtai=row.shop_caigoushenhei_zhuangtai;
			    	    var shop_caigoushenhei_bohui=row.shop_caigoushenhei_bohui;
			    	    var qianmingt=row.shop_caigoushenhei_qianming;
			    	    //赋值
			    	    $("[name=shop_caigoushenhei_id]").val(shop_caigoushenhei_id);
			    	    $("[name=shop_name]").val(shop_caigoushenhei_shop);
			    	    $("[name=shop_int_price]").val(shop_int_price);
			    	    $("[name=shop_int_size]").val(shop_int_size);
			    	    $("#qianmingt").attr('src',qianmingt);;
			    	    $("[name=shop_caigoushenhei_shenqinren]").val(shop_caigoushenhei_shenqinren);
			    	    $("[name=shop_caigoushenhei_time]").val(shop_caigoushenhei_time);
			    	    $("[name=shop_caigoushenhei_zhuangtai]").val(shop_caigoushenhei_zhuangtai);
			    	    $("[name=shop_caigoushenhei_bohui]").val(shop_caigoushenhei_bohui);
			    	    //判断时候被驳回弹窗显示
			    		if(shop_caigoushenhei_bohui !=null){
			    			$(".bohui_div").show();	
			    			$(".qianming_div").hide();	
			    		}else{
			    			$(".qianming_div").show();
			    			$(".bohui_div").hide();
			    		}
			    	   }	
		});
		   
			//获取单价和购买数量并自动合并总价
			$(".update_div").click(function(){
				//获取单价
		     	var shop_int_shijiprice=$(this).prevAll().find("[name=shop_int_shijiprice]").val();
		        //获取购买数量
				var shop_int_shijisize=$(this).prevAll().find("[name=shop_int_shijisize]").val();
			    //得到总价
				$(this).find("[name=shop_int_allprice]").val(shop_int_shijiprice*shop_int_shijisize); 
			});
			//供应商以及仓库值
			$(".thisgy").click(function(){  
			  $("[name=shop_gongyin_name]").val($(this).val());
			});
			//根据厂库名查询(当前仓库剩余容量)
			var shop_cangku_name;
			$(".thisck").click(function(){ 
				//赋值选择的仓库
				$("[name=shop_int_cangku]").val($(this).val()); 
				$("[name=shop_cangku_name]").val($(this).val()); 
				shop_cangku_name=$(this).val();
	  			$.post("${jpath}/findsize", {shop_cangku_name:shop_cangku_name}, function(data) {
	  				var json=$.parseJSON(data);
	  				var result=json.obj[0];
	  				var rongliang=(result.shop_cangku_now_rongliang);
	  				//将仓库容量赋值给相应的input框
	  				$("[name=shop_cangku_now_rongliang]").val(rongliang);		
	 			})	
			});
			//供应商录入
			$(".addgongying").click(function() {
				//获取三级联动页面中的地址（值）
				var dizhi = localStorage.getItem("dizhi");
				$("#shop_gongyin_address").val(dizhi);
				var dataJson = "{";
				var dataArr = [];
				$(".update_div").find("input").each(function(index, _this) {
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
					window.location.replace("${jpath}/showgongyinandcangku");
					//清空表单
					$(".update_div")[0].reset();
				});
			});
});
	</script>
	<script type="text/javascript">
</script>

</body>
</html>
