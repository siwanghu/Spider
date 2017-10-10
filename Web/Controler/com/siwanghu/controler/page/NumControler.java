package com.siwanghu.controler.page;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.Record;
import com.siwanghu.bean.User;
import com.siwanghu.service.RecordService;

public class NumControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = (User) request.getSession().getAttribute("User");
			if (user != null) {
				String num = request.getParameter("num");
				int currentPage = Integer.parseInt(num);
				request.getSession().setAttribute("currentPage", currentPage);
				int start = (currentPage - 1) * 10;
				int count = 10;
				int[] nums = { currentPage + 1, currentPage + 2,
						currentPage + 3, currentPage + 4 };
				RecordService recordService = new RecordService();
				request.getSession().setAttribute("currentPage", currentPage);
				request.getSession().setAttribute("start", start);
				request.getSession().setAttribute("count", count);
				request.getSession().setAttribute("nums", nums);
				List<Record> records = recordService.getPage(start, count);
				request.getSession().setAttribute("Records", records);
				response.sendRedirect("/Web/View/table.jsp?flag=false");
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
