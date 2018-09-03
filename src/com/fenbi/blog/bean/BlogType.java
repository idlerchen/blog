package com.fenbi.blog.bean;

/*
 * 博客类型的实体类，
 */
public class BlogType {

	private int id;
	private String name;
	public BlogType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BlogType(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	@Override
	public String toString() {
		return "BlogType [id=" + id + ", name=" + name + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
