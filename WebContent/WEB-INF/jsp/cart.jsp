<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
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
            <strong>全部商品</strong>
                <span id="top_total_count1">2</span>
        </div>
    <div id="cart_div">
        <div class="list-title">
            <ul>
                <li class="w-1"><input id="allSelect" name="allCheck" class="allselect" type="checkbox"></li>
                <li class="w-2"><label for="all">全选</label></li>
                <li class="w-3">商品</li>
                <li class="w-4">单价（元）/单位</li>
                <li class="w-5">数量</li>
                <li class="w-6">小计（元）</li>
                <li class="w-7">操作</li>
            </ul>
        </div>
        	<c:forEach items="${cartGoodsGroup}" var="n" begin="0" end="1" step="1">
	           <div class="goods_info  clearfix" id="${n.goodsId}"+>            
                <ul class="clearfix">
                        <li class="w-1">
                            <input name="allCheck" id="${n.goodsId}" productshopid="917979" value="${n.goodsId}" class="cart_product" type="checkbox">
                                   
                            <input value="1" id="minBuyCount_2510386_" type="hidden">
                            <input value="" id="2510386_sourceFrom" type="hidden">
                            <input value="${n.price}" id="price_2510386_" type="hidden">  
                            <input startnumber="1.0" endnumber="" value="45.0" name="product_price_2510386_" type="hidden">
                    </li>
                    <li class="w-2">
                            <a href="http://www.cnhnb.com/gongying/2510386/" target="_blank">
                                <img src="/goods_image/${n.picture}" title="${n.description}" width="80" height="80">
                            </a> 
                    </li>
                    <li class="w-3">
                        <a href="http://www.cnhnb.com/gongying/2510386/" target="_blank">    
                        </a>
                        <p></p>
                    </li>
                    <li class="w-4">    
                                  45.00元/斤
                        &nbsp;
                    </li>
                    <li class="w-5"><button class="left" onclick="javascript:cart.process.minusQty('2510386_');">-</button>
                        <input value="1" class="auto_input" name="2510386__qty" id="2510386__qty" style="width: 18px;" type="text">
                        <button class="right" onclick="javascript:cart.process.addQty('2510386_');">+</button>
                        <br><br><p id="c_min_2510386_" class="red hidden">最小起订为1</p>
                        <p id="c_max_2510386_" class="red hidden">    
                                当前库存为    
                        </p>
                        <p id="msg_2510386_" class="red hidden"></p>
                    </li>
                    <li class="w-6"><em>
                        <span id="amount_2510386_">45.00</span>
                        &nbsp;
                    </em></li>
                    <li class="w-7"><a href="javascript:cart.process.deleteCartPdt('2510386_');" class="del">删 除</a><a href="javascript:cart.process.addToCollection('2510386_');" class="fav">加入收藏</a></li>
                </ul>
            </div>
            </c:forEach>
           
            <div class="goods_info  clearfix" id="rows_2388594_">  
                <ul class="clearfix">
                        <li class="w-1">
                            <input name="allCheck" id="2388594__product" productshopid="788106" value="2388594_" class="cart_product" type="checkbox">
                                   
                            <input value="5000" id="minBuyCount_2388594_" type="hidden">
                            <input value="" id="2388594_sourceFrom" type="hidden">
                            <input value="1.05" id="price_2388594_" type="hidden">
                                 <input startnumber="5000.0" endnumber="" value="1.05" name="product_price_2388594_" type="hidden">
                    </li>
                    <li class="w-2">
                        
                            <a href="http://www.cnhnb.com/gongying/2388594/" target="_blank">
                                <img src="http://img.cnhnb.com/group1/M00/51/36/485A56L033ChRkRlhc94iAftFFAAGUEoZFKPs94!600x600.JPEG" title="粉莲藕 15~20cm 5-7cm 莲藕 洪湖莲藕" width="80" height="80">
                            </a>
                    </li>
                    <li class="w-3">
                        <a href="http://www.cnhnb.com/gongying/2388594/" target="_blank">
                        
                            粉莲藕 15~20cm 5-7...
                        </a>
                        <p>节长：15~20cm 直径：5-7cm 货品等级：特级 货品类别：净藕</p>
                    </li>
                    <li class="w-4">
                                  1.05元/斤
                        &nbsp;
                    </li>
                    <li class="w-5"><button class="left" onclick="javascript:cart.process.minusQty('2388594_');">-</button>
                        <input value="5000" class="auto_input" name="2388594__qty" id="2388594__qty" style="width: 42px;" type="text">
                        <button class="right" onclick="javascript:cart.process.addQty('2388594_');">+</button>
                        <br><br><p id="c_min_2388594_" class="red"></p>
                        <p id="c_max_2388594_" class="red hidden">    
                                当前库存为      
                        </p>
                        <p id="msg_2388594_" class="red hidden"></p>
                    </li>
                    <li class="w-6"><em>
                        <span id="amount_2388594_">5250.00</span>
                        &nbsp;
                    </em></li>
                    <li class="w-7"><a href="javascript:cart.process.deleteCartPdt('2388594_');" class="del">删 除</a><a href="javascript:cart.process.addToCollection('2388594_');" class="fav">加入收藏</a></li>
                </ul>
            </div>
        <div class="list-bottom" style="">
            <ul>
                <li class="w-1"><input class="sel-all" id="all_select" name="allCheck" type="checkbox"></li>
                <li class="w-2"><label for="all_select">全选</label> <a href="javascript:void(0);" id="deletePdt_btn">删除</a> 
                <li class="w-4">&nbsp;</li>
                <li class="w-5">共<em><span class="total-number" id="total_count">2</span></em>件商品
                </li>
                <li class="w-6">合计（不含运费)：<em><span class="total-price" id="totalAmount">5295.00</span>元</em></li>
                <li class="w-7"><a href="javascript:void(0);" id="submitOrder" style=""> 结 算</a>
                    <input id="productId" name="productId" type="hidden">
                    <input id="sourceFrom" name="sourceFrom" type="hidden">
                </li>
            </ul>
        </div>
        <div style="display:none;">
        <div id="mb_box" style="width: 100%; height: 100%; z-index: 99999; position: fixed; background-color: black; top: 0px; left: 0px; opacity: 0;"></div>
        <div id="mb_con" style="z-index: 999999; width: 400px; position: fixed; background-color: White; border-radius: 15px; border: 1px solid rgb(204, 204, 204); top: 72px; left: 474.5px;">
        	<span id="mb_tit" style="display: block; font-size: 14px; color: rgb(68, 68, 68); padding: 10px 15px; background-color: rgb(237, 237, 237); border-radius: 15px 15px 0px 0px; border-bottom: 3px solid rgb(13, 169, 68); font-weight: bold;">温馨提示</span>
        	<a id="mb_ico" style="display: block; position: absolute; right: 10px; top: 9px; border: 1px solid Gray; width: 18px; height: 18px; text-align: center; line-height: 16px; cursor: pointer; border-radius: 12px; font-family: 微软雅黑;">x</a>
        	<div id="mb_msg" style="padding: 20px; line-height: 20px; border-bottom: 1px dashed rgb(221, 221, 221); font-size: 13px;">确认删除选中的数据?</div>
        	<div id="mb_btnbox" style="margin: 15px 0px 10px; text-align: center;">
        	<input id="mb_btn_ok" value="确定" style="width: 85px; height: 30px; color: white; border: medium none; background-color: rgb(244, 122, 17); cursor: pointer;" type="button">
        	<input id="mb_btn_no" value="取消" style="width: 85px; height: 30px; color: white; border: medium none; background-color: rgb(171, 171, 171); margin-left: 20px; cursor: pointer;" type="button">
        	</div>
        </div>
        </div>
    </div>
    </div>
    

</body>
</html>