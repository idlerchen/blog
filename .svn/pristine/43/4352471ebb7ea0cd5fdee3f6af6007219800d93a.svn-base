package com.fenbi.blog.service;

import com.fenbi.blog.bean.User;

public interface UserService {
	
	int saveUser(User user);
	
	User getUser(String username,String password);
	
	User checkUsername(String username);
	
	User checkTelephone(String telephone);
	
	//修改个人信息
	int updateUser(User user);
	
	//根据用户名修改password
	int updatePassword(String password,String username);
	
	//根据用户名修改likes
	int updateLikes(String likes,String username);

}
