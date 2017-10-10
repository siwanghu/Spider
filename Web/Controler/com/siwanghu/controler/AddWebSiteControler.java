package com.siwanghu.controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;
import com.siwanghu.bean.WebSite;
import com.siwanghu.service.WebSiteService;

public class AddWebSiteControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = (User) request.getSession().getAttribute("User");
			if (user != null) {
				String province = request.getParameter("province");
				String city = request.getParameter("city");
				String url = request.getParameter("url");
				WebSite webSite = new WebSite(UUID.randomUUID().toString(),
						province, city, url);
				WebSiteService webSiteService = new WebSiteService();
				webSiteService.add(webSite);
				request.getSession().setAttribute("webSites",
						webSiteService.getAll());
				response.sendRedirect("/Web/View/web_site_manage.jsp");
				return;
			}else{
				request.getSession().setAttribute("message", "请先登陆系统!");
				response.sendRedirect("/Web/View/message.jsp");
				return;
			}
		} catch (Exception e) {
			request.getSession().setAttribute("message", "服务器异常，请稍后再试!");
			response.sendRedirect("/Web/View/message.jsp");
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
