package com.fenbi.blog.service.impl;

import java.util.List;

import com.fenbi.blog.bean.Blog;
import com.fenbi.blog.dao.BlogDao;
import com.fenbi.blog.dao.impl.BlogDaoImpl;
import com.fenbi.blog.service.BlogService;

public class BlogServiceImpl implements BlogService {
	
	BlogDao bd = new BlogDaoImpl();
	
	@Override
	public int saveBlog(Blog blog) {
		
		return bd.saveBlog(blog);
	}

	@Override
	public List<Blog> getAllBlog() {
		
		return bd.getAllBlog();
	}

	@Override
	public List<Blog> getBlogByBlogtype(String blogtype) {
		
		return bd.getBlogByBlogtype(blogtype);
	}

	@Override
	public List<Blog> getBlogByUserid(int userid) {
		
		return bd.getBlogByUserid(userid);
	}

	@Override
	public int updateBlog(Blog blog) {
		
		return bd.updateBlog(blog);
	}

	@Override
	public int delBlog(String blogid) {
		
		return bd.delBlog(blogid);
	}

	@Override
	public List<Blog> getBlogByblogtitle(String title) {
		// TODO Auto-generated method stub
		return bd.getBlogByblogtitle(title);
	}

	@Override
	public List<Blog> getBlogBylikeNum() {
		// TODO Auto-generated method stub
		return bd.getBlogBylikeNum();
	}

	@Override
	public Blog getBlogByblogid(String blogid) {
		// TODO Auto-generated method stub
		return bd.getBlogByblogid(blogid);
	}

	@Override
	public int addCommentNum(String blogid) {
		// TODO Auto-generated method stub
		return bd.addCommentNum(blogid);
	}

	@Override
	public int delCommentNum(String blogid) {
		// TODO Auto-generated method stub
		return bd.delCommentNum(blogid);
	}

	@Override
	public int addLikeNum(String blogid) {
		// TODO Auto-generated method stub
		return bd.addLikeNum(blogid);
	}

	@Override
	public List<Blog> getBlogByUsertype(String usertype) {
		// TODO Auto-generated method stub
		return bd.getBlogByUsertype(usertype);
	}

	@Override
	public int updateBogusertype(String usertype, String blogid) {
		// TODO Auto-generated method stub
		return bd.updateBogusertype(usertype, blogid);
	}

}
