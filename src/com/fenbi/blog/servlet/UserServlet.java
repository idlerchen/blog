package com.fenbi.blog.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fenbi.blog.bean.Blog;
import com.fenbi.blog.bean.Comment;
import com.fenbi.blog.bean.User;
import com.fenbi.blog.service.CommentService;
import com.fenbi.blog.service.UserService;
import com.fenbi.blog.service.impl.BlogServiceImpl;
import com.fenbi.blog.service.impl.CommentServiceImpl;
import com.fenbi.blog.service.impl.UserServiceImpl;
import com.fenbi.blog.utils.WEButils;

public class UserServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;
	
	UserService us = new UserServiceImpl();
	CommentService cs = new CommentServiceImpl();

	/**
	 * 此方法是登录逻辑的代码，
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User loginUser = us.getUser(username, password);
		
		if(loginUser != null) {
			// 登陆成功了，将用户名以Cookie的形式发送给浏览器，浏览器保存信息。
			Cookie cookie = new Cookie("username", loginUser.getUsername());
			
			// 设置有效时间  3天
			cookie.setMaxAge(60*60*24*3);
			
			// 设置Cookie的有效路径
			cookie.setPath(request.getContextPath() + "/page/user/login.jsp");
			
			response.addCookie(cookie);
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			//成功，重定向到首页
			response.sendRedirect(request.getContextPath()+"/BlogServlet?method=getAllBlog");
//			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
		else {
			//登录失败，转发登录页面继续登录,待会错误提示的参数
			request.setAttribute("msg", "账号密码错误");
			request.getRequestDispatcher("/page/user/login.jsp").forward(request, response);
		}
		
	}

	/**
	 * 此代码是注册逻辑的代码
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		User user = WEButils.param2Bean(request, new User());
		int saveUser = us.saveUser(user);
		
		if(saveUser > 0) {
			response.sendRedirect(request.getContextPath()+"/page/user/login.jsp");
		}else {
			request.getRequestDispatcher("/page/user/register.jsp").forward(request, response);
		}
		
	}
	
	/**
	 * 此代码是校验用户名的方法。
	 * 有疑问请咨询：刘阳
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void checkUsername(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		User checkUsername = us.checkUsername(username);

		if(checkUsername == null) {//没有该用户，可以注册
			response.getWriter().println(1);
		}else {//该用户已存在，不能注册
			response.getWriter().println(0);
		}
		
	}
	
	/**
	 * 此代码是在注册是校验是否有重复的电话号码
	 * 有疑问请咨询：刘阳
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void checkTelephone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String telephone = request.getParameter("telephone");
		
		User checkTelephone = us.checkTelephone(telephone);
		if(checkTelephone == null) {//没有该用户，可以注册
			response.getWriter().println(1);
		}else {//该用户已存在，不能注册
			response.getWriter().println(0);
		}
	}	
	
	/**
	 * 此代码是在个人中心页面修改密码的业务
	 * 有疑问请咨询：刘阳
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void updatePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		int row = us.updatePassword(password, username);
		
		if(row > 0) { // 成功
			response.getWriter().print(1);
		}else {
			response.getWriter().print(0);
		}
		
	}
	
	/**
	 * 此代码是在个人中心页面修改likes的业务。
	 * 有疑问请咨询：刘阳
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void updateLikes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String likes = request.getParameter("likes");
		
		int row = us.updateLikes(likes, username);
		
		if(row > 0) { // 成功
			response.getWriter().print(1);
		}else {
			response.getWriter().print(0);
		}
	}
	
	/**
	 * 需要注意是，到项目后期，用filter拦截之后以下业务逻辑代码可以简化 
	 * by:刘阳
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void toPersonalCenter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = (User) request.getSession().getAttribute("loginUser");

		// 新建一个空的Comment集合
		ArrayList<Comment> commentList = new ArrayList<>();
		
		if(user != null) {
			
			User loginUser = us.getUser(user.getUsername(), user.getPassword());
			
			List<Blog> blogs = new BlogServiceImpl().getBlogByUserid(loginUser.getId());
			
			for (Blog b : blogs) {
				
				// 得到每一个blogs的id和title
				int blogId = b.getId();
				String title = b.getTitle();
				
				// 根据id查询评论集合
				List<Comment> comments = cs.getCommentByBlogid("" + blogId);
				if(comments.size() != 0) {
					// 从commments当中取出一个内容
					Comment comment = comments.get(0);
					// 放进新的一个评论集中
					commentList.add(comment);
				}
			}
			
			request.setAttribute("commentList", commentList);
			
			request.setAttribute("blogs", blogs);
			
			request.getSession().setAttribute("loginUser", loginUser);
			
			//成功，转发去个人中心页面
			request.getRequestDispatcher("page/personal/personalCenter.jsp").forward(request, response);
		}else {
			//登录失败，转发登录页面继续登录,待会错误提示的参数
			request.getRequestDispatcher("/page/user/login.jsp").forward(request, response);
		}
		
	}
	
	//退出登录
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		// 让session立即失效
		request.getSession().invalidate();

		// 重定向到当前页面
//		String referer = request.getHeader("Referer");
		response.sendRedirect(request.getContextPath() + "/first.jsp");

	}
	
}