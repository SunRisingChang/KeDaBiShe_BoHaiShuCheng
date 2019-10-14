<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="main.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
        @media (min-width: 768px){
       		 #page-main{
                text-align: center;
            }
            img{
                width: 185px;
                height: 250px;
            }
        }
    </style>
</head>
<body>
	<div id="page-main" style="backgroud:#104d74;">
		<div class="row col-md-offset-2 col-md-10">
			<s:iterator value="#session.products" var="x">
				<div class="col-md-3" style="height:390px">
					<a href="Admin_listOneProductByPid?pid=<s:property value="#x.pid"/>"><img src="../<s:property value="#x.image"/>">
					</a>
					<h4>
						<a href="Admin_listOneProductByPid?pid=<s:property value="#x.pid"/>"><s:property value="#x.pname" />
						</a>&nbsp;&nbsp;<small>￥<s:property value="#x.price" />
						</small>
					</h4>
					<a href="Admin_updateProductInput?pid=<s:property value="#x.pid"/>" class="text-danger">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="Admin_deleteProduct?pid=<s:property value="#x.pid"/>" class="text-danger">删除</a>
				</div>
			</s:iterator>
		</div><hr/>
	</div>
</body>
</html>
