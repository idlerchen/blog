package com.fenbi.blog.service.impl;

import java.util.List;

import com.fenbi.blog.bean.BlogType;
import com.fenbi.blog.dao.BlogTypeDao;
import com.fenbi.blog.dao.impl.BlogTypeDaoImpl;
import com.fenbi.blog.service.BlogTypeService;

public class BlogTypeServiceImpl implements BlogTypeService {
	
	BlogTypeDao btd = new BlogTypeDaoImpl();
	
	@Override
	public List<BlogType> getBlogtype() {
		
		return btd.getBlogtype();
	}

}
