
$("#changeMyPassword").click(function(){
	
	$("#password_input").css("visibility","visible");
	
	$("#savePassword").css("visibility","visible");
	
	$("#cancelPassword").css("visibility","visible");
	
});


$("#changeMyFile").click(function(){
	
	$("#myFile_input").css("visibility","visible");
	
	$("#saveFile").css("visibility","visible");
	
	$("#cancelFile").css("visibility","visible");
});

$("#cancelPassword").click(function(){
	
	$("#password_input").css("visibility","hidden");
	
	$("#savePassword").css("visibility","hidden");
	
	$("#cancelPassword").css("visibility","hidden");
	
});

$("#cancelFile").click(function(){
	
	$("#myFile_input").css("visibility","hidden");
	
	$("#saveFile").css("visibility","hidden");
	
	$("#cancelFile").css("visibility","hidden");
	
});

$("#savePassword").click(function(){
	
	var username = $("#myUsername").html();
	
	var password = $("#password_input").val();
	
	if(password == ""){
		alert("密码不能为空X");
		return false;	
	}
	
	// 密码匹配正则（不少于6位）
	var reg = /^\d{6}$/g;
	
	if(!reg.test(password)){
		alert("密码不能少于6位");
		return false;
	}
	
	// 提交数据
	$.post("UserServlet", 
			{"method":"updatePassword", "username":username, "password":password}, 
			function(response){
				if(response == 1){ // 成功
					alert("修改成功");
					alert($("#myLikes").html());
					window.location.reload();
				}else{
					alert("修改失败");
				}
			}, 
			"text"
	);
});

// 点击保存个人简介按钮时
$("#saveFile").click(function(){
	
	var username = $("#myUsername").html();
	var likes = $("#myFile_input").val();
	
	// 提交数据
	$.post("UserServlet", 
			{"method":"updateLikes", "username":username, "likes":likes}, 
			function(response){
				if(response == 1){ // 成功
					alert("修改成功");
					window.location.reload();
				}else{
					alert("修改失败");
				}
			}, 
			"text"
	);
});



