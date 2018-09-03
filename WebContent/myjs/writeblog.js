$(function(){
	 var ue = UE.getEditor('container');
	 //设置编辑器样式 初始化
	  ue.ready(function(){
		  ue.setHeight(350);
		
      });	 
	 
	 var txt;
	$("#articleSaveBtn").click(function(){
	
        txt = ue.getPlainTxt();
        	
        var defineType=$("#mySort").val();
		var title=$("#articleTitle").val();
		var blogType=$("#componentSelect").val();
		
		window.location="/blog/BlogServlet?method=saveBlog&title="+title+"&content="+txt+"&blogType="+blogType+"&defineType="+defineType;
		
		
	});
	//获取博文分类的集合
	getBlogTypeList();
	function getBlogTypeList(){
		$.getJSON("/blog/BlogServlet",
				 {"method":"getBlogType"},
				 function(json){
					 
					 var blogTypes=json.blogtype;
					 $.each(blogTypes,function(i,blogType){
						 var id=blogType.id;
						 var name=blogType.name;
						 $("#componentSelect").append("<option value='"+id+"'>"+name+"</option>");
					 });
		});		
	};
	//获取用户博文分类的集合
	getUserBlogTypeList();
	
	
	
	
});
function getUserBlogTypeList(){
	$.getJSON("/blog/UsertypeServlet",
			 {"method":"getUsertype"},
			 function(json){
				 
				 var usertypes=json.usertypes;
				 $.each(usertypes,function(i,usertype){
					 var id=usertype.id;
					 var name=usertype.name;
					 $("#mySort").append("<option value='"+id+"'>"+name+"</option>");
				 });
	});		
}
function createSort(){
	
	var defineType=prompt("请输入一个分类:");
	$.getJSON("/blog/UsertypeServlet",
			 {"method":"saveUsertype",
				"name":defineType
			 },
			 function(json){
				 getUserBlogTypeList();	 
			
	});		
	

}


