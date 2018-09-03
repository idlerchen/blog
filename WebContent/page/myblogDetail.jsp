<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>博文详情</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,chrome=1" />
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/">

<script type="text/javascript">
window.staticTime=new Date().getTime();
</script>
<link rel="pingback" href="http://upload.move.blog.sina.com.cn/blog_rebuild/blog/xmlrpc.php" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://upload.move.blog.sina.com.cn/blog_rebuild/blog/xmlrpc.php?rsd" />
<link href="http://blog.sina.com.cn/blog_rebuild/blog/wlwmanifest.xml" type="application/wlwmanifest+xml" rel="wlwmanifest" />
<link rel="alternate" type="application/rss+xml" href="http://blog.sina.com.cn/rss/3278267512.xml" title="RSS" />
<link href="http://simg.sinajs.cn/blog7style/css/conf/blog/articleM.css" type="text/css" rel="stylesheet" /><link href="http://simg.sinajs.cn/blog7style/css/common/common.css" type="text/css" rel="stylesheet" /><link href="http://simg.sinajs.cn/blog7style/css/blog/blog.css" type="text/css" rel="stylesheet" /><link href="http://simg.sinajs.cn/blog7style/css/module/common/blog.css" type="text/css" rel="stylesheet" /><style id="tplstyle" type="text/css">@charset "utf-8";@import url("http://simg.sinajs.cn/blog7newtpl/css/30/30_1/t.css");
</style>
<style id="positionstyle"  type="text/css">
</style>
<style id="bgtyle"  type="text/css">
</style>
<style id="headtyle"  type="text/css">
</style>
<style id="navtyle"  type="text/css">
</style>
<script type="text/javascript" src="http://d1.sina.com.cn/litong/zhitou/sspnew.js"></script>
<script type="text/javascript" src="myjs/jquery-1.11.1.js"></script>
</head>
<body>
<!--$sinatopbar-->
<div style="z-index:512;" class="nsinatopbar">
  <div style="position:absolute;left:0;top:0;" id="trayFlashConnetion"></div>
  <div class="ntopbar_main"> 
    <a id="login_bar_logo_link_350" href="http://blog.sina.com.cn" target="_blank"><img class="ntopbar_logo" src="http://simg.sinajs.cn/blog7style/images/common/topbar/topbar_logo.gif" width="100" alt="新浪博客"></a>
    <div class="ntopbar_floatL">
      <div class="ntopbar_search" id="traySearchBar"></div>
	  <div class="ntopbar_ad" id="loginBarActivity" style="display:none;"></div>
    </div>
    <div class="ntopbar_loading">
    	 <div id="_1121535640331686_panel" class="ntopbar_login" style="" login="1"><span class="link bk_home">
     <a href="/blog/first.jsp" target="_blank" suda-uatrack="key=sinahome_from_blog&amp;value=sinahome_from_blogpage"><i class="SG_bkhome"></i>新浪首页</a></span>
      <c:if test="${empty loginUser }">
	     <a class="login" href="/blog/page/user/login.jsp"><span>登录</span></a>
	     <a class="register" href="/blog/page/user/register.jsp">注册</a>
 	</c:if>
 	 <c:if test="${!empty loginUser }">
		<a class="register" href="/blog/UserServlet?method=toPersonalCenter">用户：${loginUser.username }</a>
	</c:if>
  </div>
    </div>
  </div>
</div>
<!--$end sinatopbar-->

<div class="sinabloga" id="sinabloga">
	<div id="sinablogb" class="sinablogb">

	   
 <div id="sinablogHead" class="sinabloghead">
     <div style="display: none;" id="headflash" class="headflash"></div>
	   <div id="headarea" class="headarea">
      <div id="blogTitle" class="blogtoparea">
       <h1 id="blogname" class="blogtitle"><a href="/blog/page/personal/personalCenter.jsp">用户:${loginUser.username }的博客</a></h1>
		<div id="bloglink" class="bloglink"><a href="/blog/page/personal/personalCenter.jsp">http://blog.fenbi.com.cn/u/${loginUser.username }</a> </div>
      </div>
      <div class="blognav" id="blognav">
      			  <div id="blognavBg" class="blognavBg"></div> <div class="blognavInfo"> 
		<span><a href="/blog/BlogServlet?method=getAllBlog">首页</a></span>
      <span><a class="on" href="/blog/BlogServlet?method=getBlogtoManage">博文目录</a></span>
      <span><a href="/blog/page/personal/writeBlog.jsp">发文</a></span>
      <span class="last"><a  href="UserServlet?method=toPersonalCenter">个人中心</a></span></div>
             <div class="autoskin" id="auto_skin">
       </div>

<div class="adsarea">
     <a href="#"><div id="template_clone_pic" class="pic"></div></a>
     <div id="template_clone_link" class="link wdc_HInf"></div>
     <div id="template_clone_other" class="other"></div>        
</div>
    </div>
    </div>
    
    <!--主题内容开始 -->
    <div class="sinablogbody" id="sinablogbody">
		
	<!--第一列start-->
    <div id="column_1" class="SG_colW21 SG_colFirst"><div class="SG_conn" id="module_901">
    <div class="SG_connHead">
            <span class="title" comp_title="个人资料">个人资料</span>
            <span class="edit">
                          <a target="_blank" href="http://control.blog.sina.com.cn/blogprofile/profile.php" class="CP_a_fuc">[<cite>管理</cite>]</a>
                        </span>
    </div>
    <div class="SG_connBody">
        <div class="info">
                         
            <div class="info_img" id="comp_901_head"><img src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" real_src ="http://p1.sinaimg.cn/3278267512/180/14741420273776" id="comp_901_head_image" width="180" height="180" alt="大龙猫" title="大龙猫" /></div>
            
            <div class="info_txt">
              <div class="info_nm">
                <img id="comp_901_online_icon" style="display:none;" class="SG_icon SG_icon1" src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" width="15" height="15" align="absmiddle" />
                <span class="SG_txtb"><strong id="ownernick">${blog.username }                               </strong></span>
                
                <div class="clearit"></div>
              </div>
              <div class="info_btn1">
                <a target="_blank" href="http://weibo.com/u/3278267512?source=blog" class="SG_aBtn SG_aBtn_ico"><cite><img class="SG_icon SG_icon51" src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" width="15" height="15" align="absmiddle" />微博</cite></a>
                <div class="clearit"></div>
              </div>
    <div class="SG_j_linedot"></div>                  <div class="info_list">     
                                   <ul class="info_list1">
                    <li><span class="SG_txtc">博客等级：</span><span id="comp_901_grade"><img src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" real_src="http://simg.sinajs.cn/blog7style/images/common/number/4.gif"  /></span></li>
                    <li><span class="SG_txtc">博客积分：</span><span id="comp_901_score"><strong>0</strong></span></li>
                    </ul>
                    <ul class="info_list2">
                    <li><span class="SG_txtc">博客访问：</span><span id="comp_901_pv"><strong><a target="_blank" href="http://control.blog.sina.com.cn/blogprofile/profilevisitanaly.php" title="您的访问统计">281</a></strong></span></li>
                    <li><span class="SG_txtc">关注人气：</span><span id="comp_901_attention"><strong>2</strong></span></li>
                    <li><span class="SG_txtc">获赠金笔：</span><strong id="comp_901_d_goldpen">0支</strong></li>
                    <li><span class="SG_txtc">赠出金笔：</span><strong id="comp_901_r_goldpen">0支</strong></li>
					<li class="lisp" id="comp_901_badge"><span class="SG_txtc">荣誉徽章：</span></li>
                    </ul>
                  </div>
<div class="clearit"></div>
    </div>
    <div class="clearit"></div>
</div>
            </div>       
            <div class="SG_connFoot"></div>
</div>
<div id="module_903" class="SG_conn ">
    <div class="SG_connHead">
    <span comp_title="相关博文" class="title">相关博文</span>
    <span class="edit"> </span>
    </div>
    <div class="SG_connBody">
    <div class="atcTitList relaList">        <ul class="">

                <li class="SG_j_linedot1" style="display:none;">
            <p id="atcTitLi_SLOT_41" class="atcTitCell_tit SG_dot" style="display:none">
        </p>
        </li>
        <li class="SG_j_linedot1" style="display:none;">
            <p id="atcTitLi_SLOT_42"  class="atcTitCell_tit SG_dot" style="display:none">
        </p>
        </li>
        
                	</ul>
    <div class="atcTit_more"><span class="SG_more"><a href="http://blog.sina.com.cn/" target="_blank">更多&gt;&gt;</a></span></div></div>    </div>
    <div class="SG_connFoot"></div>
  </div>
<div id="module_904_top_ad"></div>
<div class="SG_conn " id="module_904">
<div class="SG_connHead">
<span class="title">推荐博文</span>
</div>
<div class="SG_connBody ">
	<div class="atcTitList relaList">		<ul class="">
			<li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="如果“正当防卫还得靠跑”，岂不" target="_blank" href="http://blog.sina.com.cn/s/blog_7159859d0102yc8n.html?tj=2?tj=2">如果“正当防卫还得靠跑”，岂不</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/1901692317" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="“魏璎珞”耍大牌，因为没想到自" target="_blank" href="http://blog.sina.com.cn/s/blog_5951b3310102yn7x.html?tj=2?tj=2">“魏璎珞”耍大牌，因为没想到自</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/1498526513" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="当前关于征收房地产税争论又风起" target="_blank" href="http://blog.sina.com.cn/s/blog_8db3ce3d0102zxwg.html?tj=2?tj=2">当前关于征收房地产税争论又风起</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/2377371197" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="客户数据保密这事，滴滴和华住，" target="_blank" href="http://blog.sina.com.cn/s/blog_56c35a550102yi74.html?tj=2?tj=2">客户数据保密这事，滴滴和华住，</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/1455643221" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="我们是如何丧失对贫穷的感知能力" target="_blank" href="http://blog.sina.com.cn/s/blog_15e0b0be80102xtj1.html?tj=2?tj=2">我们是如何丧失对贫穷的感知能力</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/5872749544" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="你吃的“五常大米”是真的吗？" target="_blank" href="http://blog.sina.com.cn/s/blog_9de75fe30102xsz4.html?tj=2?tj=2">你吃的“五常大米”是真的吗？</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/2649186275" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="中国男篮险胜菲律宾让姚主席心跳" target="_blank" href="http://blog.sina.com.cn/s/blog_4eddf60c0102xj90.html?tj=2?tj=2">中国男篮险胜菲律宾让姚主席心跳</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/1323169292" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="5G频谱划分，内藏什么玄机？" target="_blank" href="http://blog.sina.com.cn/s/blog_4af36ea50102y3tz.html?tj=2?tj=2">5G频谱划分，内藏什么玄机？</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/1257467557" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="程鹤麟：网恋骗局是最恶劣的骗局" target="_blank" href="http://blog.sina.com.cn/s/blog_4db8e9a30102y2cf.html?tj=2?tj=2">程鹤麟：网恋骗局是最恶劣的骗局</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/1303964067" class="SG_linkb"></a></p>
		</li><li class="SG_j_linedot1"><p class="atcTitCell_tit SG_dot"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" title="洞庭湖“私人湖”，是和业主的“" target="_blank" href="http://blog.sina.com.cn/s/blog_5f9d87c80102wzv2.html?tj=2?tj=2">洞庭湖“私人湖”，是和业主的“</a></p>
        <p class="atcTitCell_nm"><a suda-uatrack="key=blog_tjblog&value=h_tjblog" target="_blank" href="http://blog.sina.com.cn/u/1604159432" class="SG_linkb"></a></p>
		</li>		</ul>
		<div id="atcPicList">
		</div>
	<div class="atcTit_more"><span class="SG_more"><a target="_blank" href="http://blog.sina.com.cn/">查看更多</a>&gt;&gt;</span></div></div></div>
<div class="SG_connFoot"></div>
</div>
</div>
	<!--第一列end-->
	
	<!--第二列start-->
	<div id="column_2" class="SG_colW73">	
<div id="module_920" class="SG_conn">
	<div class="SG_connHead">
	    <span comp_title="正文" class="title">正文</span>
	    <span class="edit"><span id="articleFontManage" class="fontSize">字体大小：<a href="javascript:;" onclick="changeFontSize(2);return false;">大</a> <strong>中</strong> <a href="javascript:;" onclick="changeFontSize(0);return false;">小</a></span></span>
	</div>
    <div class="SG_connBody">
<!--博文正文 begin -->
	<div id="articlebody" class="artical" favMD5='{"c36664780102vwf1":"c064d90c6e3de4008f5c3bf8cda415d7"}'>
		<div class="articalTitle"> 
			
								<h2 id="blogbegin" class="titName SG_txta" data-blog=${blog.id }>${blog.title }</h2>
			
					<span class="time SG_txtc">(2015-01-29 10:24:45)</span><a href='http://control.blog.sina.com.cn/admin/article/article_edit.php?blog_id=c36664780102vwf1'class="CP_a_fuc">[<cite>编辑</cite>]</a><a href="javascript:;" class="CP_a_fuc" onclick="return false;">[<cite onclick="$articleManage('c36664780102vwf1',1,{callback:function(){window.location.href='http://blog.sina.com.cn/u/3278267512';}});">删除</cite>]</a><div class="turnBoxzz"><a href="javascript:;" class="SG_aBtn SG_aBtn_ico SG_turn"  action-type="reblog" action-data="{srcBlog:1, blogId:'c36664780102vwf1'}"><cite><img class="SG_icon SG_icon111" src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" width="15" height="15" align="absmiddle">转载<em class="arrow">▼</em></cite></a></div>		</div>
		<div class="articalTag" id="sina_keyword_ad_area">
			<table>
				<tr>
					<td class="blog_class">
											<span class="SG_txtb">分类：</span>
						<a target="_blank" href="http://blog.sina.com.cn/s/articlelist_3278267512_3_1.html">${blog.defineType }</a>
										</td>
				</tr>
			</table>
		</div>
						<!-- 正文开始 -->
		<div id="sina_keyword_ad_area2" class="articalContent   newfont_family">
		${blog.content }
		</div>
						<!-- 正文结束 -->
		<div id='share' class="shareUp">
        	<div class="share SG_txtb">
			分享： 
			<div class="bshare-custom" style="display:inline;margin-left:5px;"><a title="分享到新浪微博" class="bshare-sinaminiblog" href="javascript:void(0);"></a><a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a><a title="分享到QQ空间" class="bshare-qzone" href="javascript:void(0);"></a><a title="分享到豆瓣" class="bshare-douban" href="javascript:void(0);"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
			</div>
			</div>
            <div class="up">
	        	<div id="like" title="喜欢后让更多人看到" id="dbox_c36664780102vwf1" class="upBox upBox_click" style="cursor: pointer;">
	            	<p  class="count">${blog.likeNum }</p>
	                <p class="link">
	                	<img width="15" height="15" align="absmiddle" src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" class="SG_icon SG_icon34">
	                            喜欢</p>
	            </div>
	        </div>
            <div class="clearit"></div>
		</div>
		<div class="articalInfo">
			<!-- 分享到微博 {$t_blog} -->
			<div class="IL">
				阅读<span id="r_c36664780102vwf1" class="SG_txtb"></span><em class="SG_txtb">┊</em> 
				<a href="#commonComment">评论(${blog.commentNum })</a> <span id="c_c36664780102vwf1" class="SG_txtb"></span><em class="SG_txtb">┊</em>				<a href="javascript:;" onclick="$articleManage('c36664780102vwf1',5);return false;">收藏</a><span id="f_c36664780102vwf1"  class="SG_txtb"></span>
				<em class="SG_txtb">┊</em>还没有被转载				<span id="fn_乔·吉拉德的推销" class="SG_txtb"></span><em class="SG_txtb">┊</em>
				<a onclick="return false;" href="javascript:;" ><cite id="d1_digg_c36664780102vwf1">喜欢</cite></a><a id="d1_digg_down_c36664780102vwf1" href="javascript:;" ><b>▼</b></a>
								  <em class="SG_txtb">┊</em><a href="http://blog.sina.com.cn/main_v5/ria/print.html?blog_id=blog_c36664780102vwf1" target="_blank">打印</a>
											</div>
			<div class="IR">
				<table>
					<tr>
											<th class="SG_txtb" scope="row">已投稿到：</th>
						<td>
							<div class="IR_list">
								<span><img class="SG_icon SG_icon36" src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" width="15" height="15" title="排行榜" align="absmiddle" /> <a href="http://blog.sina.com.cn/lm/114/117/day.html" class="SG_linkb" target="_blank">排行榜</a></span>							</div>
						</td>
										</tr>
									</table>
			</div>
		</div>
		<div class="clearit"></div>
		<div class="blogzz_zzlist borderc" id="blog_quote" style="display:none">加载中，请稍候......</div>
		<div class="articalfrontback SG_j_linedot1 clearfix" id="new_nextprev_c36664780102vwf1">	
			 <c:if test="${empty blog1 }">
			 	<div>
			  		<span class="SG_txtb">&nbsp;没有前一篇了</span>
			  	</div>
		  	</c:if>
		  	<c:if test="${!empty blog1 }">
		  		<div>
			  		<span class="SG_txtb">&nbsp;前一篇</span>
			  		<a href="/blog/BlogServlet?method=getMyBlogByBlogid&blogid=${blog1.id }">${blog1.title }</a>
			  	</div>
		  	</c:if>
		  	<c:if test="${empty blog2 }">
		  		<div>
			  		<span class="SG_txtb">&nbsp;没有后一篇了</span>
			  	</div>
		  	</c:if>
		  	<c:if test="${!empty blog2 }">
		  		<div>
				  	<span class="SG_txtb">&nbsp;后一篇</span>
				  	<a href="/blog/BlogServlet?method=getMyBlogByBlogid&blogid=${blog2.id }">${blog2.title }</a>
			  	</div>
		    </c:if>
		</div>
		<div class="clearit"></div>
							
		<div id="loginFollow"></div>
				<div class="allComm">
			<div  class="allCommTit" >
				<div class="SG_floatL">
				    <strong>评论</strong>
				    <span id="commAd_1" style="display:none;">
				        <span style="margin-left:15px; width:220px; display:inline-block;"><a target="_blank" href="http://blog.sina.com.cn/lm/8/2009/0325/105340.html">重要提示：警惕虚假中奖信息</a></span>
				    </span>
				</div>
				<div class="SG_floatR"><a class="CP_a_fuc" href="#post">[<cite>发评论</cite>]</a></div>
			</div>
			<ul >
			<c:forEach items="${comments }" var="comment">
				<li>${comment.username }:${comment.content }</li>
			</c:forEach>
			</ul>
			<div class="clearit"></div>
			<div class="myCommPages SG_j_linedot1">
				<div class="SG_page" id="commentPaging" style="display:none;">
					<ul class="SG_pages">
					</ul>
				</div>
				<div class="clearit"></div>
			</div>
			<a name="post"></a>
			
			<div class="writeComm">
			
				<div class="allCommTit">
					<div class="SG_floatL">
					    <strong>发评论</strong>
					    <span></span>
					</div>
					<div class="SG_floatR"></div>
				</div>
				
				<div class="wrCommTit">
					 <c:if test="${!empty loginUser }">
						${loginUser.username }:
					</c:if>
				</div>
				
				<div class="formTextarea">
					
						<textarea id="inputComment" style="width:438px;height:150px;border:1px solid #C7C7C7;line-height:18px;padding:5px;"></textarea>
					
				</div>
				
				<div class="formLogin">
					<div class="SG_floatL"> 
					<p id="commentlogin" style="display:none;"><span>登录名：</span><input type="text" style="width: 115px;" id="login_name" tabindex="2"/>   <span>密码：</span><input type="password" style="width: 115px;" id="login_pass" tabindex="3"/>   <a href="https://login.sina.com.cn/getpass.html" target="_blank">找回密码</a>   <a href="https://login.sina.com.cn/signup/signup.php?entry=blog&src=blogicp&srcuid=3278267512" target="_blank">注册</a>	<input type="checkbox" id="login_remember"/><label for="login_remember" style="display:inline-block;" title="建议在网吧/公用电脑上取消该选项">记住登录状态</label></p><p id="commentloginM" style="display:none;"><span>昵&nbsp;&nbsp;&nbsp;称：</span><input type="text" style="width: 115px;" id="comment_anonyous"  value="新浪网友"/ tabindex="2" disabled></p><p id="quote_comment_p"><!--<input type="checkbox" id="bb"> <label for="bb"><img height="18" align="absmiddle" width="18" title="" src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" class="SG_icon SG_icon110">分享到微博 <img height="15" align="absmiddle" width="15" title="新" src="http://simg.sinajs.cn/blog7style/images/common/sg_trans.gif" class="SG_icon SG_icon11"></label>&nbsp;&nbsp;&nbsp;--></p>
					<p id="geetest-box" ></p>
					</div>

					<span style="display: none; color: rgb(153, 153, 153); margin-left: 10px;" id="login_remember_caution"></span>

											<!--<div class="SG_floatR" id="anonymity_cont"><input type="checkbox" id="anonymity"/><label for="anonymity">匿名评论</label></div>-->
									</div>
				<div class="formBtn">
					<button id="sendComment">发评论</button>
					<p class="SG_txtc">以上网友发言只代表其个人观点，不代表新浪网的观点或立场。</p>
				</div>
			</div>
			
		</div>
				<div class="clearit"></div>
		
				<div class="articalfrontback articalfrontback2 clearfix">
						   <c:if test="${empty blog1 }">
			 	<div>
			  		<span class="SG_txtb">&nbsp;没有前一篇了</span>
			  	</div>
		  	</c:if>
		  	<c:if test="${!empty blog1 }">
		  		<div>
			  		<span class="SG_txtb">&nbsp;前一篇</span>
			  		<a href="/blog/BlogServlet?method=getMyBlogByBlogid&blogid=${blog1.id }">${blog1.title }</a>
			  	</div>
		  	</c:if>
		  	<c:if test="${empty blog2 }">
		  		<div>
			  		<span class="SG_txtb">&nbsp;没有后一篇了</span>
			  	</div>
		  	</c:if>
		  	<c:if test="${!empty blog2 }">
		  		<div>
				  	<span class="SG_txtb">&nbsp;后一篇</span>
				  	<a href="/blog/BlogServlet?method=getMyBlogByBlogid&blogid=${blog2.id }">${blog2.title }</a>
			  	</div>
		    </c:if>
			   </div>
		<div class="clearit"></div>
				
	</div>
	<!--博文正文 end -->
		<script type="text/javascript">
			var voteid="";
		</script>

            </div>       
            <div class="SG_connFoot"></div>
          </div>
</div>
	<!--第二列start-->
	
	<!--第三列start-->
	<div id="column_3" class="SG_colWnone"><div style="width:0px;height:0.1px;margin:0px;">&nbsp;&nbsp;</div></div>
	<!--第三列end-->

	
    </div>
   <!--主题内容结束 -->
  

	<div id="diggerFla" style="position:absolute;left:0px;top:0px;width:0px"></div>
    <div class="sinablogfooter" id="sinablogfooter"  style="position:relative;">
      
      <p class="SG_linka"><a href="http://help.sina.com.cn/" target="_blank">新浪BLOG意见反馈留言板</a>　电话：4006900000 提示音后按1键（按当地市话标准计费）　欢迎批评指正</p>
   
      <p class="SG_linka"><a href="http://corp.sina.com.cn/chn/" target="_blank">新浪简介</a> | <a href="http://corp.sina.com.cn/eng/" target="_blank">About Sina</a> | <a href="http://emarketing.sina.com.cn/" target="_blank">广告服务</a> | <a href="http://www.sina.com.cn/contactus.html" target="_blank">联系我们</a> | <a href="http://corp.sina.com.cn/chn/sina_job.html" target="_blank">招聘信息</a> | <a href="http://www.sina.com.cn/intro/lawfirm.shtml" target="_blank">网站律师</a> | <a href="http://english.sina.com" target="_blank">SINA English</a> | <a href="http://members.sina.com.cn/apply/" target="_blank">会员注册</a> | <a href="http://help.sina.com.cn/" target="_blank">产品答疑</a> </p>
      <p class="copyright SG_linka"> Copyright &copy; 1996 - 2018 SINA Corporation,  All Rights Reserved</p>
      <p class="SG_linka"> 新浪公司 <a href="http://www.sina.com.cn/intro/copyright.shtml" target="_blank">版权所有</a></p>
	  <a href="http://www.bj.cyberpolice.cn/index.jsp"  target="_blank" class="gab_link"></a>
    </div>
  </div>
</div>
<div id="swfbox"></div>
<script id="PVCOUNTER_FORIE" type="text/javascript"></script>
<script type="text/javascript" src="myjs/blogDetail.js"></script>
</body>

</html>
