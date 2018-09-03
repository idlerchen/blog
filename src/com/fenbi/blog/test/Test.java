package com.fenbi.blog.test;

import java.util.ArrayList;
import java.util.List;

import com.fenbi.blog.bean.Blog;
import com.fenbi.blog.bean.Comment;
import com.fenbi.blog.service.impl.BlogServiceImpl;
import com.fenbi.blog.service.impl.CommentServiceImpl;

public class Test {
	
	public static void main(String[] args) {
		
		// 新建一个空的Comment集合
		ArrayList<Comment> commentList = new ArrayList<>();
		List<Blog> blogs = new BlogServiceImpl().getBlogByUserid(3);
		
		for (Blog b : blogs) {
			
			// 得到每一个blogs的id和title
			int blogId = b.getId();
			
			// 根据id查询评论集合
			List<Comment> comments = new CommentServiceImpl().getCommentByBlogid("" + blogId);
			if(comments.size() != 0) {
				
				// 从commments当中取出一个内容
				Comment comment = comments.get(0);
				System.out.println(comment);
				
			}
		}
		
		
		
	}
}
