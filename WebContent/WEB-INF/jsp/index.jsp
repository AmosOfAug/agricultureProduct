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
    <title>惠农</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/google-maps.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body id="top">
    <jsp:include page="top.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="col-md-2" style="background:#F8F8F8;height:430px;margin-left:15px;">
                <div class="content">
                   <ul class="nav nav-tabs nav-stacked vertical-nav" style="height:429px;">
                   <li class="active"><a href="#"><span class="glyphicon glyphicon-user" style="margin-right:10px;"></span>我的关注<span class="glyphicon glyphicon-chevron-right" style="margin-left:10px;"></span></a></li>
                   <c:forEach items="${TypeGroup}" var="n" begin="0" end="1" step="1" varStatus="tg">
                       <c:if test="${tg.index==0}">
	                     <li><a href="${n.id} }"><span class="glyphicon glyphicon-leaf" style="margin-right:10px;"></span>${n.group}<span class="glyphicon glyphicon-chevron-right" style="margin-left:10px;"></span></a>
	                         <ul class="nav nav-tabs nav-stacked">
	                             <li>
	                                 <div style="margin-left:-110px;">
	                                     <dl class="dl-horizontal">
	                                         <c:forEach items="${n.goodsType}" var="m">
	                                             <dt>${m.type}</dt>
	                                          <dd>
	                                              <c:forEach items="${m.productTypes}" var="z">
	                                                  <a href="<%=PathUtil.getFullPath("goods/products/")%>${z.id }">${z.type }</a>
	                                              </c:forEach>
	                                          </dd>
	                                         </c:forEach>
	                                     </dl>                              
	                                 </div>
	                             </li>
	                         </ul>
	                     </li>
                       </c:if>
                   </c:forEach>
                   <c:forEach items="${TypeGroup}" var="n" begin="1" step="1" varStatus="tg">
                    <li><a href="${n.id} }"><span class="glyphicon glyphicon-leaf" style="margin-right:10px;"></span>${n.group}<span class="glyphicon glyphicon-chevron-right" style="margin-left:10px;"></span></a>
                        <ul class="nav nav-tabs nav-stacked">
                            <li>
                                <div style="margin-left:-110px;">
                                    <dl class="dl-horizontal">
                                        <c:forEach items="${n.goodsType}" var="m">
                                            <dt>${m.type}</dt>
                                         <dd>
                                             <c:forEach items="${m.productTypes}" var="z">
                                                 <a href="<%=PathUtil.getFullPath("goods/products/")%>${z.id }">${z.type }</a>
                                             </c:forEach>
                                         </dd>
                                        </c:forEach>
                                    </dl>                              
                                </div>
                            </li>
                        </ul>
                    </li>
                   </c:forEach>
                   </ul>
               </div>
            </div>
            <div class="col-md-8" style="margin-top:20px;">
                <div id="myCarousel" class="carousel slide" style="width:697px;">
                    <div class="carousel-inner">
                        <div class="active item">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test1.jpg"></img>
                        </div>
                        <div class="item">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test2.jpg"></img>
                        </div>
                        <div class="item">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test3.jpg"></img>
                        </div>
                    </div>
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
                </div>
            </div>
            <div class="col-md-2" style="margin-left:-84px;">
                <div class="col-md-12" style="margin-top:20px;">
                    <h5 id="currentTime"></h5>
                    <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test4.jpg"></img>
                    <h5>it's time guyu</h5>
                </div>
                <div class="col-md-12" style="border: 1px solid #EEE;margin-left:16px;width:204px;">
                    <% if(request.getSession().getAttribute("USER") == null){ %>
                        <div class="row">
	                        <div class="col-md-6 pull-left">
	                            <button class="btn btn-large btn-primary" style="width:100px;background-color:#009237;margin-left:-16px;">
	                                                                                    登陆
	                            </button>
	                        </div>
	                        <div class="col-md-6">
	                            <button class="btn btn-large btn-primary" style="width:100px;margin-left:-15px;background-color:#009237;">
	                                                                                     免费注册
	                            </button>
	                        </div>
	                    </div>
                    <% } else { %>
                        <div class="row">
                            <div class="col-md-12" style="text-align:center;margin-top:3px;">
                                <a href="#"><span style="color:red;">您好，${USER.userName}</span></a>
                            </div>
                        </div>
                    <%}%>
                    <div class="row" style="margin-top:30px;">
                        <div class="tabbable">
                            <ul class="nav nav-tabs">
                                <li class="active" style="width:66px;"><a href="#tab1" data-toggle="tab">公告</a></li>
                                <li><a href="#tab2" data-toggle="tab" style="width:66px;">买家</a></li>
                                <li><a href="#tab3" data-toggle="tab" style="width:66px;">卖家</a></li>
                            </ul>
                            <div class="tab-content" style="height:111px;">
                                <div class="tab-pane active" id="tab1">
                                    <p>暂无公告</p>
                                </div>
                                <div class="tab-pane" id="tab2">
                                    <p>暂无资讯</p>
                                </div>
                                <div class="tab-pane" id="tab3">
                                    <p>暂无资讯</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" style="margin-top:16px;margin-bottom:16px;">
        <div class="row">
            <div class="col-md-12">
                <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test5.jpg" style="height:88px;"></img>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" style="margin-top:-16px;">
            <div class="col-md-4" style="margin-top:-26px;">
                <div class="panel panel-success" style="width:383px;">
                    <div class="panel-heading" style="background-color:#009237;">
                        <h3 class="panel-title" style="color:#FFF">供应</h3>
                    </div>
                    <div class="panel-body" style="height:216px;">
                        <div class="list-group-item" style="height: 171px;" id="test2">
		                    <c:forEach begin="1" end="5" step="1">
		                    	<p><a href="#" style="color: red;">[资讯]</a><a href="#">现购现买苹果</a></p>
		                    </c:forEach>
		                </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4" style="margin-top:-26px;">
                <div class="panel panel-success" style="width:383px;">
                    <div class="panel-heading" style="background-color:#009237;">
                        <h3 class="panel-title" style="color:#FFF">采购</h3>
                    </div>
                    <div class="panel-body" style="height:216px;">
                        <div class="list-group-item" style="height: 171px;" id="test2">
		                    <c:forEach begin="1" end="5" step="1">
		                    	<p><a href="#" style="color: red;">[资讯]</a><a href="#">需要100斤苹果</a></p>
		                    </c:forEach>
		                </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4" style="margin-top:-26px;">
                <div class="panel panel-success" style="width:383px;">
                    <div class="panel-heading" style="background-color:#009237;">
                        <h3 class="panel-title" style="color:#FFF">最新</h3>
                    </div>
                    <div class="panel-body" style="height:216px;">
                        <div class="list-group-item" style="height: 171px;" id="test2">
		                    <c:forEach begin="1" end="5" step="1">
		                    	<p><a href="#" style="color: red;">[资讯]</a><a href="#">河南迎来大丰收</a></p>
		                    </c:forEach>
		                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="modal fade" tabindex="-1" role="dialog" id="upgradeModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">发布商品提示</h4>
	      </div>
	      <div class="modal-body">
	        <p>您还不是卖家，请先升级成为卖家</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <a href="<%=PathUtil.getFullPath("user/upgrade")%>" class="btn btn-default">立刻升级</a>
	      </div>
	    </div>
	  </div>
	</div>
	
	<div class="modal fade" tabindex="-1" role="dialog" id="loginModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">登陆提示</h4>
	      </div>
	      <div class="modal-body">
	        <p>您还未登陆，请先登陆.....</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <a href="<%=PathUtil.getFullPath("home/login")%>" class="btn btn-default">立刻登陆</a>
	      </div>
	    </div>
	  </div>
	</div>
		
    <script type="text/javascript">
        $('.carousel').carousel({
          interval: 4000
        });
        $(function(){
            $(".panel-heading").click(function(e){
                $(this).find("span").toggleClass("glyphicon-chevron-down");
                $(this).find("span").toggleClass("glyphicon-chevron-up");
            });
        });
        $(".vertical-nav").verticalnav({speed: 400,align: "left"});
        $("#publish").click(function() {
        	var role = $("#role").val();
        	if(role == 0){
        		$("#loginModal").modal('show');
        	}else if(role == 1){
        		$("#upgradeModal").modal('show');
        	} else{
        		window.location.href = "/AgricultureProduct/page/goods/publish";
        	}
        });
    </script>
    <script type="text/javascript">
        $('.carousel').carousel({
          interval: 4000
        });
        $(function(){
            $(".panel-heading").click(function(e){
                $(this).find("span").toggleClass("glyphicon-chevron-down");
                $(this).find("span").toggleClass("glyphicon-chevron-up");
            });
        });
        $(".vertical-nav").verticalnav({speed: 400,align: "left"});
    </script>
    <script type="text/javascript">
		function currentTime(){
		  var d=new Date(),str='';
		  str+=d.getFullYear()+'年';
		  str+=d.getMonth() + 1+'月';
		  str+=d.getDate()+'日';
		  str+=d.getHours()+':';
		  str+= extra(d.getMinutes())+':';
		  str+= extra(d.getSeconds());
		  return str;
		}
		setInterval(function(){$('#currentTime').html(currentTime)},1000);
		//补位函数。  
	    function extra(x)  
	    {  
	        //如果传入数字小于10，数字前补一位0。  
	        if(x < 10)  
	        {  
	            return "0" + x;  
	        }  
	        else  
	        {  
	            return x;  
	        }  
	    }  
	</script>
}
</body>
</html>