<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的商品</title>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/style.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/basic.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/bootstrap.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/cart.css" rel="stylesheet">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
<%-- <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/cart.js"></script> --%>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
</head>
<body>
<script type="text/javascript">
$(document).ready(function () {

	//jquery特效制作复选框全选反选取消(无插件)
	// 全选        
	$(".allselect").click(function () {
		if($(this).attr("allCheck")){
			$("input[name=allCheck]").each(function () {
				$(this).attr("checked", true);
				// $(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
			});
			GetCount();
		
		}
		else
   		{
			$("input[name=allCheck]").each(function () {
				if ($(this).attr("checked")) {
					$(this).attr("checked", false);
					//$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
				} else {
					$(this).attr("checked", true);
					//$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
				} 
			});
			GetCount();
    
   		}
		
	});

	//反选
	$("#invert").click(function () {
		$("input[name=allCheck]").each(function () {
			if ($(this).attr("checked")) {
				$(this).attr("checked", false);
				//$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
			} else {
				$(this).attr("checked", true);
				//$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
			} 
		});
		GetCount();
	});

	//取消
	$("#cancel").click(function () {
		$("input[name=allCheck]").each(function () {
			$(this).attr("checked", false);
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
		});
		GetCount();
	});

	// 所有复选(:checkbox)框点击事件
	$("input[name=allCheck]").click(function () {
		if ($(this).attr("checked")) {
			//$(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
		} else {
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
		}
	});

	// 输出
	$("input[name=allCheck]").click(function () {
		// $("#total2").html() = GetCount($(this));
		GetCount();
		//alert(conts);
	});
});
//******************
function GetCount() {
	var conts = 0;
	var aa = 0;
	$(".gwc_tb2 input[name=allCheck]").each(function () {
		if ($(this).attr("checked")) {
			for (var i = 0; i < $(this).length; i++) {
				conts += parseInt($(this).val());
				aa += 1;
			}
		}
	});
	$("#total_count").text(aa);
	$("#totalAmount").html((conts).toFixed(2));
	$("#jz1").css("display", "none");
	$("#jz2").css("display", "block");
}
</script>
<!--header start here-->
<jsp:include page="top.jsp"></jsp:include>
<!--header end here-->

    <div class="cart container">
        <div class="title">
            <strong>我的商品</strong>
                <span></span>
        </div>
    <div id="cart_div">
        <div class="list-title">
            <ul>
                <li class="w-1"><input id="allSelect" name="allCheck" class="allselect" type="checkbox"></li>
                <li class="w-2"><label for="all">全选</label></li>
                <li class="w-3">商品</li>
                <li class="w-4">单价（元）/单位</li>
                <li class="w-4">发布时间</li>
                <li class="w-7">操作</li>
            </ul>
        </div>
        	<c:forEach items="${goodsList}" var="n" begin="0" end="1" step="1">
	           <div class="goods_info  clearfix" id="${n.goodsId}">            
                <ul class="clearfix">
                        <li class="w-1">
                            <input name="allCheck" id="${n.goodsId}"  value="${n.goodsId}" class="cart_product" type="checkbox">    
                            <input value="1" id="minBuyCount_2510386_" type="hidden">
                            <input value="${n.price}" id="price_2510386_" type="hidden">  
                            <input startnumber="1.0" endnumber="" value="45.0" name="product_price_2510386_" type="hidden">
                    </li>
                    <li class="w-2">
                            <a href="http://www.cnhnb.com/gongying/2510386/" target="_blank">
                                <img src="/goods-image/${n.picture}" title="${n.description}" width="80" height="80">
                            </a> 
                    </li>
                    <li class="w-3">
                        <a href="/AgricultureProduct/page/goods/product/${n.goodsId}" target="_blank">
                        ${n.goodsName}    
                        </a>
                        <p></p>
                    </li>
                    <li class="w-4">    
                                  ${n.price}元/${n.unit}
                        &nbsp;
                    </li>
                    <li class="w-5">    
                                  ${n.createTime}
                        &nbsp;
                    </li>
                    <li class="w-7"><a href="/AgricultureProduct/page/goods/product-delete/${n.goodsId}" id="deleteGoods" class="del">删 除</a></li>
                </ul>
            </div>
            </c:forEach>
           
            
       <div class="modal fade" tabindex="-1" role="dialog" id="deleteProductModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">删除商品提示</h4>
	      </div>
	      <div class="modal-body">
	        <p>已成功删除该商品</p>
	      </div>
	    </div>
	  </div>
	</div>
        </div>
    </div>
    </div>
    <script type="text/javascript">
    $(function() {
        $("#deleteGoods").click(function() {
        	$("#deleteProductModal").modal('show');
        });
    });
</script>
    

</body>
</html>