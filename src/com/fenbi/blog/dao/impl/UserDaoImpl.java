package com.fenbi.blog.dao.impl;

import com.fenbi.blog.bean.User;
import com.fenbi.blog.dao.BaseDao;
import com.fenbi.blog.dao.UserDao;

public class UserDaoImpl extends BaseDao<User> implements UserDao {

	@Override
	public int saveUser(User user) {
		String sql = "INSERT INTO USER(username,PASSWORD,telephone,likes,province_id,city_id) VALUES(?,?,?,?,?,?)";
		return this.update(sql, user.getUsername(),user.getPassword(),user.getTelephone(),user.getLikes(),
				user.getProvinceId(),user.getCityId());
	}

	@Override
	public User getUser(String username, String password) {
		String sql = "SELECT id,username,PASSWORD,telephone,likes,province_id,city_id,create_time " + 
				"FROM USER " + 
				"WHERE username=? AND PASSWORD = ?";
		return this.getBean(sql, username,password);
	}

	@Override
	public User checkUsername(String username) {
		String sql = "SELECT * FROM USER WHERE username = ?";
		return this.getBean(sql, username);
	}

	@Override
	public User checkTelephone(String telephone) {
		String sql = "select * from user where telephone = ?";
		return this.getBean(sql, telephone);
	}

	@Override
	public int updateUser(User user) {
		String sql = "UPDATE USER SET PASSWORD = ?,telephone = ?,likes = ? WHERE id = ?";
		return this.update(sql, user.getPassword(),user.getTelephone(),user.getLikes(),user.getId());
	}

	@Override
	public int updatePassword(String password,String username) {
		String sql = "update user set password = ? where username=?";
		return this.update(sql,password,username);
	}

	@Override
	public int updateLikes(String likes,String username) {
		String sql = "update user set likes = ? where username = ?";
		return this.update(sql, likes,username);
	}

}
