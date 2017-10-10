package com.siwanghu.controler;

import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;
import com.siwanghu.service.UserService;
import com.siwanghu.service.WebSiteService;

public class RegisterControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String rpassword = request.getParameter("rpassword");
		String email = request.getParameter("email");
		if (rpassword.equals(password)) {
			UserService userService = new UserService();
			WebSiteService webSiteService=new WebSiteService();
			User user = new User(UUID.randomUUID().toString(), username,
					password, 1, "普通用户", "", email, "");
			try {
				if (userService.register(user)) {
					request.getSession().setAttribute("User", user);
					request.getSession().setAttribute("webSites", webSiteService.getAll());
					try {
						request.getSession().setAttribute("Users", userService.getAll());
					} catch (Exception e) {
						response.sendRedirect("/Web/View/login.jsp");
						return;
					}
					response.sendRedirect("/Web/home");
					return;
				}
			} catch (SQLException e) {
				response.sendRedirect("/Web/View/login.jsp");
				return;
			}
		} else {
			response.sendRedirect("/Web/View/login.jsp");
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
