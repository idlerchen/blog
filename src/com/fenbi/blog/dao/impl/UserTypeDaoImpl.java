package com.fenbi.blog.dao.impl;

import java.util.List;

import com.fenbi.blog.bean.UserType;
import com.fenbi.blog.dao.BaseDao;
import com.fenbi.blog.dao.UserTypeDao;

public class UserTypeDaoImpl extends BaseDao<UserType> implements UserTypeDao {

	@Override
	public int saveUsertype(UserType usertype) {
		String sql = "INSERT INTO user_type(userid,NAME) VALUES(?,?)";
		return this.update(sql, usertype.getUserid(),usertype.getName());
	}

	@Override
	public List<UserType> getUsertypeByUserid(int userid) {
		String sql = "SELECT id,userid,NAME FROM user_type WHERE userid = ?";
		return this.getBeanList(sql, userid);
	}

	@Override
	public int updateUsertype(String name,String usertypeid) {
		String sql = "UPDATE user_type SET NAME = ? WHERE id = ?";
		return this.update(sql,name, usertypeid);
	}

	@Override
	public int delUsertype(String usertypeid) {
		String sql = "DELETE FROM user_type WHERE id = ?";
		return this.update(sql, usertypeid);
	}

}
