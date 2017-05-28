<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<%@ page import="com.wtu.product.model.User"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>惠农</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/google-maps.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div style="background: #DDD;">
        <div class="container">
            <div class="row" style="margin-top:10px;">
                <div class="col-md-1">
                    <span>所在地:</span>
                </div>
                <div class="col-md-1" style="margin-left:-40px;">
                   <select>
                       <option>湖北</option>
                       <option>河南</option>
                   </select>
                </div>
                
                    <% if(request.getSession().getAttribute("USER") == null){ %>
	                    <div class="col-md-3" style="margin-left:-23px;">
		                    <span style="color:#F47A11">你好，欢迎来到惠农农产品交易平台</span>
		                </div>
		                <div class="col-md-1" style="margin-left:-55px;">
			                <span><a href="<%=PathUtil.getFullPath("home/login")%>" style="color:#000">请登陆</a></span>
			            </div>
			            <div class="col-md-1" style="margin-left:-41px;">
		                    <span><a href="<%=PathUtil.getFullPath("user/register")%>" style="color:#000">注册</a></span>
		                </div>
		            <% } else { %>
		                <div class="col-md-2" style="margin-left:-23px;">
		                    <a href="#"><span style="color:#F47A11">你好，${USER.phone}</span></a>
		                </div>
		                <div class="col-md-1" style="margin-left:-41px;">
		                    <span><a href="<%=PathUtil.getFullPath("user/logout")%>" style="color:#000">退出系统</a></span>
		                </div>
		      		<%}%>
		      		<input type="hidden" value="${USER==null?0:USER.role}" id="role"/>
                <div class="col-md-2 pull-right">
                    <ul class="list-inline">
                        <li style="margin-left:26px;"><a class="link" href="<%=PathUtil.getFullPath("user/my-order")%> ">我的订单</a></li>
                        <li style="margin-left:5px;">联系我们</li>
                        <li style="margin-left:-310px;"><a class="link" href="<%=PathUtil.getFullPath("home/init-data")%> ">首页</a></li>
                    	<li style="margin-left:-8px;" ><a class="link" href="<%=PathUtil.getFullPath("user/userinfo")%>" >我的信息</a></li>
                    	<li style="margin-left:-38px;">
	                    	<c:if test="${USER.role == 2}">
	                        	<a class="link" href="<%=PathUtil.getFullPath("goods/mygoods/"+1)%>">我的商品</a>
	                    	</c:if>
                    	</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="<%=PathUtil.getFullPath("home/init-data")%>"><img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/logo.jpg"></img></a>
            </div>
            <div class="col-md-2 pull-right" style="margin-right:-33px;margin-top:58px;">
                <a class="btn btn-success" href="<%=PathUtil.getFullPath("goods/cart")%>">
                    <i class="glyphicon glyphicon-shopping-cart icon-white">我的购物车</i>
                </a>
            </div>
            <div class="col-md-4 pull-right" style="margin-right:-23px;margin-top:29px;">
                <div class="col-md-12">
                    <ul class="list-inline">
                        <li>供应</li>
                        <li>供应商</li>
                        <li>采购</li>
                        <li>资讯</li>
                    </ul>
                </div>
                <div class="col-md-12">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="输入货品名称" aria-describedby="basic-addon2">
                        <span class="input-group-addon" id="basic-addon2" style="background:#5CB85C;color:#FFF;cursor:pointer">搜索</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div style="background: #009237;">
        <div class="container">
            <ul class="nav nav-pills">
                <li class="active" style="width:194px;text-align:center;background-color: #0da944;"><a href="#" style="color:#FFF">惠农市场</a></li>
                <li><a href="#" style="color:#FFF;width:110px;text-align:center;" id="publish">发布商品</a></li>
                <li><a href="#" style="color:#FFF;width:110px;text-align:center;">采购大厅</a></li>
            </ul>
        </div>
    </div>
</body>
</html>