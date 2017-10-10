package com.siwanghu.controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.Record;
import com.siwanghu.bean.User;
import com.siwanghu.service.RecordService;

public class SearchRecordControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = (User) request.getSession().getAttribute("User");
			if (user != null) {
				String keyword = request.getParameter("keyword");
				String name = request.getParameter("name");
				String unit = request.getParameter("unit");
				String amount = request.getParameter("amount");
				String time = request.getParameter("time");
				RecordService recordService = new RecordService();
				List<Record> results = new ArrayList<Record>();
				List<Record> results_n, results_u, results_a, results_t, results_k;
				if (keyword != null && keyword.replaceAll(" ", "").length() > 0) {
					results_k = recordService.find(keyword);
					results.addAll(results_k);
				}
				if (name != null && name.replaceAll(" ", "").length() > 0) {
					results_n = recordService.findbyName(name);
					results.addAll(results_n);
				}
				if (unit != null && unit.replaceAll(" ", "").length() > 0) {
					results_u = recordService.findbyUnit(unit);
					results.addAll(results_u);
				}
				if (amount != null && amount.replaceAll(" ", "").length() > 0) {
					results_a = recordService.findbyMoney(amount);
					results.addAll(results_a);
				}
				if (time != null && time.replaceAll(" ", "").length() > 0) {
					results_t = recordService.findbyTime(time);
					results.addAll(results_t);
				}
				request.getSession().setAttribute("Results", results);
				response.sendRedirect("/Web/View/search_result.jsp");
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
