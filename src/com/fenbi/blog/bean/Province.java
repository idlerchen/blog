package com.fenbi.blog.bean;

public class Province {

	private String id;
	private String name;
	@Override
	public String toString() {
		return "Province [id=" + id + ", name=" + name + "]";
	}
	public Province() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Province(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
