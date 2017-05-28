<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的信息</title>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/style.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/basic.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/bootstrap.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/publish.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <!--header start here-->
    <jsp:include page="top.jsp"></jsp:include>
   <!--header end here-->
   <div class="row">
               <form class="form-horizontal" action="<%=PathUtil.getFullPath("user/update")%>" method="POST">
               	  <div class="form-group">
                       <label class="col-md-2 control-label">用户编号:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="user_id" name="user_id" type="text" class="form-control1" disabled value="${USER.userId}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">用户名:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="user_name" name="user_name" type="text" class="form-control1" value="${USER.userName}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">用户类型:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="role" name="role" type="text" class="form-control1" disabled value="${USER.role}" readonly="readonly">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">联系方式:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="phone" name="phone" type="text" class="form-control1" value="${USER.phone}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">性别:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input id="sex" name="sex" type="text" class="form-control1" value="${USER.sex}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">注册时间:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input  type="text" class="form-control1" disabled value="${USER.createTime}">
                           </div>
                       </div>
                   </div>
                   <div class="form-group">
                       <label class="col-md-2 control-label">上次更新时间:</label>
                       <div class="col-md-8">
                           <div class="input-group">                           
                               <input  type="text" class="form-control1" disabled value="${USER.updateTime==null?'暂无更新记录':USER.updateTime}">
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
   
</body>
</html>