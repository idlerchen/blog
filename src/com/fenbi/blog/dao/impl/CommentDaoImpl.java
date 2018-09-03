package com.fenbi.blog.dao.impl;

import java.util.List;

import com.fenbi.blog.bean.Comment;
import com.fenbi.blog.dao.BaseDao;
import com.fenbi.blog.dao.CommentDao;

public class CommentDaoImpl extends BaseDao<Comment> implements CommentDao {

	@Override
	public List<Comment> getCommentByBlogid(String blogid) {
		String sql = "SELECT comment.id id,comment.userid userid,blogid,comment.content content,comment.create_time createTime,user.username username,blog.title blogTitle " + 
				"FROM COMMENT,USER,blog " + 
				"WHERE comment.userid = user.id AND comment.blogid = blog.id " + 
				"AND blogid = ?";
		return this.getBeanList(sql, blogid);
	}

	@Override
	public int delComment(String commentId) {
		String sql = "delete from comment where id=?";
		return this.update(sql, commentId);
	}

	@Override
	public int saveComment(Comment comment) {
		String sql = "INSERT INTO COMMENT(userid,blogid,content) VALUES(?,?,?)";
		return this.update(sql, comment.getUserid(),comment.getBlogid(),comment.getContent());
	}

}
