<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品发布</title>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
<script src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/js/lib/bootstrap.min.js"></script>
</head>
<body>
    <!--header start here-->
    <jsp:include page="top.jsp"></jsp:include>
    <div style="height:60px;"></div>
   <!--header end here-->
   <div class="row">
      <form class="form-horizontal" action="<%=PathUtil.getFullPath("goods/create")%>" method="post" enctype="multipart/form-data">
          <div class="form-group">
              <label class="col-md-2 control-label">商品名称:</label>
              <div class="col-md-8">
                  <div class="input-group">                           
                      <input id="goodsName" name="goodsName" type="text" class="form-control1" placeholder="商品名称">
                  </div>
              </div>
          </div>
          <div class="form-group">
              <label class="col-md-2 control-label">商品价格:</label>
              <div class="col-md-8">
                  <div class="input-group">                           
                      <input id="price" name="price" type="text" class="form-control1" placeholder="商品价格">
                  </div>
              </div>
          </div>
          <div class="form-group">
              <label class="col-md-2 control-label">价格单位:</label>
              <div class="col-md-3">
                <select class="selectpicker form-control1 ng-invalid ng-invalid-required" ng-model="model.select" id="rangeSelect" name="unit">
                  <option>选择价格单位</option>
                     <option  value="g">g</option>
                     <option  value="50g">50g</option>
                     <option  value="500g">500g</option>
                     <option  value="1000g">1000g</option>
                     <option  value="两">两</option>
                     <option  value="斤">斤</option>
                </select>
              </div>
          </div>
          <div class="form-group">
              <label class="col-md-2 control-label">商品类型:</label>
              <div class="col-md-3">
                <select class="selectpicker form-control1 ng-invalid ng-invalid-required" ng-model="model.select" id="goodTypeSelect" name="type">
                      <c:forEach items="${publishGoodsType}" var="n" varStatus="tg">
                          <option  value="${n.id}">${n.type}</option>
                      </c:forEach>
                </select>
                <select multiple class="form-control" style="margin-top: 10px;" name="types" id="productTypeSelect">
                      <c:forEach items="${publishGoodsType}" var="n" begin="0" end="0" step="1">
                          <c:forEach items="${n.productTypes}" var="m">
                              <option  value="${m.id}">${m.type }</option>
                          </c:forEach>
                      </c:forEach>
                </select>
                    </div>
                </div>
                <div class="form-group" id="descripeDiv">
                <c:forEach items="${publishGoodsDescripe}" var="n" begin="0" step="1" varStatus="tg">
			        <label class="col-md-2 control-label">${n.descripe}:</label>
			        <c:if test="${tg.index==0}">
                       <div class="col-md-10">
				            <ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">
				                <c:forEach items="${n.values }" var="m">
				                    <li><input type="radio" name="values1" value="${m.id }"/>${m.value }</li>   
				                </c:forEach>
				            </ul>
				       </div> 
                    </c:if>
                    <c:if test="${tg.index==1}">
                       <div class="col-md-10">
				            <ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">
				                <c:forEach items="${n.values }" var="m">
				                    <li><input type="radio" name="values2" value="${m.id }"/>${m.value }</li>   
				                </c:forEach>
				            </ul>
				       </div> 
                    </c:if>
                    <c:if test="${tg.index==2}">
                       <div class="col-md-10">
				            <ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">
				                <c:forEach items="${n.values }" var="m">
				                    <li><input type="radio" name="values3" value="${m.id }"/>${m.value }</li>   
				                </c:forEach>
				            </ul>
				       </div> 
                    </c:if>
			        
			    </c:forEach> 
          </div>
          <div class="form-group">
              <label class="col-md-2 control-label">商品图片:</label>
              <div class="col-md-10">
                  <div class="form-group">
		              <div class="col-md-10">
						 <a type="button" onclick="file0.click()" id="image_button" class="btn btn-default">添加</a>
		                  <input type="file" name="file0" id="file0" style="visibility: hidden; position: absolute;"/><br>
		                  <img src="" id="img0" style="width: 50%;height: 50%;">
		              </div>
		          </div>
              </div>
          </div>
          <div class="form-group">
              <label class="col-md-2 control-label">商品描述:</label>
              <div class="col-md-10">
                  <div class="form-group">
		              <div class="col-md-8">
		                  <textarea name="description" class="form-control" rows="6"></textarea>
		              </div>
		          </div>
	          </div>
          </div>
          <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                  <button class="btn-success btn" type="submit" id="publishBtn">发布</button>
                  <button class="btn-default btn" id="cancelBtn">取消</button>
              </div>
          </div>
      </form>
      </div>
      <script type="text/javascript">
	      $("#submit_image").click(function() {
	      	$("#image_modal").modal('show');
	      });
	      $("#file0").change(function(){
	    		var objUrl = getObjectURL(this.files[0]) ;
	    		console.log("objUrl = "+objUrl) ;
	    		if (objUrl) {
	    			$("#img0").attr("src", objUrl) ;
	    			$("#image_button").text("修改");
	    		}
	      });
	      function getObjectURL(file) {
	    		var url = null ; 
	    		if (window.createObjectURL!=undefined) { // basic
	    			url = window.createObjectURL(file) ;
	    		} else if (window.URL!=undefined) { // mozilla(firefox)
	    			url = window.URL.createObjectURL(file) ;
	    		} else if (window.webkitURL!=undefined) { // webkit or chrome
	    			url = window.webkitURL.createObjectURL(file) ;
	    		}
	    		return url ;
	    	};
	    	$('#goodTypeSelect').change(function(){
				var goodsId = $(this).children('option:selected').val();
				var u = "/AgricultureProduct/page/goods/goods-type-change/" + goodsId;
				$.ajax({
		             type: "GET",
		             url: u,
		             dataType:"json",  
		             async:false,  
		             cache:false,
		             success: function(data){
		            	 $('#productTypeSelect').empty(); 
		                 for(var i in data.productType) {
	                         $('#productTypeSelect').append("<option value='"+data.productType[i].id+"'>"+data.productType[i].type+"</option>")
		                 }
		                 $('#descripeDiv').empty();
		                 var tbody='';
		                 for(var i in data.descripeType) {
	                         if(i==0){
	                        	 tbody+='<label class="col-md-2 control-label">'+data.descripeType[i].descripe+':</label>';
                                 tbody+='<div class="col-md-10">';
                                 tbody+='<ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">';
                                 
                                 for(var b in data.descripeType[i].values) {
                                	 tbody+='<li><input type="radio" name="values1" value="'+data.descripeType[i].values[b].id+'"/>'+data.descripeType[i].values[b].value+'</li>';
                                 }
	 				             tbody+='</ul>';
	 				             tbody+='</div>';
	                         }
	                         if(i==1){
	                        	 tbody+='<label class="col-md-2 control-label">'+data.descripeType[i].descripe+':</label>';
                                 tbody+='<div class="col-md-10">';
                                 tbody+='<ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">';
                                 for(var b in data.descripeType[i].values) {
                                	 tbody+='<li><input type="radio" name="values2" value="'+data.descripeType[i].values[b].id+'"/>'+data.descripeType[i].values[b].value+'</li>';
                                 }
	 				             tbody+='</ul>';
	 				             tbody+='</div>';
	                         }
	                         if(i==2){
	                        	 tbody+='<label class="col-md-2 control-label">'+data.descripeType[i].descripe+':</label>';
                                 tbody+='<div class="col-md-10">';
                                 tbody+='<ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">';
                                 for(var b in data.descripeType[i].values) {
                                	 tbody+='<li><input type="radio" name="values3" value="'+data.descripeType[i].values[b].id+'"/>'+data.descripeType[i].values[b].value+'</li>';
                                 }
	 				             tbody+='</ul>';
	 				             tbody+='</div>';
	                         }
	                         $('#descripeDiv').html(tbody);
		                 }
		            }
		         });
	    	});
	    	$("#productTypeSelect").click(function() {
	    		var productTypeId = $(this).children('option:selected').val();
	    		$.ajax({
		             type: "GET",
		             url: "/AgricultureProduct/page/goods/get-descripe-by-productType/" + productTypeId,
		             dataType:"json",  
		             async:false,  
		             cache:false,
		             success: function(data){
		                 $('#descripeDiv').empty();
		                 var tbody='';
		                 for(var i in data.descripeType) {
	                         if(i==0){
	                        	 tbody+='<label class="col-md-2 control-label">'+data.descripeType[i].descripe+':</label>';
                                tbody+='<div class="col-md-10">';
                                tbody+='<ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">';
                                
                                for(var b in data.descripeType[i].values) {
                               	 tbody+='<li><input type="radio" name="values1" value="'+data.descripeType[i].values[b].id+'"/>'+data.descripeType[i].values[b].value+'</li>';
                                }
	 				             tbody+='</ul>';
	 				             tbody+='</div>';
	                         }
	                         if(i==1){
	                        	 tbody+='<label class="col-md-2 control-label">'+data.descripeType[i].descripe+':</label>';
                                tbody+='<div class="col-md-10">';
                                tbody+='<ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">';
                                for(var b in data.descripeType[i].values) {
                               	 tbody+='<li><input type="radio" name="values2" value="'+data.descripeType[i].values[b].id+'"/>'+data.descripeType[i].values[b].value+'</li>';
                                }
	 				             tbody+='</ul>';
	 				             tbody+='</div>';
	                         }
	                         if(i==2){
	                        	 tbody+='<label class="col-md-2 control-label">'+data.descripeType[i].descripe+':</label>';
                                tbody+='<div class="col-md-10">';
                                tbody+='<ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">';
                                for(var b in data.descripeType[i].values) {
                               	 tbody+='<li><input type="radio" name="values3" value="'+data.descripeType[i].values[b].id+'"/>'+data.descripeType[i].values[b].value+'</li>';
                                }
	 				             tbody+='</ul>';
	 				             tbody+='</div>';
	                         }
	                         $('#descripeDiv').html(tbody);
		                 }
		            }
		         });
		      });
      </script>            
  </body>
</html>