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
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="container">
    <div class="row" style="margin-top:10px;">
        <div class="col-md-12">
            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test6.jpg" style="height:85px;"></img>
        </div>
    </div>
    <div class="row" style="margin-left:-15px;margin-right:15px;margin-top:10px;">
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumb" style="margin-bottom:10px;">
                        <li>
                            <a href="#">Home</a> <span class="divider">/</span>
                        </li>
                        <li>
                            <a href="#">Type</a> <span class="divider">/</span>
                        </li>
                        <li class="active">Data</li>
                    </ul>
                </div>
            </div>
            <div class="row" style="margin-right:16px;">
                <c:forEach items="${descripeByProductType}" var="n" begin="0" step="1" varStatus="tg">
                    <div class="col-md-12" style="border: 1px solid #EEE;margin-left:16px;">
	                    <div class="col-md-1" style="background: #DDD;margin-left:-15px;height:36px;">
	                        <p style="text-align:center;margin-top:9px;">${n.descripe}</p>
	                    </div>
	                    <div class="col-md-11">
	                        <ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">
	                            <li class="active"><button>不限</button></li>
	                            <c:forEach items="${n.values }" var="m">
	                                <li>${m.value }</li>   
	                            </c:forEach>
	                        </ul>
	                    </div>
	                </div>
                </c:forEach>        
            </div>
            <div class="row" style="margin-top:13px;margin-left:1px;margin-right:1px;">
                <div class="col-md-12" style="background:whiteSmoke;">
                    <ul class="nav nav-pills pull-left" style="margin-left:-14px;">
                        <li class="active"><a href="#" style="color:#FFF">综合</a></li>
                        <li><a href="#" style="color:#000">最新</a></li>
                    </ul>
                    <div class="pull-right">
                            <ul class="list-inline" style="margin-top:11px;">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="#">${pagination.currentPage }</a></li>
                                <li><a href="#">/</a></li>
                                <li><a href="#">${pagination.pageCount }</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-left:1px;margin-right:1px;">
                <ul class="list-inline">
                    <c:forEach items="${allGoodsListByType}" var="goods">
                        <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
	                        <a href="<%=PathUtil.getFullPath("goods/product")%>/${goods.goodsId}" class="thumbnail" style="margin-bottom:8px;">
	                            <img src="/goods-image/${goods.picture}">
	                        </a>
	                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥${goods.price}/${goods.unit}</p>
	                        <p style="margin-left:3px;margin-bottom:2px;">${goods.goodsName }</p>
	                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
	                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="col-md-2">
            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test8.jpg" style="height:312px;margin-left:-18px;"></img>
        </div>
    </div>
</div>
</body>
</html>