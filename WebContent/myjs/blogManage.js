$(function(){
	//页面加载，ajax加载博文的修改分类下拉框
	$.post("UsertypeServlet",
			{"method":"getUsertype"},
			function(response){
				$.each(response.usertypes,function(i,usertype){
					$(".userType").append(
							"<option value='"+usertype.id+"'>" + usertype.name
							+ "</option>");
				});
			},
			'json');
	
	$(".userType").change(function(){
		var blogid = $(this).attr("data-id");
		var usertypeid = $(this).val();
		$.post("BlogServlet",
				{"method":"updateUsertypeByblogid","blogid":blogid,"usertypeid":usertypeid},
				function(response){
					if(response.code==1){//1修改成功，刷新显示
						location.reload();
					}else{
						alert('系统繁忙');
					}
				},
				'json');
	});
	
	$(".atc_more").hover(function(){
		$(".atc_setlayer").css("display","");

	},
	function(){
		$(".atc_setlayer").css("display","none");
		
	});
	//点击管理，显示分类
	$("#manage").click(function(){
		$("#_6831535773546872_panel").css("display","inline-block");
	})
	//点×，隐藏分类
	$("#_6831535773546872_btnClose").click(function(){
		$("#_6831535773546872_panel").css("display","none");
	})
	//插入分类
	$("#categoryCreate").click(function(){
		var newType = $("#categoryName").val();
		$.post("/blog/UsertypeServlet",
				{"method":"saveUsertype","name":newType},
				function(response){
					if(response.code==1){//记录插入成功
						$("#datalist").append(
								 "<li style='height: 30px;'>" +
								 	"<span class='htit' style='color:#000000' >"+newType+"</span>" +
								 	"<input class='htit' id='${usertype.id }' value='"+newType+"' style='display:none' />" +
									 "<span  class='control'>"+
										 "<span class='update'>[<cite>编辑</cite>]</span>"+
										 "<span class='delete'>[<cite>删除</cite>]</span>"+
									 "</span>"+
									 "<span class='control' style='display:none'>"+
										 "<span class='confirm'>[<cite>确定</cite></span>"+
										 "<span class='cancel'>[<cite>取消</cite>]</span>"+
									 "</span>"+
								"</li>");
					}else{//插入失败
						alert('系统繁忙');
					}
				},
				'json');
	});
	
	//设置编辑，事件
	 $("body").on("click", ".update", function(t) {
		//文本消失，显示输入框
		$(t.currentTarget).parent().prev().prev().css("display","none");
		$(t.currentTarget).parent().prev().css("display","inline-block");
		
		//编辑-删除按钮消失，确认取消按钮显示
		$(t.currentTarget).parent().css("display","none");
		$(t.currentTarget).parent().next().css("display","inline-block");
		
	});
	
	//有请求，点击删除，事件
	 $("body").on("click", ".delete", function(t) {
		var usertypeid = $(t.currentTarget).attr("data-id");
		$.post("UsertypeServlet",
				{"method":"delUsertype","usertypeid":usertypeid},
				function(response){
					if(response.code==1){//删除成功
						$(t.currentTarget).closest('.li').remove();
					}else{
						alert('系统繁忙');
					}
				},
				'json');
	});
	
	//有请求，点击确定，事件 ajax请求将该id的分类名字修改，文本内的也修改
	 $("body").on("click", ".confirm", function(t) {
		var usertypeid = $(t.currentTarget).attr("data-id");
		var updatename = $(t.currentTarget).parent().prev().prev().val();
		$.post("UsertypeServlet",
				{"method":"updateUsertype","usertypeid":usertypeid,"updatename":updatename},
				function(response){
					if(response.code==1){//修改成功
						$(t.currentTarget).parent().prev().prev().prev().text(updatename);
					}else{
						alert('系统繁忙');
					}
				},
				'json');
		//确定之后，与消失一样隐藏-显示元素
		//文本显示，隐藏输入框
		$(t.currentTarget).parent().prev().prev().prev().css("display","inline-block");
		$(t.currentTarget).parent().prev().prev().css("display","none");
		
		//编辑-删除按钮显示，确认取消按钮隐藏
		$(t.currentTarget).parent().css("display","none");
		$(t.currentTarget).parent().prev().css("display","inline-block");
	});
	
	//点击取消，事件 与编辑一样，显示隐藏东西相反
	 $("body").on("click", ".cancel", function(t) {
		//文本显示，隐藏输入框
		$(t.currentTarget).parent().prev().prev().prev().css("display","inline-block");
		$(t.currentTarget).parent().prev().prev().css("display","none");
		
		//编辑-删除按钮显示，确认取消按钮隐藏
		$(t.currentTarget).parent().css("display","none");
		$(t.currentTarget).parent().prev().css("display","inline-block");
		
	});
	
	//保存按钮，退出
	$("#categorySave").click(function(){
		$("#_6831535773546872_panel").css("display","none");
	})
	
	
	
	
	
	
});
