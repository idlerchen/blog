<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<%@ include file="/page/base/base.jsp"%>
<meta charset="UTF-8">
<title>欢迎登录</title>
<link rel="stylesheet" href="css/frame.css" />
<link rel="stylesheet" href="css/github.css" />
<link rel="stylesheet" href="css/site.css" />
<link rel="stylesheet" href="css/index.css" />
</head>

<body
	class="logged-out env-production page-responsive min-width-0 session-authentication">
	<div id="wrap">
		<!-- 标准二级导航_博客 begin -->
		<div style="margin-bottom: 6px; margin-top: 4px;">
			<div class="secondaryHeader">
				<div class="sHBorder">
					<div class="sHLogo">
						<span><a href="#"><img
								src="http://i1.sinaimg.cn/dy/images/header/2009/standardl2nav_sina_new.gif"
								alt="新浪博客" /></a><a href="../index.html"><img
								src="http://i1.sinaimg.cn/dy/images/header/2009/standardl2nav_blog.gif"
								alt="新浪博客" /></a></span>
					</div>
					<div class="sHLinks">
						<a href="page/user/login.jsp">登录</a>&nbsp;|&nbsp; <a
							href="page/user/register.jsp">注册</a>
					</div>
				</div>
			</div>
		</div>

		<!-- 标准二级导航_博客 end -->
		<div id="banner">
			<h1 style="text-align: center; padding-left: 0px;">欢迎登录</h1>
		</div>

		<div role="main" class="application-main ">

			<div class="auth-form px-3" id="login">
			
				<c:if test="${!empty msg }">
					<div style="margin: 0 auto; padding: 0px; color: red;">
						<p style="padding: 0px; margin: 0px; padding-top: 20px; text-align: center; font-size: 15px">${msg }</p>
					</div>
				</c:if>
				
				<form action="UserServlet?method=login" accept-charset="UTF-8" method="post">

					<div class="auth-form-body mt-3">

						用户名：<input type="text"
							name="username" id="username_input" class="form-control input-block"
							value="${!empty param.username ? param.username : cookie.username.value}" />

						密码：<input type="password"
							name="password" id="password_input"
							class="form-control form-control input-block" /> 
							
							<input type="submit" name="login_btn" value="登录" class="btn btn-primary btn-block" />
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>