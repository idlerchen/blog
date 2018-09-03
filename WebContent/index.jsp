<%@ page language="java" contentType="text/html; charset=UTF-8"  
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/page/base/base.jsp" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>Index</title>
		<link rel="stylesheet" href="css/index.css" />
		<script type="text/javascript" src="myjs/jquery-1.11.1.js"></script>
		<script type="text/javascript" src="myjs/index.js"></script>
	</head>

	<body>
		<div id="wrap">
			<!-- 标准二级导航_博客 begin -->
			<div style="margin-bottom:6px;margin-top:4px;">
				<div class="secondaryHeader">
					<div class="sHBorder">
						<div class="sHLogo"><span><a href="#"><img src="http://i1.sinaimg.cn/dy/images/header/2009/standardl2nav_sina_new.gif" alt="新浪博客" /></a><a href="first.jsp"><img src="http://i1.sinaimg.cn/dy/images/header/2009/standardl2nav_blog.gif" alt="新浪博客" /></a></span></div>
						<div class="sHLinks">
							<c:if test="${empty loginUser }">
								<a href="page/user/login.jsp">登录</a>&nbsp;|&nbsp;
								<a href="page/user/register.jsp">注册</a>
							</c:if>
							<c:if test="${!empty loginUser }">
								<a href="BlogServlet?method=getBlogtoManage">${loginUser.username }</a>
								|<a href="UserServlet?method=logout">退出</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<!-- 标准二级导航_博客 end -->

			<div id="banner">
				<h1>博客首页</h1>
			</div>
			<div class="hScape"></div>
			<!--<div id="nav2">
				  <div id="navTop" class="linkFFF">
					<ul>
						<li>
							<a href="http://blog.sina.com.cn/">首页</a>
						</li>
						
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/ent/">娱乐</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/sports/">体育</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/book/">文化</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/tech/">IT</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/finance/">财经</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/auto/">汽车</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/house/">房产</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/edu/">教育</a>
						</li>
						<li><img src="http://i1.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_004.gif" /></li>
						<li>
							<a href="http://blog.sina.com.cn/lm/games/">游戏</a>
						</li>
					</ul>
				</div>
			</div>-->
			<!--nav end-->
			<!--主页面开始-->
			<div class="hScape"></div>
			<ul class="menuStyle link3164bf">
				<li>
					<a href="BlogServlet?method=getBlogByLikeNum" style="font-weight:normal;">实时热文</a>
				</li>
		
				<li>
					<a href="http://blog.sina.com.cn/lm/top/rank/" style="font-weight:normal;">总流量排行</a>
				</li>
				<li>
					<a href="http://blog.sina.com.cn/lm/top/all/day.html" style="font-weight:normal;">每日排行榜</a>
				</li>	
				<li>
					<a href="http://blog.sina.com.cn/lm/rank/zlbang/" style="font-weight:normal;">每周人气榜</a>
				</li>
				<li>
					<a href="http://blog.sina.com.cn/lm/rank/focusbang/">总关注度榜</a>
				</li>
				<li>
					<a href="http://blog.sina.com.cn/lm/rank/monthbang/">月关注度榜</a>
				</li>

				<li style="width:373px; float:right; background:none; font-weight:normal; text-align:right;">
						<a href="http://search.sina.com.cn/?t=blog" target="_blank" style="text-decoration:none;">博客搜索</a>：<input type="text" id="inputTitle" style="width:133px;" placeholder="请输入查询词"   />
						<select style="width:77px;" onchange="blogsearch_change1(this);" size="1" name="by">
							<option value="all" >博客全文</option>
							<option value="title"selected>文章标题</option>
							<option value="nick">博客作者</option>
							<option value="tag">标签</option>
						</select>

						<input id="search" type="image" src="http://i2.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_005.gif" />
				</li>
			</ul>
			<div class="hScape"></div>
			<div class="Cont">
				<div class="le">
					<div><img src="http://i3.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_020.gif" width="116" height="11" /></div>
					<ul class="liNstyle link5d83b0">
						<li>
							<a  href="BlogServlet?method=getAllBlog">全部</a>
						</li>
						<c:forEach items="${blogtype }" var="blogtype">
							<li class="${blogtype.id==param.blogtypeid ? 'selec' : ''}">
								<a id="${blogtype.id }" href="BlogServlet?method=getBlogByTypeId&blogtypeid=${blogtype.id }">${blogtype.name }</a>
							</li>
						</c:forEach>
						<!-- <li class="selec">
							<a href="http://blog.sina.com.cn/lm/top/baby/day.html">育儿</a>
						</li> -->
					</ul>
					<div><img src="http://i2.sinaimg.cn/blog/deco/2007/1219/ph_blog_lmy_018.gif" width="116" height="12" /></div>
				</div>
				<div class="ri">

					<div class="if">
						<div class="conn">
							<table width="593" border="0" cellspacing="0" cellpadding="0" class="table1" id="table_lit_bang_105">

								<tr>
									<th width="5%" align="center">序号</th>
									<th width="40%">标题</th>
									<th width="20%">作者</th>
									<th width="15%">时间</th>
									<th width="10%">热度</th>
									<th width="10%"></th>
								</tr>
									
										<c:forEach items="${allblog }" var="blog">
										<tr>
											<td>
												<div class="num"><span>${blog.id }</span></div>
											</td>
											<td style="text-align: left;">
												<div class="link335bbd textL">
													<a id="${blog.id }" href="BlogServlet?method=getBlogByBlogid&blogid=${blog.id }" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;${blog.title }</a>
												</div>
											</td>
											<td>
												<div class="link-ul">
													<span>${blog.username }</span>
												</div>
											</td>
											<td><fmt:formatDate value="${blog.createTime  }" type="date" dateStyle="short"/></td>
											<td>
												<div class="link-ul">
													<span>${blog.likeNum }</span>
												</div>
											</td>
										<!-- <td>
											<div class="num"><span>1</span></div>
										</td>
										<td style="text-align: left;">
											<div class="link335bbd textL">
												<span>123</span>
											</div>
										</td>
										<td>
											<div class="link-ul">
												<span>123</span>
											</div>
										</td>
										<td>18-08-27</td>	 -->
									</tr>
								</c:forEach>
							
							</table>
						</div>
					</div>

				</div>
			</div>
			<!--主页面结束-->

			<div id="uni_footer">
				
			</div>
		</div>
	
	
	</body>

</html>