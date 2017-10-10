package com.splider;

import java.util.List;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.logging.LogFactory;

import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.siwanghu.bean.Record;
import com.siwanghu.dao.RecordDao;

public class Zhongshang {
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
					.getPage("http://www.zszfcg.gov.cn/news/96.html");
			HtmlElement bodyElement = page.getBody();
			List<HtmlElement> list_a = bodyElement.getElementsByTagName("a");
			while (flag) {
				flag=false;
				System.out.println(page_size);
				for (int i = 0; i < list_a.size(); i++) {
					if ((list_a.get(i).asText().contains("公告") || list_a.get(i)
							.asText().contains("公示"))
							&& list_a.get(i).asText().length() > 10) {
						int end=list_a.get(i).asText().indexOf("项目");
						if(end!=-1){
							_name=list_a.get(i).asText().substring(0,end+2);
						}else{
							_name=list_a.get(i).asText().replace("公告", "").replace("公示", "").replace("中标", "")
									.replace("结果", "").replace("采购", "");
						}
						page=list_a.get(i).click();
						Thread.sleep(1000);
						
						List<HtmlElement> divElements=page.getBody().getElementsByTagName("div");
						List<HtmlElement> spanElements=page.getBody().getElementsByTagName("span");
						
						for(int j=0;j<divElements.size();j++){
							if(divElements.get(j).asText().contains("发布时间：")&&divElements.get(j).asText().length()<50){
								int start=divElements.get(j).asText().indexOf("发布时间");
								try{
									_time=divElements.get(j).asText().substring(start+5,divElements.get(j).asText().length());
								}catch(Exception e){
									System.out.println(e.getMessage());
								}
								break;
							}
						}
						
						for(int j=0;j<spanElements.size();j++){
							if(spanElements.get(j).asText().contains("中标人")||
									spanElements.get(j).asText().contains("中标候选人")||
									spanElements.get(j).asText().contains("成交商")||
									spanElements.get(j).asText().contains("供应商")||
									spanElements.get(j).asText().contains("成交人")){
								String regex="：(.*)公司";
								Pattern pattern = Pattern.compile(regex);
								Matcher matcher=pattern.matcher(spanElements.get(j).asText());
								while (matcher.find()) {
							         _unit=matcher.group()+"公司";
							         _unit=_unit.substring(1,_unit.length());
							    }
								break;
							}
						}
						
						for(int j=0;j<spanElements.size();j++){
							if(spanElements.get(j).asText().contains("成交价")||
									spanElements.get(j).asText().contains("中标价")||
									spanElements.get(j).asText().contains("单价")||
									spanElements.get(j).asText().contains("中标金额")||
									spanElements.get(j).asText().contains("报价")||
									spanElements.get(j).asText().contains("价格")){
								String regex="\\d+.\\d+|\\w+|\\d+";
								Pattern pattern = Pattern.compile(regex);
								Matcher matcher=pattern.matcher(spanElements.get(j).asText());
								while (matcher.find()) {
							        _amount=matcher.group();
							    }
								break;
							}
						}
						if(!_name.equals("")&&!_time.equals("")&&!_unit.equals("")&&!_amount.equals("")){
							Record record=new Record(_name, _unit, _time, _amount);
							recordDao.add(record);
						}
						_name="";
						_time="";
						_unit="";
						_amount="";
					}
					if (list_a.get(i).asText().contains("下一页")) {
						page=list_a.get(i).click();
						Thread.sleep(1000);
						list_a=page.getBody().getElementsByTagName("a");
						flag=true;
						page_size++;
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
		Zhongshang.splider();
	}
}
