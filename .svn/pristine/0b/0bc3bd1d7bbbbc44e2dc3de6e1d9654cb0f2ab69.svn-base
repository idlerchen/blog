$(function() {

	$("#register_btn").attr("disabled", "disabled");

});

// 先初始化两个判断语句
var username_flag = null;
var telephone_flag = null;
var password_flag = null;

$("#user_username").change(function() {
	
	// 得到输入框里的值
	var username = $(this).val();
	
	$("#error_msg").html("");
	
	if(username == ""){
		$("#error_msg").html("用户名不能为空X");
		$("#register_btn").attr("disabled", "disabled");
		return false;
	}

	// 通过json发送并校验
	$.get("UserServlet", 
			{"method" : "checkUsername","username" : username}, 
				function(response) {
					if (response == 1) {
						
						// 赋值flag为true
						username_flag = true;
						
						$("#error_msg").html("该用户名可以使用√");
						
						// 进行判断是否都符合，如符合则直接可以释放注册按钮
						if (username_flag && telephone_flag && password_flag) {
							$("#register_btn").removeAttr("disabled");
						}
					} else {
						
						// 赋值flag为false
						username_flag = false;
						$("#register_btn").attr("disabled", "disabled");
						$("#error_msg").html("该用户名已被注册X");
					}
				}, 
			"text"
	);
});

$("#user_telephone").change(function() {

	// 得到输入框里的值
	var telephone = $(this).val();
	
	$("#error_msg").html("");
	
	if(telephone == ""){
		$("#error_msg").html("手机号不能为空X");
		$("#register_btn").attr("disabled", "disabled");
		return false;
	}
	
	// 手机号匹配正则
	var reg = /^1[3456789]\d{9}$/g;
	
	if(!reg.test(telephone)){
		$("#error_msg").html("请输入正确的手机号X");
		$("#register_btn").attr("disabled", "disabled");
		return false;
	}

	// 通过json发送并校验
	$.get("UserServlet", {
		"method" : "checkTelephone",
		"telephone" : telephone
	}, function(response) {
		if (response == 1) {
			
			// 赋值flag为true
			telephone_flag = true;
			
			// 进行判断是否都符合，如符合则直接可以释放注册按钮
			if (username_flag && telephone_flag && password_flag) {
				//alert("11");
				$("#register_btn").removeAttr("disabled");
			}
			
			$("#error_msg").html("该手机号可以使用√");
		} else {
			// 赋值flag为false
			telephone_flag = false;
			$("#register_btn").attr("disabled", "disabled");
			$("#error_msg").html("该手机号已被注册X");
		}
	}, "text");
});


// 判断密码不能为空
$("#user_password").change(function(){
	
	$("#error_msg").html("");
	
	var password = $(this).val();
	
	if(password == ""){
		$("#error_msg").html("密码不能为空X");
		$("#register_btn").attr("disabled", "disabled");
		return false;
	}
	
	// 密码匹配正则（不少于6位）
	var reg = /^\d{6}$/g;
	
	if(!reg.test(password)){
		$("#error_msg").html("密码不能少于6位X");
		$("#register_btn").attr("disabled", "disabled");
		return false;
	}
	
	if(password){
		password_flag = true;
		// 进行判断是否都符合，如符合则直接可以释放注册按钮
		if (username_flag && telephone_flag && password_flag) {
			$("#register_btn").removeAttr("disabled");
		}
	}else{
		// 赋值flag为false
		password_flag = false;
		$("#register_btn").attr("disabled", "disabled");
	}
});


