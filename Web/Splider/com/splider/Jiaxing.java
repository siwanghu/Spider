package com.splider;

import java.util.List;
import java.util.logging.Level;

import org.apache.commons.logging.LogFactory;

import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.DomElement;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.siwanghu.dao.RecordDao;

public class Jiaxing {

	public void splider2() {
		try {
			LogFactory.getFactory().setAttribute(
					"org.apache.commons.logging.Log",
					"org.apache.commons.logging.impl.NoOpLog");
			java.util.logging.Logger.getLogger("com.gargoylesoftware.htmlunit")
					.setLevel(Level.OFF);
			java.util.logging.Logger.getLogger("org.apache.commons.httpclient")
					.setLevel(Level.OFF);
			String _name = "", _unit = "", _time = "", _amount = "";
			WebClient webClient = new WebClient();
			boolean flag = true;
			int page_size = 0;
			webClient.getOptions().setCssEnabled(true);
			webClient.getOptions().setJavaScriptEnabled(true);
			webClient.getOptions().setThrowExceptionOnFailingStatusCode(false);
			webClient.getOptions().setRedirectEnabled(true);
			webClient.setJavaScriptTimeout(0);
			HtmlPage page = webClient
					.getPage("http://www.jxzbtb.gov.cn/jxcms/jxztb/category/jygg/jdbmgz/jdbmgz_jg/list.html");
			String xml=page.asXml();
			System.out.println(xml);
			String url="http://www.jxzbtb.gov.cn/jxcms/content/list-list.action?categoryId=8af652bc4153e05f0141545ffde6009d";
			page=webClient.getPage(url);
			System.out.println(page.asText());
			List<HtmlElement> list_a=page.getBody().getElementsByTagName("a");
			RecordDao recordDao = new RecordDao();
			while (flag) {
				flag = false;
				for (int i = 0; i < list_a.size(); i++) {
					if ((list_a.get(i).asText().contains("公示")
							|| list_a.get(i).asText().contains("工程")
							|| list_a.get(i).asText().contains("项目"))&&list_a.get(i).asText().length()>10) {
						System.out.println(list_a.get(i).asText());
						/*page = list_a.get(i).click();
						Thread.sleep(1000);
						HtmlElement table = (HtmlElement) page
								.getElementsByTagName("table");
						List<HtmlElement> trs = table
								.getElementsByTagName("tr");
						for (int j = 0; j < trs.size(); j++) {
							List<HtmlElement> tds = trs.get(j)
									.getElementsByTagName("td");
							List<HtmlElement> spans = tds.get(0)
									.getElementsByTagName("span");
							List<HtmlElement> _spans = tds.get(1)
									.getElementsByTagName("span");
							String name = "", value = "";
							for (int k = 0; k < spans.size(); k++) {
								name += spans.get(k).asText();
							}
							for (int k = 0; k < _spans.size(); k++) {
								value += _spans.get(k).asText();
							}
							if (name.contains("名称")) {
								_name = value;
							}
							if (name.contains("单位")) {
								_unit = value;
							}
							if (name.contains("开标时间")) {
								_time = value;
							}
							if (name.contains("价")) {
								_amount = String
										.valueOf((Float.parseFloat(value
												.replace("万", "")) * 10000));
							}
							System.out.println(_name);
							System.out.println(_unit);
							System.out.println(_time);
							System.out.println(_amount);
						}*/
					}
				}

				for (int i = 0; i < list_a.size(); i++) {
					if (list_a.get(i).asText().contains("下一页")) {
						page = list_a.get(i).click();
						Thread.sleep(1000);
						list_a=page.getBody().getElementsByTagName("a");
						flag = true;
						page_size++;
						break;
					}
				}
				
				for (int i = 1; i < webClient.getWebWindows().size(); i++) {
					webClient.deregisterWebWindow(webClient.getWebWindows().get(i));
				}

			}
			webClient.closeAllWindows();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static void main(String[] args) {
		Jiaxing splider2 = new Jiaxing();
		splider2.splider2();
	}

}
