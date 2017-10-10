package com.splider;

import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.apache.commons.logging.LogFactory;

import com.gargoylesoftware.htmlunit.ElementNotFoundException;
import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.WebWindow;
import com.gargoylesoftware.htmlunit.html.DomElement;
import com.gargoylesoftware.htmlunit.html.HtmlDivision;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.javascript.JavaScriptEngine;
import com.gargoylesoftware.htmlunit.util.FalsifyingWebConnection;

/** everything you need to start is in the com.meterware.httpunit package **/

/** This is a simple example of using HttpUnit to read and understand web pages. **/
public class Example {

	public static void main(String[] params)
			throws FailingHttpStatusCodeException, MalformedURLException,
			IOException, InterruptedException, SQLException {
		LogFactory.getFactory().setAttribute(
				"org.apache.commons.logging.Log",
				"org.apache.commons.logging.impl.NoOpLog");
		java.util.logging.Logger.getLogger("com.gargoylesoftware.htmlunit")
				.setLevel(Level.OFF);
		java.util.logging.Logger.getLogger("org.apache.commons.httpclient")
				.setLevel(Level.OFF);
		String ningbo = "http://www.nbzfcg.cn/project/MoreNotice.aspx?Type=3";
		String hangzhou = "http://cg.hzft.gov.cn/www/noticelist.do?noticetype=5,6";
		String lishui="http://www.lscgzb.gov.cn/index.php?m=content&c=index&a=lists&catid=20";
		new Example().splider(ningbo);
	}

	public void splider(String url)
			throws FailingHttpStatusCodeException, MalformedURLException,
			IOException, InterruptedException, SQLException {
		url=url.replaceAll(" ", "");
		if(url.equals("http://www.nbzfcg.cn/project/MoreNotice.aspx?Type=3")){
			 Ningbo.spliderwork();
		}
		if(url.equals("http://cg.hzft.gov.cn/www/noticelist.do?noticetype=5,6")){
			Hangzhou.spliderwork();
		}if(url.equals("http://www.lscgzb.gov.cn/index.php?m=content&c=index&a=lists&catid=20")){
			Lishui.splider();
		}if(url.equals("http://www.zszfcg.gov.cn/news/96.html")){
			Zhongshang.splider();
		}else{
			 Ningbo.spliderwork();
		}
	}
}
