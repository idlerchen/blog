package com.fenbi.blog.bean;

import java.util.Date;

/*
 * 博客文章的实体类，封装blog信息
 */
public class Blog {

	private int id;
	private int userid;
	private String title;
	private String content;
	private int defineType;
	private int blogType;
	private int commentNum;
	private int likeNum;
	private Date createTime;
	private String username;
	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Blog(int id, int userid, String title, String content, int defineType, int blogType, int commentNum,
			int likeNum, Date createTime, String username) {
		super();
		this.id = id;
		this.userid = userid;
		this.title = title;
		this.content = content;
		this.defineType = defineType;
		this.blogType = blogType;
		this.commentNum = commentNum;
		this.likeNum = likeNum;
		this.createTime = createTime;
		this.username = username;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getDefineType() {
		return defineType;
	}
	public void setDefineType(int defineType) {
		this.defineType = defineType;
	}
	public int getBlogType() {
		return blogType;
	}
	public void setBlogType(int blogType) {
		this.blogType = blogType;
	}
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Blog [id=" + id + ", userid=" + userid + ", title=" + title + ", content=" + content + ", defineType="
				+ defineType + ", blogType=" + blogType + ", commentNum=" + commentNum + ", likeNum=" + likeNum
				+ ", createTime=" + createTime + ", username=" + username + "]";
	}

	
}
