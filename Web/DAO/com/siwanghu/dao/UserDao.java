package com.siwanghu.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.siwanghu.bean.User;
import com.siwanghu.utils.JdbcUtils;

public class UserDao {
	private QueryRunner runner;

	public UserDao() {
		runner = new QueryRunner(JdbcUtils.getDataSource());
	}
	
	public User find(String uuid) throws SQLException{
		String sql="select * from user where uuid=?";
		Object params[] = {uuid};
		return (User)runner.query(sql, params,new BeanHandler(User.class));
	}
	
	public boolean findUser(String account) throws SQLException{
		String sql="select * from user where account=?";
		Object params[] = {account};
		if((User)runner.query(sql, params,new BeanHandler(User.class))==null){
			return false;
		}else{
			return true;
		}
	}

	public User findUser(String account, String password) throws SQLException {
		String sql = "select * from user where account=? and password=?";
		Object params[] = { account, password };
		return (User) runner.query(sql, params, new BeanHandler(User.class));
	}

	public void addUser(User user) throws SQLException {
		String sql = "insert into user(uuid,account,password,gender,userType,phone,email,note) "
				+ " values(?,?,?,?,?,?,?,?)";
		Object params[] = { user.getUuid(), user.getAccount(),
				user.getPassword(), user.getGender(), user.getUserType(),
				user.getPhone(), user.getEmail(), user.getNote() };
		runner.update(sql, params);
	}

	public void deleteUser(User user) throws SQLException {
		String sql = "delete from user where uuid=?";
		Object params[] = { user.getUuid() };
		runner.update(sql, params);
	}

	public void updateUser(User user) throws SQLException {
		String sql = "update user set account=?,password=?,gender=?,userType=?,phone=?,email=?,note=?"
				+ " where uuid=?";
		Object params[] = { user.getAccount(), user.getPassword(),
				user.getGender(), user.getUserType(), user.getPhone(),
				user.getEmail(), user.getNote(),user.getUuid()};
		runner.update(sql, params);
	}

	public List<User> getPage(int start, int count) throws SQLException {
		String sql = "select * from user limit ?,?";
		Object params[] = { start, count };
		return (List<User>) runner.query(sql, params,new BeanListHandler(User.class));
	}

	public List<User> getAll() throws Exception {
		String sql = "select * from user";
		return (List<User>) runner.query(sql, new BeanListHandler(User.class));
	}

}
