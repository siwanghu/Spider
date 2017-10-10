package com.siwanghu.controler;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.siwanghu.bean.User;
import com.siwanghu.bean.WebSite;
import com.siwanghu.service.WebSiteService;

public class FileUploadControler extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user1 = (User) request.getSession().getAttribute("User");
			if (user1 != null) {
				String savePath = this.getServletContext().getRealPath(
						"/WEB-INF/upload");
				String _filename = savePath;
				File file = new File(savePath);
				if (!file.exists() && !file.isDirectory()) {
					file.mkdir();
				}
				String message = "";
				try {
					DiskFileItemFactory factory = new DiskFileItemFactory();
					ServletFileUpload upload = new ServletFileUpload(factory);
					upload.setHeaderEncoding("UTF-8");
					if (!ServletFileUpload.isMultipartContent(request)) {
						return;
					}
					List<FileItem> list = upload.parseRequest(request);
					for (FileItem item : list) {
						if (item.isFormField()) {
							String name = item.getFieldName();
							String value = item.getString("UTF-8");
							System.out.println(name + "=" + value);
						} else {
							String filename = item.getName();
							System.out.println(filename);
							if (filename == null || filename.trim().equals("")) {
								continue;
							}
							filename = UUID.randomUUID().toString()
									+ ".properties";
							_filename = savePath + File.separator + filename;
							InputStream in = item.getInputStream();
							OutputStream out = new FileOutputStream(_filename);
							byte buffer[] = new byte[1024];
							int len = 0;
							while ((len = in.read(buffer)) > 0) {
								out.write(buffer, 0, len);
							}
							in.close();
							out.close();
							item.delete();
							message = "文件上传成功！";
						}
					}
					WebSiteService webSiteService = new WebSiteService();
					Properties properties = new Properties();
					InputStream inputStream = new FileInputStream(_filename);
					properties.load(inputStream);
					Set keyValue = properties.keySet();
					for (Iterator it = keyValue.iterator(); it.hasNext();) {
						String[] key = ((String) it.next()).split("\\|");
						String url = (String) properties.get(key[0] + "|"
								+ key[1]);
						String province = new String(
								key[0].getBytes("ISO-8859-1"), "UTF-8");
						String city = new String(key[1].getBytes("ISO-8859-1"),
								"UTF-8");
						WebSite webSite = new WebSite(UUID.randomUUID()
								.toString(), province, city, url);
						webSiteService.add(webSite);
					}
					request.getSession().setAttribute("webSites",
							webSiteService.getAll());
				} catch (Exception e) {
					message = "文件上传失败！";
				}
				WebSiteService webSiteService = new WebSiteService();
				request.getSession().setAttribute("webSites",
						webSiteService.getAll());
				response.sendRedirect("/Web/View/web_site_manage.jsp");
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
