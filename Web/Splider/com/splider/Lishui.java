package com.splider;

import java.util.List;
import java.util.logging.Level;

import org.apache.commons.logging.LogFactory;

import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.siwanghu.bean.Record;
import com.siwanghu.dao.RecordDao;

public class Lishui {

	public static void splider() {
		try {
			LogFactory.getFactory().setAttribute(
					"org.apache.commons.logging.Log",
					"org.apache.commons.logging.impl.NoOpLog");
			java.util.logging.Logger.getLogger("com.gargoylesoftware.htmlunit")
					.setLevel(Level.OFF);
			java.util.logging.Logger.getLogger("org.apache.commons.httpclient")
					.setLevel(Level.OFF);
			String _name = "", _unit = "", _time = "", _amount = "";
			RecordDao recordDao = new RecordDao();
			WebClient webClient = new WebClient();
			boolean flag = true;
			int page_size = 0;
			webClient.getOptions().setCssEnabled(false);
			webClient.getOptions().setJavaScriptEnabled(true);
			webClient.getOptions().setThrowExceptionOnFailingStatusCode(false);
			webClient.getOptions().setThrowExceptionOnScriptError(false);
			webClient.setJavaScriptTimeout(0);
			HtmlPage page = webClient
					.getPage("http://www.lscgzb.gov.cn/index.php?m=content&c=index&a=lists&catid=20");
			HtmlElement bodyElement = page.getBody();
			List<HtmlElement> list_a = bodyElement.getElementsByTagName("a");
			HtmlElement dom = null;
			while (flag) {
				flag = false;
				for (int i = 0; i < list_a.size(); i++) {
					dom = list_a.get(i);
					String name = list_a.get(i).asText();
					if (name.contains("公告") && name.length() > 10) {
						System.out.println(name);
						_name = name.replace("中标", "").replace("公告", "")
								.replace("结果", "");
						page = dom.click();
						Thread.sleep(1000);
						try {
							_time = page.getBody()
									.getElementsByTagName("table").get(2)
									.getElementsByTagName("table").get(2)
									.getElementsByTagName("tr").get(2).asText()
									.replace("发布时间：", "").split(" ")[0];
						} catch (Exception e) {
							System.out.println(e.getMessage());
						}

						List<HtmlElement> pElementls = page.getBody()
								.getElementsByTagName("p");

						for (int k = 0; k < pElementls.size(); k++) {
							if ((pElementls.get(k).asText().contains("中标人")
									|| pElementls.get(k).asText()
											.contains("成交人")
									|| pElementls.get(k).asText()
											.contains("成交供应商") || pElementls
									.get(k).asText().contains("中标供应商"))
									&& pElementls.get(k).asText().length() < 20) {
								try {
									_unit = pElementls.get(k).asText()
											.split("：")[1];
								} catch (Exception e) {
									System.out.println(e.getMessage());
								}
								break;
							}
						}

						for (int k = 0; k < pElementls.size(); k++) {
							if ((pElementls.get(k).asText().contains("中标金额") || pElementls
									.get(k).asText().contains("成交金额"))) {
								try {
									int start = pElementls.get(k).asText()
											.indexOf("（");
									int end = pElementls.get(k).asText()
											.indexOf("）");
									_amount = pElementls.get(k).asText()
											.substring(start + 2, end);
									if (_amount.startsWith("：")) {
										_amount = _amount.replace("：", "");
									}
									if (_amount.startsWith(":")) {
										_amount = _amount.replace(":", "");
									}
									if (_amount.endsWith("元")) {
										_amount = _amount.replace("元", "");
									}
									break;
								} catch (Exception e) {
									System.out.println(e.getMessage());
								}
								break;
							}
						}
						Record record = new Record(_name, _unit, _time, _amount);
						recordDao.add(record);
						// System.out.println(_name+"||");
						// System.out.println(_unit+"||");
						// System.out.println(_time+"||");
						// System.out.println(_amount+"||");
					}
					if (name.contains("下一页")) {
						page = dom.click();
						Thread.sleep(1000);
						flag = true;
						page_size++;
						list_a = page.getBody().getElementsByTagName("a");
						break;
					}
				}
				for (int i = 1; i < webClient.getWebWindows().size(); i++) {
					webClient.deregisterWebWindow(webClient.getWebWindows()
							.get(i));
				}
			}
			webClient.closeAllWindows();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static void main(String[] args) {
		Lishui splider3 = new Lishui();
		splider3.splider();
	}
}
