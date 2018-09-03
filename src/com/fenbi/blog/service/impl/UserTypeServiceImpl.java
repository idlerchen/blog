package com.fenbi.blog.service.impl;

import java.util.List;

import com.fenbi.blog.bean.UserType;
import com.fenbi.blog.dao.UserTypeDao;
import com.fenbi.blog.dao.impl.UserTypeDaoImpl;
import com.fenbi.blog.service.UserTypeService;

public class UserTypeServiceImpl implements UserTypeService {

	UserTypeDao utd = new UserTypeDaoImpl();
	@Override
	public int saveUsertype(UserType usertype) {
		return utd.saveUsertype(usertype);
	}

	@Override
	public List<UserType> getUsertypeByUserid(int userid) {
		return utd.getUsertypeByUserid(userid);
	}

	@Override
	public int updateUsertype(String name, String usertypeid) {
		return utd.updateUsertype(name, usertypeid);
	}

	@Override
	public int delUsertype(String usertypeid) {
		return utd.delUsertype(usertypeid);
	}

}
