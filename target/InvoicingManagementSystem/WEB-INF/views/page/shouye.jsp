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
    <title>用户注册</title>
    <link rel="stylesheet" href="static/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="static/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="static/css/styles.css">
    <link rel="stylesheet" href="static/css/shouye.css">
</head>
<body>
<div class="page-wrapper flex-row align-items-center">
    <div class="container" style="margin-top:-200px;">   
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card find_div">
                    <div class="card-header text-center text-uppercase h4 font-weight-light">
                                                                           给力功能 搜索一下 你就知道!
                    </div>
                    <form class="card-body">
                        <div class="form-group">
                            <input placeholder="输入查找功能 如：物料" name="find_work" style="width: 80%;padding: 0.6rem;color:#000;" >
                            <input class="find_btn" type="button"style="width:15%; border: 0; background-color:#2181ff; height:44px; color:#fff;font-size:16px;" value="搜&nbsp; &nbsp;索">
                        </div>
                    </form>
                </div>
            </div>
          <div class="col-md-4" >
                <!-- 物料提示链接框 -->
                <div class="card wuliao_div" style="border-radius:2px; display: none">
                      <label class="to_label" >您要拜访的是？</label>
                                <a href="${jpath }/findwuliao" class="to_a">
                                    <i class=""></i> 物料信息
                                </a>         
                                <a href="${jpath }/wuliao-table"class="to_a" >
                                    <i class=""></i> (bootstrop-table版)
                                </a>
                       <button class="no_to">取消</button>
                </div>
                <!-- 采购提示链接框 -->
                <div class="card caigou_div" style="border-radius:2px; display: none">
                      <label class="to_label" >您要拜访的是？</label>
                                <a href="${jpath }/findwuliaoname" class="to_a">
                                    <i class=""></i> 申请采购
                                </a>         
                                <a href="${jpath }/caigoushenhei" class="to_a" >
                                    <i class=""></i> 已提交申请
                                </a>      
                                <a href="${jpath }/showgongyinandcangku" class="to_a" >
                                    <i class=""></i> 商品采购
                                </a>
                       <button class="no_to">取消</button>
                </div>
                <!-- 商品仓库提示链接框 -->
                <div class="card shop_cangku_div" style="border-radius:2px; display: none">
                      <label class="to_label" >您要拜访的是？</label>
                                <a href="${jpath }/shop_show_info" class="to_a">
                                    <i class=""></i> 商品信息
                                </a>         
                                <a href="${jpath }/findckname" class="to_a" >
                                    <i class=""></i> 仓库商品
                                </a>      
                                <a href="${jpath }/panku_info" class="to_a" >
                                    <i class=""></i> 盘库记录
                                </a>      
                                <a href="${jpath }/shop_out_info" class="to_a" >
                                    <i class=""></i> 出库记录
                                </a>      
                                <a href="${jpath }/salesinfo" class="to_a" >
                                    <i class=""></i> 销售记录
                                </a>
                       <button class="no_to">取消</button>
                </div>
                <!-- 供应商提示链接框 -->
                <div class="card gongying_div" style="border-radius:2px; display: none">
                      <label class="to_label" >您要拜访的是？</label>
                                <a href="${jpath }/findgongyin" class="to_a">
                                    <i class=""></i> 供应商信息
                                </a>         
                                <a href="${jpath }/gongyin-table"class="to_a" >
                                    <i class=""></i> (bootstrop-table版)
                                </a>
                       <button class="no_to">取消</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/popper.js/popper.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="static/vendor/chart.js/chart.min.js"></script>
<script src="static/js/carbon.js"></script>
<script src="static/js/demo.js"></script>
<script>
 $(function(){
	  //提示链接弹出款
		$(".find_btn").click(function() {
			var find_work=$("[name=find_work]").val();
			if(find_work==''){
				alert("我们不知道你需要找什么呢！")
			}else if(find_work=='物料' || find_work=='物料信息' || find_work=='录入物料'){
				 $(".wuliao_div").fadeToggle();
				 $(".find_div").hide();
				 $("[name=find_work]").val('');
			}else if(find_work=='采购' || find_work=='申请采购' || find_work=='采购信息'){
				 $(".caigou_div").fadeToggle();
				 $(".find_div").hide();
				 $("[name=find_work]").val('');
			}else if(find_work=='仓库'  || find_work=='添加仓库'|| find_work=='商品' || find_work=='删除商品'|| find_work=='盘库' || find_work=='销售' || find_work=='出库'){
				 $(".shop_cangku_div").fadeToggle();
				 $(".find_div").hide();
				 $("[name=find_work]").val('');
			}else if(find_work=='供应商' || find_work=='供应商信息' || find_work=='添加供应商' || find_work=='删除供应商' || find_work=='出库'){
				 $(".gongying_div").fadeToggle();
				 $(".find_div").hide();
				 $("[name=find_work]").val('');
			}else{
				alert("尽情期待！");
				 $("[name=find_work]").val('');
			}
		});
	  //取消访问
	  $(".no_to").click(function(){
		  $(".wuliao_div").hide();
			 $(".caigou_div").hide();
			 $(".shop_cangku_div").hide();
			 $(".gongying_div").hide();
		  $(".find_div").fadeToggle();
	  })
	 
 })
</script>
</body>
</html>
