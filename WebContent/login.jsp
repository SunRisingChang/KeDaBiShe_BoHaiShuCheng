<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录</title>
<link rel="stylesheet" href="css/login.css">
<script src="js/jquery-2.1.3.js"></script>
<script src="js/layer/layer.js"></script>
</head>
<body>
	<div id="login">
		<h1>博海书城</h1>
		<div class="login">
			<div class="login_head">
				<h1>请登录</h1>
				<span>客户</span>
			</div>
			<form id="login_form" class="form-horizontal" action="User_login"
				method="post">
				<div class="login_con">
					<input type="text" name="user.username" is="false"
						placeholder="请输入用户名" /> <input type="password"
						name="user.password" placeholder="请输入密码" />
					<p class="loginin">登录</p>
					<p class="reg">返回</p>
				</div>
			</form>
		</div>
	</div>
	<script src="js/login.js"></script>
</body>
</html>