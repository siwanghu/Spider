package com.siwanghu.controler;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;
import com.siwanghu.service.RecordService;

public class ExportRecordControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user1 = (User) request.getSession().getAttribute("User");
			if (user1 != null) {
				String fileName = "/tmp/" + UUID.randomUUID().toString()
						+ ".xls";
				RecordService recordService = new RecordService();
				recordService.exportRecord(fileName);
				response.setContentType(getServletContext().getMimeType(
						fileName));
				response.setHeader("Content-Disposition",
						"attachment;filename=" + fileName);
				InputStream in = new FileInputStream(fileName);
				OutputStream out = response.getOutputStream();
				int b;
				while ((b = in.read()) != -1) {
					out.write(b);
				}
				in.close();
				out.close();
				File file = new File("/home/siwanghu/Desktop/Assembly/data.xls");
				if (file.exists())
					file.delete();
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
