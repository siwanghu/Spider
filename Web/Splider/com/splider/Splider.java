package com.splider;

import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.siwanghu.bean.Record;
import com.siwanghu.dao.RecordDao;

/** everything you need to start is in the com.meterware.httpunit package **/

/** This is a simple example of using HttpUnit to read and understand web pages. **/
public class Splider {
	public void splider(String url) throws FailingHttpStatusCodeException, MalformedURLException, IOException, InterruptedException, SQLException{
		Example example=new Example();
		example.splider(url);
	}
}
