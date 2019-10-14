<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
<base href="<%=basePath%>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/navigation-menu.css">
<link rel="stylesheet" type="text/css" href="libraries/lib.css">
<script type="text/javascript" src="js/jquery-2.1.3.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<style type="text/css">
@media ( min-width : 768px) {
	#letf-nav {
		width: 230px;
		margin-top: 60px;
		position: absolute;
		height: 800px;
		background-color: #eee;
	}
	#my-search {
		margin-top: 10px;
	}
	#page-main {
		margin-left: 260px;
	}
	#navbar-brand {
		margin-left: 30px;
		font-weight: 350;
		font-size: 25px;
	}
	img {
		width: 240px;
		height: 350px;
	}
}
</style>
</head>
<body>
	<div class="main-container">
		<!-- Header -->
		<header class="header-section container-fluid no-padding">
			<!-- Menu Block -->
			<div class="container-fluid no-padding menu-block">
				<!-- Container -->
				<div class="container">
					<!-- nav -->
					<nav class="navbar navbar-default ow-navigation">
						<div class="navbar-header">
							<button aria-controls="navbar" aria-expanded="false"
								data-target="#navbar" data-toggle="collapse"
								class="navbar-toggle collapsed" type="button">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
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
									<li><a href="login.jsp" title="登录"><i
											class="icon icon-User"></i></a></li>
									<li><a href="register.jsp" title="注册"><i
											class="icon icon-Flag"></i></a></li>
								</s:if>
								<s:else>
									<li><a href="Order_listAllOrderByUid" title="我的订单"><span
											class="glyphicon glyphicon-th"></span></a></li>
									<li><a href="cart.jsp" title="购物车"><i
											class="icon icon-ShoppingCart"></i></a></li>
									<li><a href="User_logout" title="注销"><span
											class="glyphicon glyphicon-off"></span></a></li>
								</s:else>
							</ul>
						</div>
					</nav>
					<!-- nav /- -->
					<!-- Search Box -->
					<div class="search-box">
						<span><i class="icon_close"></i></span>
						<form action="Product_listAllProductByPageAndPname" method="get">
							<input type="text" name="pname" class="form-control"
								placeholder="输入书名并回车..." />
						</form>
					</div>
					<!-- Search Box /- -->
				</div>
				<!-- Container /- -->
			</div>
			<!-- Menu Block /- -->
		</header>
		<!-- Header /- -->
		<div id="page-main" style="backgroud: #104d74; margin-top: 55px;">
			<div class="row">
				<div class="col-md-4">
					<img src="<s:property value="product.image"/>">
				</div>
				<div class="col-md-4">
					<h2>
						<s:property value="product.pname" />
						<small>￥<s:property value="product.price" />
						</small>
					</h2>
					<h4>
						<s:property value="product.author" />
						(作者)
					</h4>
					<h4>
						出版日期：
						<s:property value="product.time" />
					</h4>
					<br />
					<hr />
					<form method="post"
						action="Cart_addCartItem?pid=<s:property value="product.pid"/>">
						<form-group> <label for="cart">购买数量：</label> <input
							required min="1" value="1" name="count" type="number" id="cart"
							class="form-control" /> <br />
						<br />
						</form-group>
						<input type="submit" id="submit"
							class="btn btn-success btn-lg pull-right" value="加入到购物车" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="js/functions.js"></script>
</body>
</html>
