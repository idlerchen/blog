package com.fenbi.blog.service;

import java.util.List;

import com.fenbi.blog.bean.Blog;

public interface BlogService {
	
	int saveBlog(Blog blog);
	
	List<Blog> getAllBlog();
	
	List<Blog> getBlogByBlogtype(String blogtype);
	
	//根据用户自定义类型获取博文
	List<Blog> getBlogByUsertype(String usertype);
	
	List<Blog> getBlogByUserid(int userid);
	
	//修改-编辑博文
	int updateBlog(Blog	blog);
	
	//删除博文
	int delBlog(String blogid);
	
	//搜索-根据博客标题查找博客
	List<Blog> getBlogByblogtitle(String title);
	
	//获取前5个热度最高博文-like_num倒序，取前五个
	List<Blog> getBlogBylikeNum();
	
	//获取某个博文的详情
	Blog getBlogByblogid(String blogid);
	
	//修改评论数量 +1
	int addCommentNum(String blogid);
	
	//修改评论数量 -1
	int delCommentNum(String blogid);
	
	//修改喜欢数量 +1
	int addLikeNum(String blogid);
	
	//修改博文所属的自定义分类
		int updateBogusertype(String usertype,String blogid);

}
