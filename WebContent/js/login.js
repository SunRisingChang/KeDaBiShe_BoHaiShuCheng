$(document).ready(function() {
	"use strict";
	var UandP = $("#login>.login>form>.login_con>input");
	var confirm = $("#login>.login>form>.login_con>.loginin");
	var reg = $("#login>.login>form>.login_con>.reg");
	var username = UandP.eq(0);
	var password = UandP.eq(1);

	confirm.on("click", function() {
		if (username.val() === "") {
			layer.tips("用户名不能为空！", username, {
				tips : [ 1, '#78BA32' ]
			});
		} else {
			if (username.val().length > 15) {
				layer.tips("不能超过15位！", username, {
					tips : [ 1, '#78BA32' ]
				});
			} else {
				if (password.val() === "") {
					layer.tips("密码不能为空！", password, {
						tips : [ 1, '#78BA32' ]
					});
				} else {
					if (password.val().length > 15) {
						layer.tips("不能超过15位！", password, {
							tips : [ 1, '#78BA32' ]
						});
					} else {	
							$("#login_form").submit();
					}
				}
			}
		}
	});

	reg.click(function() {
		window.history.go(-1);
	});

});