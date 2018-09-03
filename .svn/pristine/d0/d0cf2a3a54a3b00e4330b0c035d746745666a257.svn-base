package com.fenbi.blog.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * @version: p_d2
* @Description: 所有servlet的父类，定义公共的代码
* @author: cgq  
* @date: 2018年8月6日 下午4:28:55
 */
public class BaseServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//通过对所有请求的filter设置，encodingfilter
//		request.setCharacterEncoding("UTF-8");
		
		String method = request.getParameter("method");
		Class clazz = this.getClass();
		
		try {
			Method methodName = clazz.getDeclaredMethod(method, HttpServletRequest.class,HttpServletResponse.class);
			methodName.setAccessible(true);
			methodName.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}