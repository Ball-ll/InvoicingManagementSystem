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

<link rel="stylesheet"
	href="static/vendor/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet"
	href="static/vendor/font-awesome/css/fontawesome-all.min.css">
<link rel="stylesheet" href="static/css/styles.css">
<!--日期插件 -->
<link rel="stylesheet" href="static/assets/css/jquery-ui-1.10.3.full.min.css">
<link rel="stylesheet" href="static/assets/css/ace.min.css">
<link rel="stylesheet" href="static/assets/css/ace-rtl.min.css">
<!-- 当前页面css -->
<link rel="stylesheet" href="static/css/caigoushenhei.css">
</head>
<body>
	<div class="content"><!--内容-->
		<div class="container-fluid">
        <div class="row">
          <div class="col-md-6" style="margin:0 auto">
            <div class="card">
              <div class="card-header bg-light"> 商品预采: </div>
              <div class="card-body">
                <div class="aa">
                  <div class="form-group">
                    <label class="form-control-label">物料选择:</label>
                    <select class="form-control">
                       <c:forEach items="${wuliaos }" var="wuliaos">
                       <option  onclick="tianjia('${wuliaos.shop_wuliao_id }')">物料：${wuliaos.shop_wuliao_name }</option>
                       </c:forEach>
                       <option >+添加物料+</option>
                    </select>
                  </div>
                  <div class="intcg-div"><!--物料卡-->
                  
                                  
                   
                  </div><!--物料卡-->
              </div>  
            </div>
                      <div class="yesbtn">
                        <input class="yesadd" value="提交" type="button">
                      </div>
 
          </div>
        </div>
      </div>
    </div>
	</div><!--内容-->
	<script src="static/vendor/jquery/jquery.min.js"></script>
	<script src="static/vendor/popper.js/popper.min.js"></script>
	<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="static/vendor/chart.js/chart.min.js"></script>
	<script src="static/js/carbon.js"></script>
	<script src="static/js/demo.js"></script>
	<!-- 日期插件 -->
	<script src="static/assets/js/jquery-ui-1.10.3.full.min.js"></script>
	<script>
function tianjia(shop_wuliao_id){
  			$.post("${jpath}/findwuliaobyId", {shop_wuliao_id:shop_wuliao_id}, function(data) {
  				var json=$.parseJSON(data);
  				var result=json.obj[0];
 	    	    var addtr='';	       
 	    	        addtr+='<form class="shenhei_form">';
 		        	addtr+='<div class="intcg-div-wuliao">';
 		        	addtr+='<div class="intcg-div-wuliao-div">'+result.shop_wuliao_name+'</div>';
 		        	addtr+='<div class="intcg-div-wuliao-div">'+result.shop_wuliao_type+'</div>';
 		        	addtr+='<div class="intcg-div-wuliao-div">'+result.shop_wuliao_guige+'</div>';
 		        	addtr+='<div class="intcg-div-wuliao-div">'+result.shop_wuliao_leixing+'</div>';
 		        	addtr+='<div class="intcg-div-wuliao-div del_this_div">取消</div>';
 		        	addtr+='</div>';
 		        	addtr+='<div class="wuliao-size">';
 		        	addtr+='<div class="wuliao-size-div"><label class="form-control-label">单价:<input type="hidden" name="shop_caigoushenhei_shop" value="'+result.shop_wuliao_name+'"></label><input class="form-control" placeholder="单价" name="shop_int_price"></div>';
 		        	addtr+='<div class="wuliao-size-div"><label class="form-control-label">预计数量 :</label><input class="form-control" placeholder="预计数量" name="shop_int_size"></div>';
 		        	addtr+='<div class="wuliao-size-div"><label class="form-control-label">预计花费:</label><input class="form-control" readonly="readonly" placeholder="预计花费" name="shop_int_allprice"></div>';
 		        	addtr+='<div class="wuliao-size-div"><label class="form-control-label">预采时间:</label><div class="form-control"><input name="shop_int_yutime" class="datepicker"/><span class="input-group-addon"></span></div></div>';
 		        	addtr+='</div>';
 		        	addtr+='<div class="wuliao-size">';
 		        	addtr+='<div style="width:100%"><label class="form-control-label">申请说明:</label><input class="form-control" placeholder="申请说明" name="shop_int_shuoming"></div>';
 		        	addtr+='</div>';
 	    	        addtr+=' </form>';	      
	 		        $(".intcg-div").append(addtr);
 	 				$(".del_this_div").click(function(){
	 					$(this).parents(".shenhei_form").slideUp(".shenhei_form");
	 					})  	
	 				//获取单价和购买数量并自动合并总价
	 				$(".wuliao-size-div").click(function(){
	 					//获取单价
	 			     	var shop_int_price=$(this).prevAll().find("[name=shop_int_price]").val();
	 			        //获取购买数量
 		 				var shop_int_size=parseInt($(this).prevAll().find("[name=shop_int_size]").val());
 		 			    //得到总价
 		 				$(this).find("[name=shop_int_allprice]").val(shop_int_price*shop_int_size); 
	 				})
	 				//日期控件
	 				$( ".datepicker" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
				    });
	 		        
 			})				
};
    //提交申请
    $(".yesadd").click(function(){	
    	var shenhei_form=$(".shenhei_form").length;
    	for(var i=0;i<shenhei_form;i++){
     		var dataJson = "{";
    		var dataArr = [];
    		$(".shenhei_form").find("input").each(function(index, _this) {//
    			var inputN = $(_this).attr("name");
    			if (inputN != "" && inputN != null) {
    				dataArr.push(inputN + ":'" + $(_this).val() + "'");
    				dataJson += ",";
    			}
    		});
    		dataJson = "{" + dataArr.join(",") + "}";
    		var jsonForms = eval('(' + dataJson + ')');
    		$.post("${jpath}/subcaigoushenhei", jsonForms, function(data) {
    			console.log(data);
    			var json = $.parseJSON(data);
    			alert(json.resMsg);
    			//清空表单
    			$(".shenhei_form")[0].reset();
    			//重新刷新页面（当前操作的子页面）
    			window.location.replace("${jpath}/findwuliaoname");
    		}); 
    	}

		
    })
	</script>
 			
</body>
</html>
