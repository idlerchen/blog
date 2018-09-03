package com.fenbi.blog.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.fenbi.blog.bean.Blog;
import com.fenbi.blog.bean.BlogType;
import com.fenbi.blog.bean.Comment;
import com.fenbi.blog.bean.User;
import com.fenbi.blog.bean.UserType;
import com.fenbi.blog.service.BlogService;
import com.fenbi.blog.service.BlogTypeService;
import com.fenbi.blog.service.CommentService;
import com.fenbi.blog.service.UserTypeService;
import com.fenbi.blog.service.impl.BlogServiceImpl;
import com.fenbi.blog.service.impl.BlogTypeServiceImpl;
import com.fenbi.blog.service.impl.CommentServiceImpl;
import com.fenbi.blog.service.impl.UserTypeServiceImpl;
import com.fenbi.blog.utils.WEButils;

public class BlogServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;
	
	BlogService bs = new BlogServiceImpl();
	BlogTypeService bts = new BlogTypeServiceImpl();
	CommentService cs = new CommentServiceImpl();
	UserTypeService uts = new UserTypeServiceImpl();
	//插入博文
	public void saveBlog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Blog blog = WEButils.param2Bean(request, new Blog());
		User user = (User) request.getSession().getAttribute("loginUser");
		if(user!=null) {
			blog.setUserid(user.getId());
		}
		System.out.println(blog);
		int saveBlog = bs.saveBlog(blog);
		
		if(saveBlog > 0) {//插入博文成功
			response.sendRedirect("BlogServlet?method=getBlogtoManage");
		}else {//插入失败
			request.getRequestDispatcher("/page/personal/writeBlog.jsp").forward(request, response);
			
		}
	}
	
	//修改博文
	public void updateBlog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Blog blog = WEButils.param2Bean(request, new Blog());
		int updateBlog = bs.updateBlog(blog);
		if(updateBlog > 0) {//修改成功
			response.sendRedirect(request.getContextPath()+"/BlogServlet?method=getBlogByUserId");
		}else{//修改失败
			request.getRequestDispatcher("UserServlet?method=toPersonalCenter").forward(request, response);
		}
	}
	
	// 删除博文
	public void deleteBlog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String blogid = request.getParameter("blogid");
		
		int delBlog = bs.delBlog(blogid);
		
		if(delBlog > 0 ) {//删除成功
			response.sendRedirect("BlogServlet?method=getBlogtoManage");
			//request.getRequestDispatcher("UserServlet?method=toPersonalCenter").forward(request, response); ly
		}else {
			System.out.println("删除失败");
		}
	}
	//获取所有博文类型
	public void getBlogType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<BlogType> blogtype = bts.getBlogtype();
		
		response.setContentType("application/json;charset=utf-8");

		// 设置map属性集
		HashMap<String, Object> map = new HashMap<>();
			
		map.put("blogtype", blogtype);
		// 将map属性集，转换成json字符串并发送给ajax
		String jsonStr = JSON.toJSONString(map);
		response.getWriter().print(jsonStr);
	}
	
	//获取所有博文
	public void getAllBlog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Blog> allblog = bs.getAllBlog();
		List<BlogType> blogtype = bts.getBlogtype();
		request.setAttribute("allblog",allblog);
		request.setAttribute("blogtype", blogtype);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	//根据博文类型获取博文
	public void getBlogByTypeId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String blogtypeid = request.getParameter("blogtypeid");
		List<Blog> blogs = bs.getBlogByBlogtype(blogtypeid);
		List<BlogType> blogtype = bts.getBlogtype();
		request.setAttribute("allblog", blogs);
		request.setAttribute("blogtype", blogtype);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	
	//获取某用户的所有博文
	public void getBlogByUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = (User) request.getSession().getAttribute("loginUser");
		int userid = user.getId();
		
		List<Blog> blogs = bs.getBlogByUserid(userid);
		List<UserType> usertype = uts.getUsertypeByUserid(userid);
		for(UserType u:usertype) {
			System.out.println(u);
		}
		request.setAttribute("blogs", blogs);
		request.setAttribute("usertypes", usertype);
		request.getRequestDispatcher("/page/personal/blogManage.jsp").forward(request, response);
		//request.getRequestDispatcher("/page/personal/personalCenter.jsp").forward(request, response);ly
	}
	
	//根据博文类型获取博文
	public void getBlogByUserTypeId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usertypeId = request.getParameter("usertypeId");
		List<Blog> blogs = bs.getBlogByUsertype(usertypeId);
		request.setAttribute("blogs", blogs);
		
		User user = (User) request.getSession().getAttribute("loginUser");
		int userid = user.getId();
		List<UserType> usertype = uts.getUsertypeByUserid(userid);
		request.setAttribute("usertypes", usertype);
		request.getRequestDispatcher("/page/personal/blogManage.jsp").forward(request, response);
	}
	
	//获取某用户的所有博文
	public void getBlogtoManage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = (User) request.getSession().getAttribute("loginUser");
		int userid = user.getId();
		
		List<Blog> blogs = bs.getBlogByUserid(userid);
		request.setAttribute("blogs", blogs);
		List<UserType> usertype = uts.getUsertypeByUserid(userid);
		request.setAttribute("usertypes", usertype);
		request.getRequestDispatcher("/page/personal/blogManage.jsp").forward(request, response);
	}
	
	//获取按照title搜索的博文
	public void getBlogByTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String title = new String(request.getParameter("title").getBytes("ISO-8859-1"),"UTF-8");
		String title = request.getParameter("title");
		List<Blog> blogs = bs.getBlogByblogtitle(title);
		List<BlogType> blogtype = bts.getBlogtype();
		request.setAttribute("blogtype", blogtype);
		request.setAttribute("allblog", blogs);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	//获取前5的博文
	public void getBlogByLikeNum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Blog> blogs = bs.getBlogBylikeNum();
		List<BlogType> blogtype = bts.getBlogtype();
		request.setAttribute("allblog", blogs);
		request.setAttribute("blogtype", blogtype);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
	}
	
	//获取某个博文的详情，转去修改页面
		public void getBlogtoUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String blogid = request.getParameter("blogid");
			Blog blog = bs.getBlogByblogid(blogid);
			
			request.setAttribute("blog", blog);
			request.getRequestDispatcher("/page/personal/blogIssue.jsp").forward(request, response);
		}
		
	//获取某个博文的详情，带评论
	public void getBlogByBlogid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String blogid = request.getParameter("blogid");
		Blog blog = bs.getBlogByblogid(blogid);
		List<Comment> comments = cs.getCommentByBlogid(blogid);
		
		List<Blog> blogs = bs.getAllBlog();
		int before=0,behind=0;
		for(Blog b:blogs) {
			if(Integer.valueOf(blogid) == b.getId()) {
				if(blogs.indexOf(b)>0) {
					before = blogs.get(blogs.indexOf(b)-1).getId();
				}
				if(blogs.indexOf(b)<blogs.size()-1) {
					behind = blogs.get(blogs.indexOf(b)+1).getId();
				}
			}
		}
		
		//获取前一篇、后一篇,用户可能删除过，不能用ID-1+1.是不连续的
		Blog blog1 = bs.getBlogByblogid(String.valueOf(before));
		Blog blog2 = bs.getBlogByblogid(String.valueOf(behind));
		
		request.setAttribute("blog", blog);
		request.setAttribute("comments", comments);
		request.setAttribute("blog1", blog1);
		request.setAttribute("blog2", blog2);
		request.getRequestDispatcher("/page/blogDetail.jsp").forward(request, response);
	}
	
	
	//获取用户某个博文的详情，带评论
		public void getMyBlogByBlogid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String blogid = request.getParameter("blogid");
			Blog blog = bs.getBlogByblogid(blogid);
			List<Comment> comments = cs.getCommentByBlogid(blogid);
			User user = (User) request.getSession().getAttribute("loginUser");
			int userid=0;
			if(user!=null) {
				userid = user.getId();
			}
			List<Blog> blogs = bs.getBlogByUserid(userid);
			int before=0,behind=0;
			for(Blog b:blogs) {
				if(Integer.valueOf(blogid) == b.getId()) {
					if(blogs.indexOf(b)>0) {
						before = blogs.get(blogs.indexOf(b)-1).getId();
					}
					if(blogs.indexOf(b)<blogs.size()-1) {
						behind = blogs.get(blogs.indexOf(b)+1).getId();
					}
				}
			}
			
			//获取前一篇、后一篇
			Blog blog1 = bs.getBlogByblogid(String.valueOf(before));
			Blog blog2 = bs.getBlogByblogid(String.valueOf(behind));
			
			request.setAttribute("blog", blog);
			request.setAttribute("comments", comments);
			request.setAttribute("blog1", blog1);
			request.setAttribute("blog2", blog2);
			request.getRequestDispatcher("/page/myblogDetail.jsp").forward(request, response);
		}
		
	//修改博客-喜欢人数的数量 +1
	public void addLikeNum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String blogid = request.getParameter("blogid");
		response.setContentType("application/json;charset=utf-8");
		// 设置map属性集
		HashMap<String, Object> map = new HashMap<>();
		int row = bs.addLikeNum(blogid);
		
		if(row >0 ) {//喜欢数量+1；
			map.put("code", 1);
			Blog blog = bs.getBlogByblogid(blogid);
			map.put("likeNum", blog.getLikeNum());
		}else {//未成功
			map.put("code", 0);
		}
		// 将map属性集，转换成json字符串并发送给ajax
		String jsonStr = JSON.toJSONString(map);
		response.getWriter().print(jsonStr);
	}
	
	//修改博客所属的分类
		public void updateUsertypeByblogid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String blogid = request.getParameter("blogid");
			String usertypeid = request.getParameter("usertypeid");
			int updateBogusertype = bs.updateBogusertype(usertypeid, blogid);
			
			response.setContentType("application/json;charset=utf-8");
			// 设置map属性集
			HashMap<String, Object> map = new HashMap<>();
			
			if(updateBogusertype >0 ) {//修改成功
				map.put("code", 1);
			}else {//未成功
				map.put("code", 0);
			}
			// 将map属性集，转换成json字符串并发送给ajax
			String jsonStr = JSON.toJSONString(map);
			response.getWriter().print(jsonStr);
		}
	
}