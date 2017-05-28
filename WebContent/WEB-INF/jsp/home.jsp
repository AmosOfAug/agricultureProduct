<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/style.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/basic.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/bootstrap.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Agrom Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->

<script src="js/menu_jquery.js"></script>

<!---pop-up-box---->
                    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <!---//pop-up-box---->
                     <script>
                        $(document).ready(function() {
                        $('.popup-with-zoom-anim').magnificPopup({
                            type: 'inline',
                            fixedContentPos: false,
                            fixedBgPos: true,
                            overflowY: 'auto',
                            closeBtnInside: true,
                            preloader: false,
                            midClick: true,
                            removalDelay: 300,
                            mainClass: 'my-mfp-zoom-in'
                        });
                                                                                        
                        });
                </script>       
</head>
<body id="top">
<!--header start here-->
<jsp:include page="header.jsp"></jsp:include>
<!--header end here-->

<nav class="nav navbar-default" style="margin-left: 72px; background-color: #FFFFFF">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">
                        <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/logo.jpg" style="height: 110px;">
                    </a>
                </div>
                <div class="navbar-header" style="margin-left:110px">
                    <div class="row" style="margin-bottom:0px;padding:0px;margin-left:-2px">
                        <ul class="nav navbar-nav" style="margin-top:25px;margin-bottom:-20px;">
                            <li id="home"><a href="#">供应</a></li>
                            <li id="about"><a href="#">供应商</a></li>
                            <li id="question"><a href="#">采购</a></li>
                        </ul>
                    </div>
                    <div class="row" style="margin-top:0px;padding:0px;">
                        <div class="navbar-form navbar-right">
                             <input class="form-control search-query" style="width:300px;" placeholder="搜索商品、商家" autocomplete="off" id="keyword" type="text">
                             <button class="btn btn-primary" id="keywordsearch">搜索</button>
                        </div>
                    </div>
                </div>
                <div class="navbar-header" style="margin-left:62px;margin-top:46px;" >
                    <div class="list-group-item" style="width:183px;">
                        <div class="activity-row">
                         <div class="col-xs-2 activity-img" style="margin-top:8px"><i class="glyphicon glyphicon-shopping-cart"></i></div>
                         <div class="col-xs-8 activity-desc">
                            <h5><a href="#">我的购物车</a></h5>
                         </div>
                         <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div style="width:100%;height: 60px;"></div>
        <div class="row" style="background-color: #009237;height: 49px;width:100%;">
            <ul class="nav navbar-nav" style="margin-left:112px;">
                <li id="home"><a href="#" style="color:#FFF;">交易市场</a></li>
                <li id="about"><a href="#" style="color:#FFF;">首页</a></li>
                <li id="publish"><a href="<%=PathUtil.getFullPath("home/publish")%>" method="GET"" style="color:#FFF;">供应大厅</a></li>
                <li id="question"><a href="#" style="color:#FFF;">采购大厅</a></li>
            </ul>
        </div>
        <div class="row" style="width:80%;margin:0 auto;">
            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/top.jpg" style="height: 80px;">
        </div>
        <div class="row" style="width:100%;margin:0 auto;">
            <div class="col-md-8">
                <div class="col-md-12" style="width:70%;margin-left:13.7%;border:1px solid #479b14">
                    <ul class="nav navbar-nav" style="margin-left:20px;">
                        <li id="home"><a href="#" style="color:#000;">全部</a></li>
                        <li id="about"><a href="#" style="color:#000;">水果蔬菜</a></li>
                        <li id="question"><a href="#" style="color:#000;">牧畜水产</a></li>
                        <li id="question"><a href="#" style="color:#000;">粮油米面</a></li>
                        <li id="question"><a href="#" style="color:#000;">农副加工</a></li>
                    </ul>
                </div>
                </div>
                </div>
                <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10);width:80%;margin:0 auto;color:#987cb9;"SIZE=1>
                <div class="goods-list">
                <div class="row">
                    <div class="col-md-3">
                        <div class="list-group">
                            <c:forEach items="${GOODSLIST}" var="GOOD">
                            <div class="list-group-item" id="test3">
                                <div class="media-top">
                                  <img src="/static_img/${GOOD.picture}" class="media-object" style="height: 156px;width: 214px;">
                                </div>
                                <div class="media-body">
                                  <strong class="media-heading"><a href="#">￥${GOOD.price}/${GOOD.unit}</a></strong>
                                  <p style="position:relative;line-height:1.4em;height:1.2em;overflow:hidden;">${GOOD.goodsName}</p>
                                  <span style="color:#3B7413;font-family:'幼圆'；width:214px;line-height:1.4em;height:1.2em;overflow:hidden;">${GOOD.description}</span>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="list-group">
                            <div class="list-group-item" id="test3">
                                <div class="media-top">
                                  <img src="/static_img/1493646597724424207.jpg" class="media-object" style="height: 156px;width: 214px;">
                                </div>
                                <div class="media-body">
                                  <strong class="media-heading"><a href="#">￥${g.price}</a></strong>
                                  <p style="position:relative;line-height:1.4em;height:4.2em;overflow:hidden;">${g.goodsName}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="list-group">
                            <div class="list-group-item" id="test3">
                                <div class="media-top">
                                  <img src="/static_img/1493646597724424207.jpg" class="media-object" style="height: 156px;width: 214px;">
                                </div>
                                <div class="media-body">
                                  <strong class="media-heading"><a href="#">￥${g.price}</a></strong>
                                  <p style="position:relative;line-height:1.4em;height:4.2em;overflow:hidden;">${g.goodsName}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="list-group">
                            <div class="list-group-item" id="test3">
                                <div class="media-top">
                                  <img src="/static_img/1493646597724424207.jpg" class="media-object" style="height: 156px;width: 214px;">
                                </div>
                                <div class="media-body">
                                  <strong class="media-heading"><a href="#">￥${g.price}</a></strong>
                                  <p style="position:relative;line-height:1.4em;height:4.2em;overflow:hidden;">${g.goodsName}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>
                    
                <div class="row">
                    <div class="col-md-3">
                        <div class="list-group">
                            <div class="list-group-item" id="test4">
                                <div class="media-top">
                                  <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/img2.JPEG" class="media-object" style="height: 156px;width: 156px;">
                                </div>
                                <div class="media-body">
                                  <strong class="media-heading"><a href="#">￥20</a></strong>
                                  <p style="position:relative;line-height:1.4em;height:4.2em;overflow:hidden;">绿孔雀</p>
                                </div>
                            </div>
                        </div>
                     </div>
                     
            <%-- <div class="col-md-4">
                 <div class="row" style="margin-left:-2px;margin-top:10px；">
                    <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/img1.jpg" style="width:216px;height: 353px;">
                </div>
            </div> --%>
        </div>
        </div>
<!--top nav end here-->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >莫非朱子</a></div>
<!--banner start here-->
<div class="container-fluid">
     <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="box">
                <ul class="ull">
                    <li><img src="images/apple.jpg" alt=""></li>
                    <li><img src="images/apple.jpg" alt=""></li>
                    <li><img src="images/apple.jpg" alt=""></li>
                    <li><img src="images/apple.jpg" alt=""></li>
                    <li><img src="images/apple.jpg" alt=""></li>

                </ul>
                <ol class="oll">
                </ol>
                <span class="left btnL glyphicon glyphicon-menu-right"></span>
                <span class="right btnL glyphicon glyphicon-menu-left"></span>
                </div>
                </div>
                </div>
 </div>
<!--banner end here-->
<!--bann-info start here-->
<div class="bann-info">
    <div class="container">
        <div class="bann-info-main">
                <div class="col-md-3 bann-grid">
                    <div class="agro-grain"><span class="glyphicon glyphicon-grain" aria-hidden="true"> </span></div>
                </div>
                <div class="col-md-6 bann-grid">
                    <h6>今日语录</h6>
                    <h3>每天一个苹果，还你健康身体。</h3>
                    <p>😈😈😈</p>
                     <a href="single.html" class="hvr-wobble-bottom">Read More</a>
                </div>
                <div class="col-md-3 bann-grid">
                    <img src="images/apple.jpg" alt="" class="img-responsive">
                </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--bann info end here-->

<!--agrom strip start here-->
<!-- <div class="agro-strip">
    <div class="container">
        <div class="agro-strip-main">
            <h3>Nam libero tempore, cum soluta nobis est eligendi</h3>
            <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system</p>
            <a href="single.html" class="hvr-wobble-bottom">Read More</a>
            <div class="clearfix"> </div>
        </div>
    </div>
</div> -->
<!--agrom strip end here-->
<!--latest-news start here-->
<div class="latest-new">
    <div class="container">
        <div class="latest-news-main">
            <div>
                <h2 class="glyphicon glyphicon-time">限时特卖</h2>
                <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="100%" color=#987cb9 SIZE=1>
            </div>
           <div class="col-md-3 latest-grid">
              <div class="media medialist" >
                <a href="">
                    <img class="scrollLoading" xsrc="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" src="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" title="独特桂花香，绿绿的也可以吃出甜润">
                </a>
                <div class="buy">
                  <a id="580" href="">加入购物车</a>
                </div>
              </div>
              <div class="buy-title">
                <h3>独特桂花香，绿绿的也可以吃出甜润</h3>
                <h4>
                 <span>¥8.90/1个 </span>
                 <del>市场价：¥17.99</del>
                </h4>
              </div>
              
           </div>
           <div class="col-md-3 latest-grid">
              <div class="media medialist" >
                <a href="">
                    <img class="scrollLoading" xsrc="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" src="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" title="独特桂花香，绿绿的也可以吃出甜润">
                </a>
                <div class="buy">
                  <a id="580" href="">加入购物车</a>
                </div>
              </div>
              <div class="buy-title">
                <h3>独特桂花香，绿绿的也可以吃出甜润</h3>
                <h4>
                 <span>¥8.90/1个 </span>
                 <del>市场价：¥17.99</del>
                </h4>
              </div>
           </div>
           <div class="col-md-3 latest-grid">
              <div class="media medialist" >
                <a href="">
                    <img class="scrollLoading" xsrc="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" src="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" title="独特桂花香，绿绿的也可以吃出甜润">
                </a>
                <div class="buy">
                  <a id="580" href="">加入购物车</a>
                </div>
              </div>
              <div class="buy-title">
                <h3>独特桂花香，绿绿的也可以吃出甜润</h3>
                <h4>
                 <span>¥8.90/1个 </span>
                 <del>市场价：¥17.99</del>
                </h4>
              </div>
           </div>
           <div class="col-md-3 latest-grid">
              <div class="media medialist" >
                <a href="good.html">
                    <img class="scrollLoading" xsrc="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" src="http://imgcdn.xuxian.com/upload/2016/08/05/20160805051902441_464_261.jpg" title="独特桂花香，绿绿的也可以吃出甜润">
                </a>
                <div class="buy">
                  <a id="580" href="">加入购物车</a>
                </div>
              </div>
              <div class="buy-title">
                <h3>独特桂花香，绿绿的也可以吃出甜润</h3>
                <h4>
                 <span>¥8.90/1个 </span>
                 <del>市场价：¥17.99</del>
                </h4>
              </div>
           </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--latest news end here-->
<!--footer start here-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
              <div class="col-md-4 ftr-grd">
                 <h3>售后服务</h3>
                 <p>服务条款</p>
                 <p>隐私声明</p>
                 <p>联系客服</p>
              </div>
              <div class="col-md-4 ftr-grd">
                 <h3>认识我们</h3>
                 <ul>
                    <li><a href="#"><span class="fa"> </span></a></li>
                    <li><a href="#"><span class="tw"> </span></a></li>
                    <li><a href="#"><span class="g"> </span></a></li>
                    <li><a href="#"><span class="in"> </span></a></li>
                 </ul>
              </div>
              <div class="col-md-4 ftr-grd">
                 <h3>加入我们</h3>
                 <p>我们的团队</p>
                 <p>官方微博</p>
                 <p>招募</p>
                <label class="hvr-wobble-bottom"> <input type="submit" value="Join"></label>
              </div>
            <div class="clearfix"> </div>
            <div class="copy-right">
            <p>Copyright &copy; 2017.I could do better <a href="http://www.mofeizhuzhi.com/" target="_blank" title="莫非朱子">莫非朱子</a> - Collect from <a href="http://www.cssmoban.com/" title="毕业设计" target="_blank">毕业设计</a></p>
           </div>
        </div>
    </div>
</div>
<!--//footer--> 
<!--返回顶部-->
<p id="back-to-top" style="position: fixed;
    display: none;
    bottom: 150px;
    right: 20px;
    z-index: 30;"><a href="#top"><span class="glyphicon glyphicon-menu-up" style="font-size:30px;color:#ff6700;"></span>回到顶部</a></p> 
<!-- modal -->
<!-- 模态框（Modal） -->
                <div class="modal fade" id="denglu" tabindex="-1" role="dialog" 
                   aria-labelledby="myModalLabel" aria-hidden="true">
                   <div class="modal-dialog">
                      <div class="modal-content text-center">
                         <div class="modal-header text-center">
                            <button type="button" class="close" 
                               data-dismiss="modal" aria-hidden="true">
                                  &times;
                            </button>
                            <h1 class="modal-title" id="myModalLabel">
                               农园账号登录
                            </h1>
                         </div>
                         <div class="modal-body text-center" style="text-align:center;">
                          <form action="<%=PathUtil.getFullPath(Constant.LOGIN_URL_PAGE)%>" method="POST">
                           <input class="item_account" autocomplete="off" type="text" name="userName" id="userName" placeholder="邮箱/手机号码/农园帐号">
                           <input type="password" placeholder="密码" name="password" id="password">
                           <input class="btnadpt btn_orange" id="login-button" type="submit" value="立即登录">
                         </form>
                            <fieldset class="oth_type_tit">
                              <legend style="text-align:center;" class="oth_type_txt">其他方式登录</legend>
                            </fieldset>
                            <img src="images/qq.png" alt="">
                            <img src="images/weobo.png" alt="">
                            <img src="images/zhifubao.png" alt="">
                         </div>
                         <a href="">
                              <a class="link" data-toggle="modal" data-target="#zhuce" href="#"><span>注册农园账号</span></a>
                              <span>|</span>
                              <span>忘记密码</span>
                            </a>
                      </div><!-- /.modal-content -->
                </div><!-- /.modal -->
                </div>
                
                 <!-- 模态框(Modal)2 -->
                <div class="modal fade" id="zhuce" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                   <div class="modal-dialog">
                      <div class="modal-content text-center">
                         <div class="modal-header text-center">
                            <button type="button" class="close" 
                               data-dismiss="modal" aria-hidden="true">
                                  &times;
                            </button>
                            <h1 class="modal-title" id="myModalLabel">
                               注册农园账号
                            </h1>
                         </div>
                         <div class="modal-body text-center">
                          <form>
                           <input class="item_account" autocomplete="off" type="text" name="user" id="username" placeholder="中国(+86)">
                           <input type="tel" placeholder="请输入手机号" name="pwd" id="pwd">
                           <input style="width:170px;" class="code" type="text" name="icode" autocomplete="off" placeholder="图片验证码">
                           <img style="margin-top:-47px;float:right;" alt="图片验证码" title="看不清换一张" class="icode_image" src="img/yzm.png">
                           <input class="btnadpt btn_orange" id="login-button" type="submit" value="立即注册">
                           </form>
                            <p class="msg">
                            点击“立即注册”，即表示您同意并愿意遵守农园
                            <a href="http://www.miui.com/res/doc/eula/cn.html" target="_blank" title="用户协议">用户协议</a>
                            和
                            <a href="http://www.miui.com/res/doc/privacy/cn.html" target="_blank" title="隐私政策">隐私政策</a>
                            </p>
                      </div><!-- /.modal-content -->
                </div><!-- /.modal -->
              </div>
              </div>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/myapp.js"></script>
    <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event){     
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                });
            });
</script>
<!-- //end-smoth-scrolling -->
</body>
</html>