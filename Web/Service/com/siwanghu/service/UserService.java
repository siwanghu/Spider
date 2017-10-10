package com.siwanghu.service;

import java.sql.SQLException;
import java.util.List;

import com.siwanghu.bean.User;
import com.siwanghu.dao.UserDao;

public class UserService {
	private UserDao userDao;

	public UserService() {
		userDao = new UserDao();
	}
	
	public User find(String uuid) throws SQLException{
		return userDao.find(uuid);
	}

	public boolean register(User user) throws SQLException {
		if (userDao.findUser(user.getAccount())) {
			throw new RuntimeException("用户名以存在!");
		} else {
			userDao.addUser(user);
			return true;
		}
	}

	public User login(String account, String password) throws SQLException {
		if (userDao.findUser(account, password) != null) {
			return userDao.findUser(account, password);
		} else {
			throw new RuntimeException("登陆失败!");
		}
	}
	
	public void delete(User user) throws SQLException{
		userDao.deleteUser(user);
	}
	
	public List<User> getAll() throws Exception{
		return userDao.getAll();
	}
	
	public void update(User user) throws SQLException{
		userDao.updateUser(user);
	}
}
