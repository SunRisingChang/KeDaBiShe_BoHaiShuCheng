<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="main.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
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
            img{
                width: 20px;
                height: 20px;
            }
        }
    </style>
<sx:head/>
</head>
<body>
	<div id="page-main" style="backgroud:#104d74;">
			<form action="Admin_saveProduct" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label style="line-height: 34px;" for="password" class="col-sm-1 col-md-offset-5 control-label">&nbsp;商&nbsp;品&nbsp;名&nbsp;：</label>
				<div class="col-sm-3">
					<input required name="product.pname" type="text" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label style="line-height: 34px;" for="password" class="col-sm-1 col-md-offset-5 control-label">作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者&nbsp;：</label>
				<div class="col-sm-3">
					<input required name="product.author" type="text" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label style="line-height: 34px;" for="password" class="col-sm-1 col-md-offset-5 control-label">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格&nbsp;：</label>
				<div class="col-sm-3">
					<input required min="1" name="product.price" type="number" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label style="line-height: 34px;" for="password" class="col-sm-1 col-md-offset-5 control-label">出版日期：</label>
				<div class="col-sm-3">
					<sx:datetimepicker style="height: 34px;text-indent: 4px;" name="product.time" displayFormat="yyyy-MM-dd"/>
				</div>
			</div>
			<div class="form-group row">
				<label style="line-height: 34px;" for="password" class="col-sm-1 col-md-offset-5 control-label">商品图片：</label>
				<div class="col-sm-3">
					<input class="form-control" name="upload" type="file">
				</div>
			</div>
			<div class="form-group row">
				<label style="line-height: 34px;" for="password" class="col-sm-1 col-md-offset-5 control-label">所属分类：</label>
				<div class="col-sm-3">
					<select name="category.cid" class="form-control">
						<s:iterator value="#session.categories" var="x">
						<option value="<s:property value="#x.cid"/>"><s:property value="#x.cname"/></option>
						</s:iterator>
					</select>
				</div>
			</div>
			<div class="col-sm-4 col-md-offset-5">
			<button type="submit" class="btn btn-success btn-block btn-lg">提交</button>
			</div>
		</form>
	</div>
</body>
</html>
