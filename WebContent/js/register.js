$(document).ready(function(){
	"use strict";
	var confirm=$("#login>.login>form>.login_con>.loginin");
	var back=$("#login>.login>form>.login_con>.reg");
	
	$("#email").blur(function() {
		var value = $(this).val();
		if (value!=''&!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(value)) {
			layer.tips("邮箱格式错误~", $("#email"), {
				tips: [1, '#78BA32']
			});
		}
	});
	
	$("#zipcode").blur(function() {
		var value = $(this).val();
		if (value!=''&!/^\d{6}$/
				.test(value)) {
			layer.tips("格式错误，请输入6位纯数字~", $("#zipcode"), {
				tips: [1, '#78BA32']
			});
		}
	});
	
	$("#phone").blur(function() {
		var value = $(this).val();
		if (value!=''&!/^\d{11}$/
				.test(value)) {
			layer.tips("格式错误，请输入11位纯数字~", $("#phone"), {
				tips: [1, '#78BA32']
			});
		}
	});
	
	$("#password").blur(function() {
		var value = $(this).val();
		if (value!=''&!/^\w{6,20}$/
				.test(value)) {
			layer.tips("密码长度不够~",$("#password"), {
				tips: [1, '#78BA32']
			});
		}
	});
	
	back.click(function(){
		window.history.go(-1);
	});
	
	confirm.click(function(){
		$("#reg").submit();
	});
	
});