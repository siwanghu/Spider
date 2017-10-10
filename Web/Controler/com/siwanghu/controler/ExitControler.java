package com.siwanghu.controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;

public class ExitControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			List<Thread> spliders =(List<Thread>) request.getSession().getAttribute(
					"spliderThread");
			for(int i=0;spliders!=null&&i<spliders.size();i++){
				if(spliders.get(i).isAlive())
					spliders.get(i).stop();
			}
			User user=null;
			List<User> users=null;
			request.getSession().setAttribute("User", user);
			request.getSession().setAttribute("Users", users);
			response.sendRedirect("/Web/View/head.jsp");
			return;
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
