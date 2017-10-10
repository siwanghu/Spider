package com.siwanghu.service;

import java.sql.SQLException;
import java.util.List;

import com.siwanghu.bean.WebSite;
import com.siwanghu.dao.WebSiteDao;

public class WebSiteService {
	private WebSiteDao webSiteDao;

	public WebSiteService() {
		webSiteDao = new WebSiteDao();
	}
	
	public WebSite find(String uuid) throws SQLException{
		return webSiteDao.find(uuid);
	}
	
	public void add(WebSite webSite) throws SQLException{
		webSiteDao.addWebSite(webSite);
	}
	
	public void delete(WebSite webSite) throws SQLException{
		webSiteDao.deleteWebSite(webSite);
	}
	
	public void update(WebSite webSite) throws SQLException{
		webSiteDao.updateWebSite(webSite);
	}
	
	public List<WebSite> getAll() throws SQLException{
		return webSiteDao.getAll();
	}
	
}
