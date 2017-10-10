package com.siwanghu.controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;
import com.siwanghu.service.UserService;

public class ChangePasswordControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user1 = (User) request.getSession().getAttribute("User");
		if (user1 != null) {
			String password = request.getParameter("password");
			String rpassword = request.getParameter("rpassword");
			if (password.equals(rpassword)) {
				try {
					User user = (User) request.getSession()
							.getAttribute("User");
					user.setPassword(password);
					UserService userService = new UserService();
					userService.update(user);
					request.getSession().setAttribute("User", user);
					request.getSession().setAttribute("Users",
							userService.getAll());
					response.sendRedirect("/Web/View/myinfo.jsp");
					return;
				} catch (Exception e) {
					request.getSession()
							.setAttribute("message", "服务器异常，请稍后再试!");
					response.sendRedirect("/Web/View/message.jsp");
					return;
				}
			} else {
				request.getSession().setAttribute("message", "密码填写不一致!");
				response.sendRedirect("/Web/View/message.jsp");
				return;
			}
		}else{
			request.getSession().setAttribute("message", "请先登陆系统!");
			response.sendRedirect("/Web/View/message.jsp");
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
