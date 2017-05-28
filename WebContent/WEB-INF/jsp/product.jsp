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
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/jquery.imagezoom.min.js"></script>
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
                <div class="col-md-3" style="margin-left:-23px;">
                    <span style="color:#F47A11">你好，欢迎来到惠农农产品交易平台</span>
                </div>
                <div class="col-md-1" style="margin-left:-55px;">
                    <span><a href="<%=PathUtil.getFullPath("home/login")%>" style="color:#000">请登陆</a></span>
                </div>
                <div class="col-md-1" style="margin-left:-41px;">
                    <span><a href="<%=PathUtil.getFullPath("user/register")%>" style="color:#000">免费注册</a></span>
                </div>
                <div class="col-md-2 pull-right">
                    <ul class="list-inline">
                        <li style="margin-left:26px;">我的惠农</li>
                        <li style="margin-left:5px;">联系我们</li>
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
                <a class="btn btn-success" href="#">
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
                        <span class="input-group-addon" id="basic-addon2" style="background:#5CB85C;color:#FFF">搜索</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div style="background: #009237;">
        <div class="container">
            <ul class="nav nav-pills">
                <li class="active" style="width:194px;text-align:center;background-color: #0da944;"><a href="#" style="color:#FFF">惠农市场</a></li>
                <li><a href="#" style="color:#FFF;width:110px;text-align:center;">供应大厅</a></li>
                <li><a href="#" style="color:#FFF;width:110px;text-align:center;">采购大厅</a></li>
            </ul>
        </div>
    </div>
    <div class="container">
    <div class="row" style="margin-left:-15px;margin-right:1px;margin-top:10px;">
        <div class="col-md-12">
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
            <div class="row">
                <div class="col-md-4">
                    <div class="box" style="margin-top:-8px;margin-left:0px;">
                        <div class="tb-booth tb-pic tb-s310">
                            <a href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/01.JPEG">
                                <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/01_mid.JPEG" alt="美女" rel="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/01.JPEG" class="jqzoom" />
                            </a>
                        </div>
                        <ul class="tb-thumb" id="thumblist">
                            <li class="tb-selected">
                                <div class="tb-pic tb-s40">
                                    <a href="javascript:void(0);">
                                        <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/01_small.JPEG" mid="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/01_mid.JPEG" big="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/01.JPEG"/>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="tb-pic tb-s40">
                                    <a href="javascript:void(0);">
                                        <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/02_small.JPEG" mid="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/02_mid.JPEG" big="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/02.JPEG"/>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="tb-pic tb-s40">
                                    <a href="javascript:void(0);">
                                        <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/03_small.JPEG" mid="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/03_mid.JPEG" big="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/03.JPEG"/>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="tb-pic tb-s40">
                                    <a href="javascript:void(0);">
                                        <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/04_small.JPEG" mid="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/04_mid.JPEG" big="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/04.JPEG"/>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="tb-pic tb-s40">
                                    <a href="javascript:void(0);">
                                        <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/05_small.JPEG" mid="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/05_mid.JPEG" big="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/05.JPEG"/>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <h2>${GOODS.goodsName }</h2>
                        <small>${GOODS.updateTime }</small>
                        <br>
                        <small>goods address</small>
                    </div>
                    <div class="row" style="background:#F5FBF2;margin-top:10px;">
                        <p style="margin-top:6px;margin-bottom:6px;margin-left:10px;">
                            <span style="font-size:20px;">价格:</span>
                            <span style="color:red;font-size:24px;">${GOODS.price }</span>
                            <span style="font-size:20px;">元/只</span>
                        </p>
                    </div>
                    <div class="row" style="margin-top:10px;">
                        <div class="col-md-12" style="margin-left:-15px;">
                            <p style="margin-top:6px;margin-bottom:6px;margin-left:10px;">
                                <span style="font-size:15px;">又名:</span>
                                <span style="font-size:15px;">鸭子</span>
                            </p>
                        </div>
                        <div class="col-md-4" style="margin-left:-15px;">
                            <p style="margin-top:6px;margin-bottom:6px;margin-left:10px;">
                                <span style="font-size:15px;">品种:</span>
                                <span style="font-size:15px;">麻鸭</span>
                            </p>
                        </div>
                        <div class="col-md-4">
                            <p style="margin-top:6px;margin-bottom:6px;margin-left:10px;">
                                <span style="font-size:15px;">用途:</span>
                                <span style="font-size:15px;">肉鸭</span>
                            </p>
                        </div>
                        <div class="col-md-4">
                            <p style="margin-top:6px;margin-bottom:6px;margin-left:10px;">
                                <span style="font-size:15px;">斤重:</span>
                                <span style="font-size:15px;">3~4斤</span>
                            </p>
                        </div>
                        <div class="col-md-12" style="margin-left:-15px;">
                            <p style="margin-top:6px;margin-bottom:6px;margin-left:10px;">
                                <span style="font-size:15px;">类型:</span>
                                <span style="font-size:15px;">统货</span>
                            </p>
                        </div>
                    </div>
                    <div class="row" style="margin-top:51px;">
                        <div class="col-md-6 pull-left">
                            <button class="btn btn-large btn-primary" style="width:100px;background-color:#F57A11;margin-left:13px;border-color:#F57A11;">
                                立刻购买
                            </button>
                        </div>
                        <div class="col-md-6">
                            <button class="btn btn-large btn-primary" style="width:100px;margin-left:-15px;background-color:#F57A11;border-color:#F57A11;">
                                加入购物车
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div style="border: 1px solid #EEE;">
                        <img class="img-circle" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test13.JPEG" alt="头像" style="width:80px;height:80px;margin-left:146px;margin-top:10px;"/>
                        <h4 style="margin-left:163px;">何昌明</h4>
                        <div style="margin-left:108px;">
                            <span class="label label-info">批发商</span>
                            <span class="label label-info">种植户</span>
                            <span class="label label-info">采购商</span>
                        </div>
                        <hr>
                        <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/personal-yes.png" style="width:24px;height:24px;margin-left:178px;margin-top:-2px;">
                        <h5 style="margin-left:161px;">实名认证</h5>
                        <hr>
                        <button class="btn" style="background-color:#FE500B;color:#FFF;margin-left:148px;margin-bottom:29px;margin-top:12px;">拨打电话</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="tabbable" style="border: 1px solid #EEE;">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1" data-toggle="tab">商品详情</a></li>
                            <li><a href="#tab2" data-toggle="tab">评价</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab1">
                                <p style="margin-left:20px;margin-top:20px;">${GOODS.description } </p>
                                <div>
                                    <img src="/goods-image/${GOODS.picture}" style="margin-left:20px;margin-top:0px;max-width:400px;max-height:400px;">
                                </div>
                            </div>
                            <div class="tab-pane" id="tab2">
                                <p>Howdy, I'm in Section 2.</p>
                                <br><br><br><br><br><br><br><br><br><br><br><br>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">

                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function() {
        $(".jqzoom").imagezoom();
        $("#thumblist li a").click(function() {
            $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
            $(".jqzoom").attr('src', $(this).find("img").attr("mid"));
            $(".jqzoom").attr('rel', $(this).find("img").attr("big"));
        });
    });
</script>
</body>
</html>