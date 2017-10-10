package com.siwanghu.controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;
import com.siwanghu.service.UserService;

public class EditUserControler extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user1 = (User) request.getSession().getAttribute("User");
			if (user1 != null) {
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				String note = request.getParameter("note");
				User user = (User) request.getSession().getAttribute("User");
				UserService userService = new UserService();
				user.setPhone(phone);
				user.setEmail(email);
				user.setNote(note);
				userService.update(user);
				request.getSession().setAttribute("User", user);
				request.getSession()
						.setAttribute("Users", userService.getAll());
				response.sendRedirect("/Web/View/myinfo.jsp");
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
