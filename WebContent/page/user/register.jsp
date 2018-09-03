<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/page/base/base.jsp"%>
<meta charset="UTF-8">
<title>欢迎注册</title>
<link rel="stylesheet" href="css/frame.css" />
<link rel="stylesheet" href="css/github.css" />
<link rel="stylesheet" href="css/site.css" />
<link rel="stylesheet" href="css/index.css" />
</head>

<body class="logged-out env-production signup">

	<div id="wrap">
		<!-- 标准二级导航_博客 begin -->
		<div style="margin-bottom: 6px; margin-top: 4px;">
			<div class="secondaryHeader">
				<div class="sHBorder">
					<div class="sHLogo">
						<span><a href="http://blog.sina.com.cn/"><img
								src="http://i1.sinaimg.cn/dy/images/header/2009/standardl2nav_sina_new.gif"
								alt="新浪博客" /></a><a href="http://blog.sina.com.cn/"><img
								src="http://i1.sinaimg.cn/dy/images/header/2009/standardl2nav_blog.gif"
								alt="新浪博客" /></a></span>
					</div>
					<div class="sHLinks">
						<a href="page/user/login.jsp">登录</a>&nbsp;|&nbsp; <a href="page/user/register.jsp">注册</a>
					</div>
				</div>
			</div>
		</div>

		<div id="banner">
			<h1>欢迎注册</h1>
		</div>

	</div>

	<div role="main" class="application-main ">

		<div id="js-pjax-container" data-pjax-container>

			<div class="bg-shade-gradient">
				<div class="container-lg p-responsive py-5">
					<div class="setup-header setup-org">
						<h1 style="line-height: 65px;">Join Blog</h1>
					</div>

					<div class="d-md-flex flex-justify-between gutter-md-spacious ">
						<div class="col-sm-8 col-md-6 setup-form-container">
							
							<!-- 错误消息 -->
							<div style="margin: 0 auto; padding: 0px; color: red;">
								<p style="padding: 0px; margin: 0px; text-align: center; font-size: 15px" id="error_msg"></p>
							</div>

							<form id="signup-form" class="setup-form js-signup-form js-octocaptcha-parent"
								action="UserServlet?method=register" accept-charset="UTF-8" method="post">

								<div class="form-group">
									<label>用户名：</label>
									<input name="username" class="form-control" type="text" id="user_username" />
								</div>

								<div class="form-group">
									<label>手机号：</label>
									<input name="telephone" class="form-control" type="text" id="user_telephone" />
								</div>

								<div class="form-group">
									<label>密码：</label>
									<input name="password" class="form-control" type="password" id="user_password" />
								</div>

								<input type="submit" value="点击注册" class="btn btn-primary" id="register_btn" disabled="disabled" title="请输入用户名、手机号以及密码" />

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="myjs/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="myjs/register.js"></script>
</body>

</html>