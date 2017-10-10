package com.siwanghu.controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.Record;
import com.siwanghu.bean.User;
import com.siwanghu.bean.WebSite;
import com.siwanghu.dao.RecordDao;
import com.siwanghu.service.WebSiteService;
import com.splider.Splider;

public class SpliderControler extends HttpServlet {

	public class SpliderThread implements Runnable {
		private String url;

		public SpliderThread(String url) {
			this.url = url;
		}

		@Override
		public void run() {
			Splider splider = new Splider();
			try {
				splider.splider(url);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = (User) request.getSession().getAttribute("User");
			if (user != null) {
				String uuid = request.getParameter("uuid");
				request.getSession().setAttribute("thread", uuid);
				if (uuid.equals("true")) {
					RecordDao recordDao = new RecordDao();
					WebSiteService webSiteService = new WebSiteService();
					Long temp = recordDao.getSize();
					request.getSession().setAttribute("tableSize",
							recordDao.getSize());
					List<Thread> spliders = new ArrayList<Thread>();
					WebSite webSite = webSiteService.find(uuid);
					Thread spliderThread1 = new Thread(
							new SpliderThread(
									"http://www.nbzfcg.cn/project/MoreNotice.aspx?Type=3"));
					spliderThread1.start();
					Thread spliderThread2 = new Thread(
							new SpliderThread(
									"http://cg.hzft.gov.cn/www/noticelist.do?noticetype=5,6"));
					spliderThread2.start();
					Thread spliderThread3 = new Thread(
							new SpliderThread(
									"http://www.lscgzb.gov.cn/index.php?m=content&c=index&a=lists&catid=20"));
					spliderThread3.start();
					spliders.add(spliderThread1);
					spliders.add(spliderThread2);
					spliders.add(spliderThread3);
					request.getSession()
							.setAttribute("spliderThread", spliders);
					response.setHeader("refresh", "1");
					response.sendRedirect("/Web/View/splider.jsp");
					return;
				} else {
					RecordDao recordDao = new RecordDao();
					WebSiteService webSiteService = new WebSiteService();
					Long temp = recordDao.getSize();
					request.getSession().setAttribute("tableSize",
							recordDao.getSize());
					List<Thread> spliders = new ArrayList<Thread>();
					WebSite webSite = webSiteService.find(uuid);
					Thread spliderThread = new Thread(new SpliderThread(
							webSite.getUrl()));
					spliderThread.start();
					spliders.add(spliderThread);
					request.getSession()
							.setAttribute("spliderThread", spliders);
					response.setHeader("refresh", "1");
					response.sendRedirect("/Web/View/splider.jsp");
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
