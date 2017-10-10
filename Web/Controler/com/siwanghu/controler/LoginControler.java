package com.siwanghu.controler;

import java.io.IOException;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;
import com.siwanghu.service.UserService;
import com.siwanghu.service.WebSiteService;
import com.siwanghu.view.Home;

public class LoginControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserService userService=new UserService();
		WebSiteService webSiteService=new WebSiteService();
		try {
			User user=userService.login(username, password);
			request.getSession().setAttribute("User", user);
			request.getSession().setAttribute("webSites", webSiteService.getAll());
			request.getSession().setAttribute("Users", userService.getAll());
			response.sendRedirect("/Web/home");
			return;
		} catch (Exception e) {
			response.sendRedirect("/Web/View/login.jsp");
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
