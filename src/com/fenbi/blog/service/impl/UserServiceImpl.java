package com.fenbi.blog.service.impl;

import com.fenbi.blog.bean.User;
import com.fenbi.blog.dao.UserDao;
import com.fenbi.blog.dao.impl.UserDaoImpl;
import com.fenbi.blog.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao ud = new UserDaoImpl();
	
	@Override
	public int saveUser(User user) {
		return ud.saveUser(user);
	}

	@Override
	public User getUser(String username, String password) {
		return ud.getUser(username, password);
	}

	@Override
	public User checkUsername(String username) {
		return ud.checkUsername(username);
	}

	@Override
	public User checkTelephone(String telephone) {
		return ud.checkTelephone(telephone);
	}

	@Override
	public int updateUser(User user) {
		
		return ud.updateUser(user);
	}

	@Override
	public int updatePassword(String password, String username) {
		// TODO Auto-generated method stub
		return ud.updatePassword(password, username);
	}

	@Override
	public int updateLikes(String likes, String username) {
		// TODO Auto-generated method stub
		return ud.updateLikes(likes, username);
	}

}
