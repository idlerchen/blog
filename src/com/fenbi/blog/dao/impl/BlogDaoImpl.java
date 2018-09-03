package com.fenbi.blog.dao.impl;

import java.util.List;

import com.fenbi.blog.bean.Blog;
import com.fenbi.blog.dao.BaseDao;
import com.fenbi.blog.dao.BlogDao;

public class BlogDaoImpl extends BaseDao<Blog> implements BlogDao {

	
	@Override
	public int saveBlog(Blog blog) {
		String sql="INSERT INTO blog(userid,title,content,define_type,blog_type,comment_num,like_num) VALUES(?,?,?,?,?,?,?)";
		return this.update(sql,blog.getUserid(),blog.getTitle(),blog.getContent(),blog.getDefineType(),blog.getBlogType(),blog.getCommentNum(),blog.getLikeNum());
	}
	
//	@Override
//	public int saveBlog(Blog blog) {
//		String sql="INSERT INTO blog (userid,title,content,define_type,blog_type) VALUES(?,?,?,?,?)";
//		return this.update(sql,blog.getUserid(),blog.getTitle(),blog.getContent(),blog.getDefineType(),blog.getBlogType());
//	}

	@Override
	public List<Blog> getAllBlog() {
		String sql = "SELECT blog.id id,userid,title,content,define_type defineType,blog_type blogType,comment_num commentNum,like_num likeNum,blog.create_time createTime,user.username username " + 
				"FROM blog,USER " + 
				"WHERE blog.userid = user.id ";
		return this.getBeanList(sql);
	}

	@Override
	public List<Blog> getBlogByBlogtype(String blogtype) {
		String sql = "SELECT blog.id id,userid,title,content,define_type defineType,blog_type blogType,comment_num commentNum,like_num likeNum,blog.create_time createTime,user.username username " + 
				"FROM blog,USER " + 
				"WHERE blog.userid = user.id AND blog_type = ?" + 
				"ORDER BY like_num desc";
		return this.getBeanList(sql, blogtype);
	}

	@Override
	public List<Blog> getBlogByUserid(int userid) {
		String sql = "SELECT blog.id id,userid,title,content,define_type defineType,blog_type blogType,comment_num commentNum,like_num likeNum,blog.create_time createTime,user.username usrname " + 
				" FROM blog,user where blog.userid = user.id and userid=?";
		return this.getBeanList(sql, userid);
	}

	@Override
	public int updateBlog(Blog blog) {
		String sql = "UPDATE blog SET title = ?,content = ?,define_type = ?,blog_type = ? WHERE id = ?";
		return this.update(sql, blog.getTitle(),blog.getContent(),blog.getDefineType(),blog.getBlogType(),blog.getId());
	}

	@Override
	public int delBlog(String blogid) {
		String sql = "DELETE FROM blog WHERE id = ?";
		return this.update(sql, blogid);
	}

	@Override
	public List<Blog> getBlogByblogtitle(String title) {
		String sql = "SELECT blog.id id,userid,title,content,define_type defineType,blog_type blogType,comment_num commentNum,like_num likeNum,blog.create_time createTime,user.username username " + 
				"FROM blog,user  WHERE blog.userid = user.id and title LIKE ?";
		return this.getBeanList(sql, "%"+title+"%");
	}

	@Override
	public List<Blog> getBlogBylikeNum() {
		String sql = "SELECT blog.id id,userid,title,content,define_type defineType,blog_type blogType,comment_num commentNum,like_num likeNum,blog.create_time createTime,user.username username " + 
				"FROM blog,user  where blog.userid = user.id ORDER BY like_num DESC LIMIT 5";
		return this.getBeanList(sql);
	}

	@Override
	public Blog getBlogByblogid(String blogid) {
		String sql = "SELECT blog.id id,userid,title,content,define_type defineType,blog_type blogType,comment_num commentNum,like_num likeNum,blog.create_time createTime,user.username username " + 
				"FROM blog,user WHERE blog.userid = user.id and blog.id = ?";
		return this.getBean(sql, blogid);
	}

	@Override
	public int addCommentNum(String blogid) {
		String sql = "UPDATE blog SET comment_num = comment_num+1 WHERE id = ?";
		return this.update(sql, blogid);
	}

	@Override
	public int delCommentNum(String blogid) {
		String sql = "UPDATE blog SET comment_num = comment_num-1 WHERE id = ?";
		return this.update(sql, blogid);
	}

	@Override
	public int addLikeNum(String blogid) {
		String sql = "update blog set like_num = like_num+1 where id = ?";
		return this.update(sql, blogid);
	}

	@Override
	public List<Blog> getBlogByUsertype(String usertype) {
		String sql = "SELECT blog.id id,userid,title,content,define_type defineType,blog_type blogType,comment_num commentNum,like_num likeNum,blog.create_time createTime,user.username username " + 
				"FROM blog,USER " + 
				"WHERE blog.userid = user.id AND define_type = ?" + 
				"ORDER BY like_num desc";
		return this.getBeanList(sql, usertype);
	}

	@Override
	public int updateBogusertype(String usertype, String blogid) {
		String sql="update blog set define_type = ? where id = ?";
		return this.update(sql,usertype,blogid);
	}
	

}
