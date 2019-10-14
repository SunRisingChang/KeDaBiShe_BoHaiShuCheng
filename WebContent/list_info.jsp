<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
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
		margin: 0px auto;
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
	<div id="page-main" style="backgroud: #104d74;">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<h2 style="text-align: center;">查看个人信息</h2>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<span>&nbsp;用&nbsp;户&nbsp;名&nbsp;：</span> <span class="text-info"><input
					disabled="disabled" style="width: 80%; text-indent: 4px;"
					value="<s:property value="#session.user.username"/>"></span>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<span>真实姓名：</span> <span class="text-info"><input
					disabled="disabled" style="width: 80%; text-indent: 4px;"
					value="<s:property value="#session.user.realname"/>"></span>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</span> <span
					class="text-info"><input disabled="disabled"
					style="width: 80%; text-indent: 4px;"
					value="<s:property value="#session.user.email"/>"></span>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<span>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</span> <span
					class="text-info"><input disabled="disabled"
					style="width: 80%; text-indent: 4px;"
					value="<s:property value="#session.user.phone"/>"></span>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</span> <span
					class="text-info"><input disabled="disabled"
					style="width: 80%; text-indent: 4px;"
					value="<s:property value="#session.user.address"/>"></span>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编：</span> <span
					class="text-info"><input disabled="disabled"
					style="width: 80%; text-indent: 4px;"
					value="<s:property value="#session.user.zipcode"/>"></span>
			</div>
		</div>
		<div class="row" style="margin-top: 20px;">
			<div class="col-sm-4 col-sm-offset-4">
				<a class="btn btn-success btn-block" href="update_info_input.jsp">编辑个人信息</a>
			</div>
		</div>
	</div>
</body>
</html>
