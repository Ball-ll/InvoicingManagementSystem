<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Carbon - Admin Template</title>
<link rel="stylesheet" href="static/vendor/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet" href="static/vendor/font-awesome/css/fontawesome-all.min.css">
<link rel="stylesheet" href="static/css/styles.css">
</head>
<body style="background-color:#fff">
                <fieldset >
                <form action="#">
                  <br/>
                  <!--省份选择-->
                  <select id="prov" onchange="showCity(this)">
                    <option>=请选择省份=</option>
                  </select>
                  
                  <!--城市选择-->
                  <select id="city" onchange="showCountry(this)">
                    <option>=请选择城市=</option>
                  </select>
                  
                  <!--县区选择-->
                  <select id="country" onchange="selecCountry(this)">
                    <option>=请选择县区=</option>
                  </select>
                  <label for="addr-show">&nbsp;&nbsp;&nbsp;
                    <input type="hidden" id="addr-show" name="addrShow">
                    <input id="jiedao" class="form-control" placeholder="详细地址">                 
                    <input type="hidden" id="shop_gongyin_address"  class="form-control"/>
                  </label>
                  <input type="button" value="地址确定" class="btn met1" onClick="showAddr()" id="button-show" >
                </form>
                </fieldset>
<script src="static/js/city.js"></script>
<script src="static/js/method.js"></script>
</body>
</html>

