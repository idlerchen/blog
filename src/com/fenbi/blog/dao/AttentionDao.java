package com.fenbi.blog.dao;

import java.util.List;

import com.fenbi.blog.bean.Attention;

public interface AttentionDao {
	
	List<Attention> getAttentionByUserid(String userid);

}
