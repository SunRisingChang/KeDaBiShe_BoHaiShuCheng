<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="zh-CN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册</title>
<link rel="stylesheet" href="css/register.css">
<script type="text/javascript" src="js/jquery-2.1.3.js"></script>
<script src="js/layer/layer.js"></script>
</head>
<body>
	<div id="login">
		<h1>博海书城</h1>
		<div class="login">
			<div class="login_head">
				<h1>欢迎注册</h1>
				<span>客户</span>
			</div>
			<form id="reg" method="post" action="User_register">
				<div class="login_con">
					<input required name="user.username" type="text"
						class="form-control" id="username" placeholder="用户名"> <input
						required name="user.password" type="password" class="form-control"
						id="password" placeholder="密码"> <input
						name="user.realname" type="text" class="form-control"
						id="realname" placeholder="真实姓名"> <input required
						name="user.email" type="email" class="form-control" id="email"
						placeholder="Email"> <input required name="user.phone"
						type="text" class="form-control" id="phone" placeholder="电话">
					<input name="user.address" type="text" class="form-control"
						id="address" placeholder="邮寄地址"> <input
						name="user.zipcode" type="text" class="form-control" id="zipcode"
						placeholder="邮编">
					<p class="loginin">提交</p>
					<p class="reg">返回</p>
				</div>
		</div>
		</form>
	</div>
	<script src="js/register.js"></script>
</body>
</html>