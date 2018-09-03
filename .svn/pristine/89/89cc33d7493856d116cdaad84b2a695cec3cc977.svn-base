$(function(){
	 var ue = UE.getEditor('container');
	 //设置编辑器样式 初始化
	  ue.ready(function(){
		  ue.setHeight(350);
      });

	$.getJSON("/blog/BlogServlet",
			 {"method":"getBlogType"},
			 function(json){
				 var blogTypes=json.blogtype;
				 $.each(blogTypes,function(i,blogType){
					 var id=blogType.id;
					 var name=blogType.name;
					 $("#componentSelect").append("<option value='"+id+"'>"+name+"</option>");
				 });
				 var type=$("#componentSelect").attr("data-blogType");
				    $("#componentSelect>option[value='" + type + "']").attr("selected","selected");	
	});		
		
		
		
		$("#articleChangeBtn").click(function(){
			var txt = ue.getContentTxt();
			var title=$("#articleTitle").val();
			var blogType=$("#componentSelect").val();
			var blogId=$("#blogIdDemo").val();
			window.location="/blog/BlogServlet?method=updateBlog&title="+title+"&content="+txt+"&blogType="+blogType+"&id="+blogId;
		});
		
		
		
});