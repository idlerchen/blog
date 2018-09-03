package com.fenbi.blog.dao;

import java.util.List;

import com.fenbi.blog.bean.Comment;

public interface CommentDao {
	
	//获取某个博文的评论
	List<Comment> getCommentByBlogid(String blogid);
	
	//根据评论id删除评论
	int delComment(String commentId);
	
	int saveComment(Comment comment);

}
