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
		                    <li>当前位置： 商品管理/管理商品</li>
		                    <li style="float:right"><span class="span">商品总数：${fn:length(allGoods)}</span></li>
		                </ul>
		            </div>
		        </div>
		        <div class="row">
		           <table class="table" style="margin-top: -24px;">
		           	  
				      <thead>
				        <tr>
				          <th>商品编号</th>
				          <th>商品名称</th>
				          <th>商品图片</th>
				          <th>上架时间</th>
				          <th>商家编号</th>
				          <th>下架商品</th>
				        </tr>
				      </thead>
				      <tbody>
				        <c:forEach items="${allGoods}" var="n">
			                    <tr class="active">
						          <th scope="row">${n.goodsId }</th>
						          <td><a href="<%=PathUtil.getFullPath("user/user-information")%>?id=${n.goodsId }">${n.goodsName}</a></td>
						          <td>${n.createTime}</td>
						          <td>${n.userId}</td>
						          <td><a href="<%=PathUtil.getFullPath("good/delete-goods")%>/${n.goodsId }"><i class="glyphicon glyphicon-remove" style="margin-left: 20px;"></i></a></td>
						        </tr>
			            </c:forEach>
				        
				      </tbody>
				    </table>
			    </div>
			    <div class="row" style="margin-top: -24px;">
			        <div class="col-md-4"></div>
			        <div class="col-md-4">
				        <ul class="pagination pagination-lg">
							<li class="disabled"><a href="<%=PathUtil.getFullPath("user/all-users")%>/${pagination.currentPage>1?pagination.currentPage-1:1}"><i class="fa glyphicon glyphicon-menu-left"></i></a></li>
							<c:forEach var="i" begin="1" end="${pagination.pageCount}">
							    <c:if test="${i == pagination.currentPage}">
							      <li class="active"><a href="<%=PathUtil.getFullPath("user/all-users")%>/${i }">${i }</a></li>
							    </c:if>
							    <c:if test="${i != pagination.currentPage}">
							      <li><a href="<%=PathUtil.getFullPath("user/all-users")%>/${i }">${i }</a></li>
							    </c:if>
							</c:forEach>
							<li><a href="<%=PathUtil.getFullPath("user/all-users")%>/${pagination.currentPage<pagination.pageCount?pagination.currentPage+1:pagination.pageCount}"><i class="fa glyphicon glyphicon-menu-right"></i></a></li>
					   </ul>
			        </div>
			        <div class="col-md-4"></div>
			    </div>
		    </div>
       </div>
    </div>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/metisMenu.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/custom.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/d3.v3.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/rickshaw.js"></script>
</body>
</html>
