package com.fenbi.blog.bean;

public class UserType {
	
	private int id;
	private int userid;
	private String name;
	public UserType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserType(int id, int userid, String name) {
		super();
		this.id = id;
		this.userid = userid;
		this.name = name;
	}
	@Override
	public String toString() {
		return "UserType [id=" + id + ", userid=" + userid + ", name=" + name + "]";
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	

}
