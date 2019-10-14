<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
	<base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>欢迎访问渤海书城</title>

    <!-- For iPhone 4 Retina display: -->
    <link rel="apple-touch-icon-precomposed" href="image//apple-touch-icon-114x114-precomposed.png">

    <!-- For iPad: -->
    <link rel="apple-touch-icon-precomposed" href="image//apple-touch-icon-72x72-precomposed.png">

    <!-- For iPhone: -->
    <link rel="apple-touch-icon-precomposed" href="image//apple-touch-icon-57x57-precomposed.png">

    <!-- Library - Google Font Familys -->
    <link href="https://fonts.googleapis.com/css?family=Arizonia|Crimson+Text:400,400i,600,600i,700,700i|Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="revolution/css/settings.css">

    <!-- RS5.0 Layers and Navigation Styles -->
    <link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">

    <!-- Library - Bootstrap v3.3.5 -->
    <link rel="stylesheet" type="text/css" href="libraries/lib.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    <!-- Custom - Common CSS -->
    <link rel="stylesheet" type="text/css" href="css/plugins.css">
    <link rel="stylesheet" type="text/css" href="css/navigation-menu.css">
    <link rel="stylesheet" type="text/css" href="css/shortcode.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->

</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation" id="top" isLogin="<s:if test="#session.user != null">true</s:if>">
    <div class="main-container">
        <!-- Loader -->
        <div id="site-loader" class="load-complete">
            <div class="loader">
                <div class="loader-inner ball-clip-rotate">
                    <div></div>
                </div>
            </div>
        </div>
        <!-- Loader /- -->
        <!-- Header -->
        <header class="header-section container-fluid no-padding">
            <!-- Menu Block -->
            <div class="container-fluid no-padding menu-block">
                <!-- Container -->
                <div class="container">
                    <!-- nav -->
                    <nav class="navbar navbar-default ow-navigation">
                        <div class="navbar-header">
                            <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
                            <a href="index.jsp" class="navbar-brand">博海<span>书城</span></a>
                        </div>
                        <!-- Menu Icon -->
                        <div class="menu-icon">
                            <div class="search">
                                <a id="search" title="搜索"><i class="icon icon-Search"></i></a>
                            </div>
                            <ul class="cart">
                            	<s:if test="#session.user == null">
                                <li><a href="login.jsp" title="登录"><i class="icon icon-User"></i></a></li>
                                <li><a href="register.jsp" title="注册"><i class="icon icon-Flag"></i></a></li>
                                </s:if>
								<s:else>
								 <li><a href="Order_listAllOrderByUid" title="我的订单" target="_blank"><span class="glyphicon glyphicon-th"></span></a></li>
								 <li><a href="cart.jsp" title="购物车" target="_blank"><i class="icon icon-ShoppingCart"></i></a></li>
								 <li><a href="list_info.jsp" title="用户管理" target="_blank"><i class="icon icon-User"></i></a></li>
								 <li><a href="User_logout" title="注销"><span class="glyphicon glyphicon-off"></span></a></li>
								</s:else>
                            </ul>
                        </div>
                    </nav>
                    <!-- nav /- -->
                    <!-- Search Box -->
                    <div class="search-box">
                        <span><i class="icon_close"></i></span>
                        <form action="Product_listAllProductByPageAndPname" method="get"><input type="text" name="pname" class="form-control" placeholder="输入书名并回车..." /></form>
                    </div>
                    <!-- Search Box /- -->
                </div>
                <!-- Container /- -->
            </div>
            <!-- Menu Block /- -->
        </header>
        <!-- Header /- -->
        <main>
            <!-- Slider Section 1 -->
            <div id="home-revslider" class="slider-section container-fluid no-padding">
                <!-- START REVOLUTION SLIDER 5.0 -->
                <div class="rev_slider_wrapper">
                    <div id="home-slider1" class="rev_slider" data-version="5.0">
                        <ul>
                            <li data-transition="zoomout" data-slotamount="default" data-easein="easeInOut" data-easeout="easeInOut" data-masterspeed="2000" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7">
                                <img src="image/slider-1.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                                <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-1" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-200','-130','-110','-80']" data-fontsize="['38','30','25','16']" data-lineheight="['24','24','24','24']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="y:-50px;opacity:0;s:1000;e:Power4.easeOut;" data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="z-index: 5; white-space: nowrap; letter-spacing: 3.04px; color:#333; font-weight: 700; font-family: 'Montserrat', sans-serif; text-transform: uppercase;">购买书籍的新方式
                                </div>
                                <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-2" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-135','-80','-60','-50']" data-fontsize="['18','18','18','14']" data-lineheight="['26','26','26','26']" data-width="['750','750','738','450']" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#777; font-weight: normal; font-family: 'Lato', sans-serif;">读过一本好书，像交了一个益友。
                                </div>
                                <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-3" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-110','-50','-35','-30']" data-fontsize="['18','18','18','14']" data-lineheight="['26','26','26','26']" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#777; font-weight: normal; font-family: 'Lato', sans-serif;">学，就像一只钻头，去开掘知识的深井。问，就像一把钥匙，去启开疑团的大门。
                                </div>
                                <div class="tp-caption NotGeneric-Button rev-btn  rs-parallaxlevel-0" id="slide-layer-4" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-30','20','40','30']" data-fontsize="['14','14','14','12']" data-lineheight="['24','24','24','24']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:100;e:Power1.easeInOut;" data-style_hover="c:rgb(255, 255, 255);bg:rgba(182, 121, 95);" data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" data-start="2000" data-splitin="none" data-splitout="none" data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]' data-responsive_offset="on" data-responsive="off" style="z-index: 10; padding:8px 38px; letter-spacing:0.56px; color: #b6795f; border-color: #b6795f; font-family: 'Montserrat', sans-serif; text-transform:uppercase; background-color:transparent; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">开启旅程
                                </div>
                            </li>
                            <li data-transition="zoomout" data-slotamount="default" data-easein="easeInOut" data-easeout="easeInOut" data-masterspeed="2000" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7">
                                <img src="image/slider-2.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                                <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-5" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-200','-130','-110','-80']" data-fontsize="['38','30','25','16']" data-lineheight="['24','24','24','24']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="y:-50px;opacity:0;s:1000;e:Power4.easeOut;" data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="z-index: 5; white-space: nowrap; letter-spacing: 3.04px; color:#333; font-weight: 700; font-family: 'Montserrat', sans-serif; text-transform: uppercase;">求知而来，载之而归.
                                </div>
                                <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-6" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-135','-80','-60','-50']" data-fontsize="['18','18','18','14']" data-lineheight="['26','26','26','26']" data-width="['750','750','738','450']" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#f4f4f4; font-weight: normal; font-family: 'Lato', sans-serif;">锦绣成文，原非我有。琳琅满架，惟待人求。
                                </div>
                                <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-7" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-110','-50','-35','-30']" data-fontsize="['18','18','18','14']" data-lineheight="['26','26','26','26']" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="z-index: 5; white-space: nowrap; letter-spacing: 1.5px; color:#f4f4f4; font-weight: normal; font-family: 'Lato', sans-serif;">理多不一定对，好书不一定贵。走进别人的世界，探寻自己的宇宙。去“博海”购物，也能省钱！
                                </div>
                                <div class="tp-caption NotGeneric-Button rev-btn  rs-parallaxlevel-0" id="slide-layer-8" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-30','20','40','30']" data-fontsize="['14','14','14','12']" data-lineheight="['24','24','24','24']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:100;e:Power1.easeInOut;" data-style_hover="c:rgb(255, 255, 255);bg:rgba(182, 121, 95);" data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" data-start="2000" data-splitin="none" data-splitout="none" data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]' data-responsive_offset="on" data-responsive="off" style="z-index: 10; padding:8px 38px; letter-spacing:0.56px; color: #f4f4f4; border-color: #b6795f; font-family: 'Montserrat', sans-serif; text-transform:uppercase; background-color:transparent; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">开启旅程
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- END REVOLUTION SLIDER -->
                </div>
                <!-- END OF SLIDER WRAPPER -->
                <div class="goto-next"><a href="#category-section"><i class="icon icon-Mouse bounce"></i></a></div>
            </div>
            <!-- Slider Section 1 /- -->
            <!-- Product Section -->
            <div id="product-section" class="product-section container-fluid no-padding">
                <!-- Container -->
                <div class="container">
                    <div class="row">
                        <!-- Section Header -->
                        <div class="section-header">
                            <h3>我们的图书</h3>
                            <p>我们的愿望是成为所有图书爱好者的朋友</p>
                            <img src="image/section-seprator.png" alt="section-seprator" />
                        </div>
                        <!-- Section Header data-filter=".class" /- -->
                        <ul id="filters" class="products-categories no-left-padding">
                       		<li><a data-filter="*" class="active" href="#">所有图书</a></li>
                      		  <s:iterator value="#session.categories" var="xx">
                        	    <li><a data-filter=".<s:property value="#xx.cid"/>" href="#"><s:property value="#xx.cname" /></a></li>
                      	     </s:iterator>
                        </ul>
                        <!-- Products -->
                        <ul id="products" class="products">
                            <!-- Product -->
                            <s:iterator value="#session.products" var="x">
                            <li class="product <s:property value="#x.category.cid" />">
                                <a target="_blank" href="Product_listOneProductByPid?pid=<s:property value="#x.pid"/>">
                                    <img style="width: 270px;height: 300px;" src="<s:property value="#x.image"/>" alt="Product" />
                                    <h5><s:property value="#x.pname"/></h5>
                                    <span class="price"><s:property value="#x.price" /></span>
                                </a>
                                <a id="addToCar" style="cursor: pointer;" class="addto-cart" title="添加到购物车" pid="<s:property value="#x.pid"/>">添加到购物车</a>
                            </li>
                            </s:iterator>
                            <!-- Product/- -->
                        </ul>
                        <!-- Products /- -->
                    </div>
                </div>
                <!-- Container /- -->
            </div>
            <!-- Product Section /- -->
        </main>
        <!-- Footer Main -->
        <footer id="footer-main" class="footer-main container-fluid">
            <!-- Container -->
            <div class="container">
                <div class="row">
                    <!-- Widget About -->
                    <aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_about">
                        <a href="index.jsp" title="Max Shop">博海 <span>书城</span></a>
                        <div class="info">
                            <p><i class="icon icon-Pointer"></i>实体店位于风景秀丽的辽宁省辽阳市千山区</p>
                            <p><i class="icon icon-Phone2"></i><a href="tel:(11)1234567890" title="电话" class="phone">(11) 123 456 7890</a></p>
                            <p><i class="icon icon-Imbox"></i><a href="mailto:info@maxshop.com" title="info@maxshop.com">shop@bohai.com</a></p>
                        </div>
                    </aside>
                    <!-- Widget About /- -->
                    <!-- Widget Links -->
                    <aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_links">
                        <h3 class="widget-title">友情链接</h3>
                        <ul>
                            <li><a href="http://jquery.com/" target="_blank">Jquery</a></li>
                            <li><a href="http://maven.apache.org/index.html" target="_blank">Maven</a></li>
                            <li><a href="http://projects.spring.io/spring-boot/" target="_blank">Spring Boot</a></li>
                            <li><a href="https://angularjs.org/" target="_blank">AngularJS</a></li>
                            <li><a href="http://www.bootcss.com/" target="_blank">Bootstrap</a></li>
                            <li><a href="http://www.gulpjs.com.cn/" target="_blank">Gulp</a></li>
                        </ul>
                    </aside>
                    <!-- Widget Links /- -->
                    <!-- Widget Account -->
                    <aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_links widget_account">
                        <h3 class="widget-title">我的账户</h3>
                        <ul>
                        	<s:if test="#session.user != null">
                            <li><a href="Order_listAllOrderByUid" target="_blank">我的订单详情</a></li>
                            <li><a href="cart.jsp" target="_blank">我的购物车</a></li>
                            <li><a href="list_info.jsp" target="_blank">我的个人信息</a></li>
                            <li><a href="update_info_input.jsp" target="_blank">编辑我的个人信息</a></li>
                            <li><a href="change_password_input.jsp" target="_blank">修改登录密码</a></li>
                            </s:if>
                        </ul>
                    </aside>
                    <!-- Widget Account /- -->
                    <!-- Widget Newsletter -->
                    <aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_newsletter">
                        <h3 class="widget-title">联系网站制作人</h3>
                        <div class="input-group">
                            <input class="form-control" placeholder="275050943@qq.com" type="text">
                            <span class="input-group-btn">
								<a href="index.jsp#top" class="btn btn-default"><i class="fa fa-paper-plane-o"></i></a>
							</span>
                        </div>
                        <h5>希望从您的建议中获得灵感</h5>
                        <h3 class="widget-title widget-title-1">关注我们</h3>
                        <ul class="social">
                            <li><i class="fa fa-facebook"></i></li>
                            <li><i class="fa fa-twitter"></i></li>
                            <li><i class="fa fa-linkedin"></i></li>
                            <li><i class="fa fa-tumblr"></i></li>
                            <li><i class="fa fa-vimeo"></i></li>
                        </ul>
                    </aside>
                    <!-- Widget Newsletter /- -->
                </div>
                <div class="copyright-section">
                    <div class="coyright-content">
                        <p>Copyright &copy; 2017.博海书城版权所有.</p>
                    </div>
                </div>
            </div>
            <!-- Container /- -->
        </footer>
        <!-- Footer Main /- -->
    </div>
    <!-- JQuery v1.12.4 -->
    <script src="js/jquery.min.js"></script>

    <!-- Library - Js -->
    <script src="libraries/lib.js"></script>

    <script src="libraries/jquery.countdown.min.js"></script>

    <!-- RS5.0 Core JS Files -->
    <script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
    <script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="js/layer/layer.js"></script>

    <!-- Library - Theme JS -->
    <script src="js/functions.js"></script>
    
</body>

</html>
