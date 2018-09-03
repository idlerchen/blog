$(function(){
			//点击分类栏目
			$('.blogtype a').click(function(){
				$('#isblogtype').val("0");	
				var isa = $('#isblogtype').val();
				$('#contentShow').load('blogtype.action?blogtype=' + $(this).attr('blogtype'));
			});
		});