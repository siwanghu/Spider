package com.splider;
import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;





import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.siwanghu.bean.Record;
import com.siwanghu.dao.RecordDao;


public class Hangzhou {
	public static void spliderwork() throws FailingHttpStatusCodeException, MalformedURLException, IOException, InterruptedException, SQLException{
		 WebClient wc=new WebClient();
		  boolean k=true;
		  int z=0;
		  int m=0;
		  wc.getOptions().setCssEnabled(false);
		  wc.getOptions().setJavaScriptEnabled(true);
		  wc.getOptions().setThrowExceptionOnFailingStatusCode(false);
		  wc.setJavaScriptTimeout(0);
		  HtmlPage page=null;
		  HtmlPage pageg=null;
		  HtmlElement dom=null;
		  HtmlElement ee=null;
		  HtmlElement he=null;
		  List<HtmlElement> e=null;
		  //SpliderDAO spliderdao=new SpliderDAO();
		  RecordDao recordDao=new RecordDao();
		  page=wc.getPage("http://cg.hzft.gov.cn/www/noticelist.do?noticetype=5,6");
		  while(k){
			  System.out.println(m);
			  k=false;
			  he=page.getBody();
			  he=he.getHtmlElementsByTagName("ul").get(4);
			  e=he.getHtmlElementsByTagName("a");
			  for(int i=0;i<e.size();i++){
				  dom=e.get(i);
				  System.out.println(dom.asText());
				  pageg=dom.click();
				  boolean k1=false;
				  int time=0;
//				  while(!k1){
//					  if(!pageg.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_lblNoticeContent").isEmpty()){
//						  ee=(HtmlElement) pageg.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_lblNoticeContent").get(0);
//						  k1=true;
//					  }else{
//						  pageg=dom.click();
//						  Thread.sleep(1000);
//					  }
//
//				  }
//				  if(5000<=time){
//					  System.out.println("访问超时");
//					  return;
//				  }
				  List<HtmlElement> p=pageg.getBody().getElementsByTagName("p");
				  String s1=null,s2=null,s3=null,s4=null;
				  for(int j=0;j<p.size();j++){
					  ee=p.get(j);
					  if(ee.asText().contains("二、采购项目名称：")){
						  for(z=0;z<ee.asText().length();z++){
							  if(ee.asText().charAt(z)=='：')
								  break;
						  }
						  s1=ee.asText().substring(z+1);
					  }else if(ee.asText().contains("六、采购公告发布日期：")){
						  for(z=0;z<ee.asText().length();z++){
							  if(ee.asText().charAt(z)=='：')
								  break;
						  }
						  s2=ee.asText().substring(z+1);
					
					  }else if(ee.asText().contains("七、预成交结果：")){
						  ee=p.get(j+1);
						  String s=ee.asText();
						  System.out.println(ee.asText());
						  if(s.contains("中标供应商：")&&s.contains("，中标金额：")&&s.contains("；")){
							  int a,b,c;
							  a=s.indexOf("中标供应商：");
							  b=s.indexOf("，中标金额：");
							  c=s.indexOf("；");
							  if(a+6<b&&b+6<c){
								  s3=s.substring(a+6,b);
								  s4=s.substring(b+6,c);
							  }
						  }else if(s.contains("中标单位：")&&s.contains("中标价：")&&s.contains("公示期：")){
							  int a,b,c;
							  a=s.indexOf("中标单位：");
							  b=s.indexOf("中标价：");
							  c=s.indexOf("公示期：");
							  if(a+5<b&&b+4<c){
								  s3=s.substring(a+5,b);
								  s4=s.substring(b+4,c);
							  }
						  }else if(s.contains("预中标供应商：")&&s.contains("，预中标金额：")&&s.contains("；")){
							  int a,b,c;
							  a=s.indexOf("预中标供应商：");
							  b=s.indexOf("，预中标金额：");
							  c=s.indexOf("；");
							  if(a+7<b&&b+7<c){
								  s3=s.substring(a+7,b);
								  s4=s.substring(b+7,c);
							  }
						  }else if(s.contains("第1成交候选人：")&&s.contains("，成交金额：")&&s.contains("；")){
							  int a,b,c;
							  a=s.indexOf("第1成交候选人：");
							  b=s.indexOf("，成交金额：");
							  c=s.indexOf("；");
							  if(a+8<b&&b+6<c){
								  s3=s.substring(a+8,b);
								  s4=s.substring(b+6,c);
							  }
							  
						  }else if(s.contains("项目：预中标供应商")&&s.contains("，预中标金额：")&&s.contains("；")){
							  int a,b,c;
							  a=s.indexOf("项目：预中标供应商");
							  b=s.indexOf("，预中标金额：");
							  c=s.indexOf("；");
							  if(a+9<b&&b+7<c){
								  s3=s.substring(a+9,b);
								  s4=s.substring(b+7,c);
							  }
						  }
					  }
				
				  }
				  System.out.printf("%s,%s,%s,%s\n",s1,s2,s3,s4);
			//数据类型转换
				  if(s1!=null&&s2!=null&&s3!=null&&s4!=null){
					  int year=0,month=0,day=0;
					  Integer money=0;
					  int count=0;
					  for(int j=0;j<s2.length();j++){
						  if(s2.charAt(j)<='9'&&s2.charAt(j)>='0'){
							  StringBuilder ad=new StringBuilder();
							  do{
								  ad.append(s2.charAt(j));
								  j++;
							  }while(j<s2.length()&&s2.charAt(j)>='0'&&s2.charAt(j)<='9');
							  switch(count){
							  case 0:
								  year=Integer.parseInt(ad.toString());
								  break;
							  case 1:
								  month=Integer.parseInt(ad.toString());
								  break;
							  case 2:
								  day=Integer.parseInt(ad.toString());
								  break;
							  }
							  count++;
						  }
					  }
					  StringBuilder sb=new StringBuilder();
					  for(int j=0;j<s4.length()&&s4.charAt(j)!='.';j++){
						  if(s4.charAt(j)<='9'&&s4.charAt(j)>='0')
							  sb.append(s4.charAt(j));
					  }
          	  
          		  
					  if(sb.toString().equals(""))
						  continue;
					  else money=Integer.parseInt(sb.toString());
					  if(s4.contains("万"))
						  money*=10000;
					  s2=new Date(year-1900,month-1,day).toString();
					  s4=money.toString();
					  if(s1.length()>255||money<10000||s2.length()>255||s3.length()>255||s4.length()>255)
						  continue;
					  Record record=new Record(s1, s3, s2, s4);
					  recordDao.add(record);
					  //Splider splider=new Splider(s1,s2,s3,s4);
					 // if(!spliderdao.exist(s1)){
						 // System.out.println("11111111111111");
						 // spliderdao.save(splider);
					  //}
						  
				  }
			  }  
			  for(int i=0;i<e.size();i++){
				  e=page.getBody().getElementsByTagName("a");
				  dom=e.get(i);
				  if(dom.asXml().contains("下一页")&&!dom.asXml().contains("disabled")){
					  page=dom.click();
//					  Thread.sleep(1000);
					  k=true;
//					  boolean k1=true;
//					  while(k1){
//						  if(page.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_gdvNotice3").isEmpty()){
//							  Thread.sleep(1000);
//							  
//						  }else{
//							  he=(HtmlElement) page.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_gdvNotice3").get(0);
//							  k1=false;
//						  }
//					  }
					  m++;
					  break;
				  }
				 
			  }
			  e=null;
			  pageg=null;
			  for(int i=1;i<wc.getWebWindows().size();i++){
				  wc.deregisterWebWindow(wc.getWebWindows().get(i));
			  }
			  System.out.println(wc.getWebWindows().size());
		  }
		  wc.closeAllWindows(); 
	}
}
