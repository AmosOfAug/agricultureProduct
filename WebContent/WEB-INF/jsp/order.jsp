<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>惠农网</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/main.css" rel="stylesheet">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="row" style="margin-top:20px;">
        <div class="col-md-5">
            <div class="col-md-6">
                <a href="<%=PathUtil.getFullPath("home/init-data")%>"><img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/logo1.jpg"></img></a>
            </div>
            <div class="col-md-6" style="margin-top:-5px;margin-left:-14px;">
                <h4 style="margin-bottom:0px;">提交订单</h4>
                <small style="margin-top:-10px;">客服热线:5558563</small>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-2">
            <div class="col-md-4">
                <img style="margin-top:8px;" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/top_ico_01.jpg"></img>
            </div>
            <div class="col-md-5">
                <h5 style="margin-bottom:0px;">海量</h5>
                <h5 style="margin-bottom:0px;">供应</h5>
            </div>
            <div class="col-md-1" style="margin-left:10px;;margin-top:8px;;height:41px; width:1px; border-left:1px #999 solid"></div>
        </div>
        <div class="col-md-2" style="margin-left:-62px;">
            <div class="col-md-4">
                <img style="margin-top:8px;" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/top_ico_02.jpg"></img>
            </div>
            <div class="col-md-5">
                <h5 style="margin-bottom:0px;">实时</h5>
                <h5 style="margin-bottom:0px;">更新</h5>
            </div>
            <div class="col-md-1" style="margin-left:10px;;margin-top:8px;height:41px; width:1px; border-left:1px #999 solid"></div>
        </div>
        <div class="col-md-2" style="margin-left:-62px;">
            <div class="col-md-4">
                <img style="margin-top:8px;" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/top_ico_03.jpg"></img>
            </div>
            <div class="col-md-5">
                <h5 style="margin-bottom:0px;">源头</h5>
                <h5 style="margin-bottom:0px;">好货</h5>
            </div>
        </div>
    </div>
    <div class="row">
        <hr>
    </div>
</div>
<div class="container">
   <div style="margin-left: 320px;margin-top: 85px;">
       <form action="<%=PathUtil.getFullPath("user/register")%>" method="post">
           <div class="row">
	           <div class="input-group">
		            <span class="input-group-addon" style="width: 110px;height: 50px;font-size: 18px">收获地址</span>
		            <input class="form-control" type="text" placeholder="请输入收货地址" maxlength="11" style="width: 326px;height: 50px;font-size: 18px" name="phone">
		        </div>
	        </div>
	        <div class="row" style="margin-top: 10px;">
		        <div class="input-group">
		            <span class="input-group-addon" style="width: 110px;height: 50px;font-size: 18px">登陆密码</span>
		            <input class="form-control" type="password" placeholder="" maxlength="11" style="width: 326px;height: 50px;font-size: 18px" name="password">
		        </div>
	        </div>
	        <div class="row" style="margin-top: 10px;">
		        <div class="input-group">
		            <span class="input-group-addon" style="width: 110px;height: 50px;font-size: 18px">确认密码</span>
		            <input class="form-control" type="password" placeholder="请重新输入登录密码" maxlength="11" style="width: 326px;height: 50px;font-size: 18px">
		        </div>
	        </div>
	        <div class="row" style="margin-top: 10px;">
		        <div class="input-group">
		            <span class="input-group-addon" style="width: 110px;height: 50px;font-size: 18px">您的姓名</span>
		            <input class="form-control" type="text" placeholder="请输入您的姓名" maxlength="11" style="width: 326px;height: 50px;font-size: 18px" name="user_name">
		        </div>
	        </div>
	        <div class="row" style="margin-top: 10px;">
	            <button class="btn" type="submit" style="width: 436px;height: 50px;background-color: #ff500b">免费注册</button>
	        </div>
       </form>
     </div>
  </div>
</body>
</html>