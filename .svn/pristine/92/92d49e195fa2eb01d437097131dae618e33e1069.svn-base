package com.fenbi.blog.dao.impl;

import java.util.List;

import com.fenbi.blog.bean.BlogType;
import com.fenbi.blog.dao.BaseDao;
import com.fenbi.blog.dao.BlogTypeDao;

public class BlogTypeDaoImpl extends BaseDao<BlogType> implements BlogTypeDao {

	@Override
	public List<BlogType> getBlogtype() {
		String sql = "select id,name from blog_type";
		return this.getBeanList(sql);
	}

	

}
