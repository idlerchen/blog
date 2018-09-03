$(function(){
	var clickFlag = 1;

	//点击发送评论，发送ajax请求，插入评论，刷新页面
	$("#sendComment").click(function(){
		var comment = $("#inputComment").val();
		var blogid = $("#blogbegin").attr("data-blog");
		$.post("CommentServlet",
				{"method":"saveComment","blogid":blogid,"content":comment},
				function(response){
					if(response.code == 1){//插入成功，刷新页面显示评论
						location.reload();
					}else if(response.code == 0){//插入失败
						alert('系统繁忙，评论失败');
					}else{//未登陆，跳转登陆
						window.location = "/blog/page/user/login.jsp";
					}
				},
				'json');
	})
	
	$("#like").click(function(){
		if(clickFlag==1){
			clickFlag = 0;
			var blogid = $("#blogbegin").attr("data-blog");
			$.post("BlogServlet",
					{"method":"addLikeNum","blogid":blogid},
					function(response){
						if(response.code == 1){//成功，刷新页面更新喜欢数量
							$(".count").html(response.likeNum);
						}else{//失败，给与提示
							alert('系统繁忙，点赞失败');
						}
					},
					'json');
		}else{
			alert('每5分钟点赞一次');
			setTimeout(function(){
				clickFlag = 1;
			},1000*60*5);
		}
		
	})
})


