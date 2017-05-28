<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<%@ page import="com.wtu.product.Constant" %>
<!DOCTYPE HTML>
<html>
<head>
<title>UserManage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/style.css" rel='stylesheet' type='text/css' />
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/lines.css" rel='stylesheet' type='text/css' />
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/fonts/lib/font-awesome.css" rel="stylesheet"> 
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/custom.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">农产品交易系统</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/${USER.avatar}"></a>
	        		<ul class="dropdown-menu">
						<li class="m_2"><a href="#"><i class="fa fa-user"></i> 个人信息</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-wrench"></i> 修改密码</a></li>
						<li class="m_2"><a href="<%=PathUtil.getFullPath("user/logout")%>"><i class="fa fa-usd"></i> 退出登录 </a></li>
	        		</ul>
	      		</li>
			</ul>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<%=PathUtil.getFullPath("admin/init-data")%>"><i class="glyphicon glyphicon-adjust"></i>系统信息</a>
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-user"></i>用户管理<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("user/all-users/"+1)%>">管理用户</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-book"></i>商品管理<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("news/news-manage")%>">管理商品</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-film"></i>订单管理<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("video/video-manage")%>">管理订单</a>
                                </li>
                            </ul>
                        </li>
                         <li>
                            <a href="#"><i class="glyphicon glyphicon-modal-window"></i>系统设置<span class="glyphicon glyphicon-menu-right arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=PathUtil.getFullPath("system/type-setting")%>">公告设置</a>
                                </li>
                                <li>
                                    <a href="<%=PathUtil.getFullPath("system/type-setting")%>">暂未开放...</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
	    <div id="page-wrapper">
	        <div class="graphs">
		        <div class="row" style="margin-top: -20px; margin-left: -25px;margin-right: -25px;">
		            <div class="col-md-12">
		                <ul class="breadcrumb" style="background-color: #FFFFFF">
		                    <li>当前位置： 用户管理/用户信息</li>
		                </ul>
		            </div>
		        </div>
			<div class="row">
               <form class="form-horizontal" action="<%=PathUtil.getFullPath("user/updateInfo")%>" method="POST">
               	  <div class="form-group">
                       <label class="col-md-2 control-label">用户编号:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="user_id" name="user_id" type="text" class="form-control1" disabled value="${user.userId}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">用户名:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="user_name" name="user_name" type="text" class="form-control1" value="${user.userName}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">用户类型:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="role" name="role" type="text" class="form-control1" value="${user.role}" readonly="readonly">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">联系方式:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="phone" name="phone" type="text" class="form-control1" value="${user.phone}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">性别:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="sex" name="sex" type="text" class="form-control1" value="${user.sex}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">注册时间:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input  type="text" class="form-control1" disabled value="${user.createTime}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">上次更新时间:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input  type="text" class="form-control1" disabled value="${user.updateTime==null?'暂无更新记录':user.updateTime}">
                           </div>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col-sm-8 col-sm-offset-2">
                           <button class="btn-success btn" type="submit">更新信息</button>
                           <button class="btn-default btn">取消</button>
                       </div>
                   </div>
               </form>
       </div>
       </div>
       </div>
</body>
</html>