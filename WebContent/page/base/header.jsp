<!--$sinatopbar-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="z-index:512;" class="nsinatopbar">
  <div style="position:absolute;left:0;top:0;" id="trayFlashConnetion"></div>
  <div class="ntopbar_main"> 
    <div class="ntopbar_loading"></div>
     <div id="_1121535640331686_panel" class="ntopbar_login" style="" login="1"><span class="link bk_home">
     <a href="/blog/first.jsp" target="_blank" suda-uatrack="key=sinahome_from_blog&amp;value=sinahome_from_blogpage"><i class="SG_bkhome"></i>æ°æµªé¦é¡µ</a></span>
      <c:if test="${empty loginUser }">
	     <a class="login" href="/blog/page/user/login.jsp"><span>ç»å½</span></a>
	     <a class="register" href="/blog/page/user/register.jsp">æ³¨å</a>
 	</c:if>
 	 <c:if test="${!empty loginUser }">
		<a class="register" href="/blog/UserServlet?method=toPersonalCenter">ç¨æ·ï¼${loginUser.username }</a>
	</c:if>
  </div>
<!--$end sinatopbar-->