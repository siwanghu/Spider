package com.siwanghu.controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;
import com.siwanghu.bean.WebSite;
import com.siwanghu.service.UserService;
import com.siwanghu.service.WebSiteService;

public class DeleteUserControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user1 = (User) request.getSession().getAttribute("User");
			if (user1 != null) {
				if (((User) request.getSession().getAttribute("User"))
						.getAccount().equals("root")) {
					String uuid = request.getParameter("uuid");
					UserService userService = new UserService();
					User user = userService.find(uuid);
					userService.delete(user);
					request.getSession().setAttribute("Users",
							userService.getAll());
					response.sendRedirect("/Web/View/user_manage.jsp");
					return;
				} else {
					request.getSession().setAttribute("message",
							"只有管理员才有权限删除其他用户!");
					response.sendRedirect("/Web/View/message.jsp");
					return;
				}
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
