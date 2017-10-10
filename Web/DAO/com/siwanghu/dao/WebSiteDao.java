package com.siwanghu.dao;

import java.sql.SQLException;
import java.util.List;

import javax.enterprise.inject.New;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.siwanghu.bean.User;
import com.siwanghu.bean.WebSite;
import com.siwanghu.utils.JdbcUtils;

public class WebSiteDao {
	private QueryRunner runner;

	public WebSiteDao() {
		runner = new QueryRunner(JdbcUtils.getDataSource());
	}
	
	public WebSite find(String uuid) throws SQLException{
		String sql="select * from webSite where uuid=?";
		Object params[]={uuid};
		return runner.query(sql, params, new BeanHandler(WebSite.class));
	}

	public void addWebSite(WebSite webSite) throws SQLException {
		String sql = "insert into webSite(uuid,province,city,url) "
				+ " values(?,?,?,?)";
		Object params[] = { webSite.getUuid(), webSite.getProvince(),
				webSite.getCity(), webSite.getUrl() };
		runner.update(sql, params);
	}

	public void deleteWebSite(WebSite webSite) throws SQLException {
		String sql = "delete from webSite where uuid=?";
		Object params[] = { webSite.getUuid() };
		runner.update(sql, params);
	}

	public void updateWebSite(WebSite webSite) throws SQLException {
		String sql = "update webSite set province=?,city=?,url=? where uuid=?";
		Object params[] = { webSite.getProvince(), webSite.getCity(),
				webSite.getUrl(), webSite.getUuid() };
		runner.update(sql, params);
	}
	
	public List<WebSite> getPage(int start,int count) throws SQLException{
		String sql="select * from webSite limit ?,?";
		Object params[] = { start, count };
		return (List<WebSite>) runner.query(sql, params,new BeanListHandler(WebSite.class));
	}
	
	public List<WebSite> getAll() throws SQLException{
		String sql="select * from webSite";
		return (List<WebSite>)runner.query(sql, new BeanListHandler(WebSite.class));
	}
}
