package com.fenbi.blog.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.fenbi.blog.bean.User;
import com.fenbi.blog.bean.UserType;
import com.fenbi.blog.service.UserTypeService;
import com.fenbi.blog.service.impl.UserTypeServiceImpl;

public class UsertypeServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;
	UserTypeService uts = new UserTypeServiceImpl();

	public void saveUsertype(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usertypeName = request.getParameter("name");
		User user = (User) request.getSession().getAttribute("loginUser");
		
		UserType ut = new UserType();
		ut.setName(usertypeName);
		if(user!=null) {
			ut.setUserid(user.getId());
		}
		
		int saveUsertype = uts.saveUsertype(ut);
		//结果处理
		response.setContentType("application/json;charset=utf-8");

		// 设置map属性集
		HashMap<String, Object> map = new HashMap<>();
		if(saveUsertype > 0){
			map.put("code",1 );
		}else {
			map.put("code",0);
		}
		// 将map属性集，转换成json字符串并发送给ajax
		String jsonStr = JSON.toJSONString(map);
		response.getWriter().print(jsonStr);
	}

	public void getUsertype(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("loginUser");
		
		List<UserType> usertype = uts.getUsertypeByUserid(user.getId());
		
		//处理结果
		response.setContentType("application/json;charset=utf-8");

		// 设置map属性集
		HashMap<String, Object> map = new HashMap<>();
		map.put("usertypes",usertype );
		// 将map属性集，转换成json字符串并发送给ajax
		String jsonStr = JSON.toJSONString(map);
		response.getWriter().print(jsonStr);
	}
	
	public void updateUsertype(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("usertypeid");
		String name = request.getParameter("updatename");
		int updateUsertype = uts.updateUsertype(name, id);
		//处理结果
		response.setContentType("application/json;charset=utf-8");

		// 设置map属性集
		HashMap<String, Object> map = new HashMap<>();
		if(updateUsertype > 0){
			map.put("code",1 );
		}else {
			map.put("code",0);
		}
		// 将map属性集，转换成json字符串并发送给ajax
		String jsonStr = JSON.toJSONString(map);
		response.getWriter().print(jsonStr);
	}
	
	public void delUsertype(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("usertypeid");
		int delUsertype = uts.delUsertype(id);
		
		//处理结果
		response.setContentType("application/json;charset=utf-8");

		// 设置map属性集
		HashMap<String, Object> map = new HashMap<>();
		if(delUsertype > 0){
			map.put("code",1 );
		}else {
			map.put("code",0);
		}
		// 将map属性集，转换成json字符串并发送给ajax
		String jsonStr = JSON.toJSONString(map);
		response.getWriter().print(jsonStr);
	}

}