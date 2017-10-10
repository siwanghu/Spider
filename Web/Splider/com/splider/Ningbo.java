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


public class Ningbo {
	public static void spliderwork() throws FailingHttpStatusCodeException, MalformedURLException, IOException, InterruptedException, SQLException{
		WebClient wc=new WebClient();
		  boolean k=true;
		  int z=0;
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
		  RecordDao recordDao=new RecordDao();
		  page=wc.getPage("http://www.nbzfcg.cn/project/MoreNotice.aspx?Type=3");
		  he=page.getHtmlElementById("ctl00_ContentPlaceHolder3_gdvNotice3");
		  
		  while(k){
			  System.out.println(z);
			  k=false;
			  e=he.getElementsByTagName("a");
			  for(int i=0;i<e.size();i++){
				  dom=e.get(i);
				  if(dom.asText().contains("公告")){
					  System.out.println(dom.asText());
					  pageg=dom.click();
					  boolean k1=false;
					  int time=0;
					  while(!k1){
							  if(!pageg.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_lblNoticeContent").isEmpty()){
								  ee=(HtmlElement) pageg.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_lblNoticeContent").get(0);
								  k1=true;
							  }else{
								  pageg=dom.click();
								  Thread.sleep(1000);
							  }

					  }
					  if(5000<=time){
						  System.out.println("访问超时");
						  return;
					  }
					  List<HtmlElement> table=ee.getHtmlElementsByTagName("table");
					  if(table.size()>1){
						  List<HtmlElement> td=table.get(0).getElementsByTagName("td");
						  
						  String s1=null,s2=null,s3=null,s4=null;
						  for(int j=0;j<td.size();j++){
							  if(td.get(j).getChildElementCount()<2){
								  if(td.get(j).asText().equals("二、项目名称：")){
									  s1=td.get(j+1).asText();
								  }else if(td.get(j).asText().contains("二、项目名称：")){
									  s1=td.get(j).asText().substring(7);
								  }
								  if(td.get(j).asText().equals("四、定标日期：")){
									  s2=td.get(j+1).asText();
								  }else if(td.get(j).asText().contains("四、定标日期：")){
									  s2=td.get(j).asText().substring(7);
								  }
							  }
						  }
						  List<HtmlElement> tr=table.get(1).getElementsByTagName("tr");
						  td=tr.get(0).getElementsByTagName("td");
						  int a=-1,b=-1;
						  for(int j=0;j<td.size();j++){
							  if(td.get(j).getChildElementCount()<2){
								  if(td.get(j).asText().contains("中标")){
									  if(td.get(j).asText().contains("中标价")||td.get(j).asText().contains("中标金额")){
										  a=j;
									  }else if((td.get(j).asText().contains("中标供应商")&&!td.get(j).asText().contains("地址"))){
										  b=j;
									  }
								  }
							  }  
						  }
						  if(a!=-1&&b!=-1){
							  for(int m=1;m<2;m++){
								  td=tr.get(m).getElementsByTagName("td");
								  if(a<td.size()&&b<td.size()){
									  s3=td.get(b).asText();
									  s4=td.get(a).asText();
								  }							 
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
			                    			  }while(s2.charAt(j)>='0'&&s2.charAt(j)<='9');
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
			                    	  s2=new Date(year-1900,month-1,day).toString();
			                    	  s4=money.toString();
			                    	  if(s1.length()>255||money<10000||s2.length()>255||s3.length()>255||s4.length()>255)
			                    		  continue;
			                    	  System.out.println(s1);
			                    	  Record record=new Record(s1, s3, s2, s4);
			                    	  recordDao.add(record);
			                    	 // Splider splider=new Splider(s1,s2,s3,s4);
			                    	 // if(!spliderdao.exist(s1))
			                    		 // spliderdao.save(splider);
			                      }
							  
		                      }
						  }
					  }
				  }
						  
				  
			  }
			  for(int i=0;i<e.size();i++){
				  dom=e.get(i);
				  if(dom.asXml().contains("下页")&&!dom.asXml().contains("disabled")){
					  page=dom.click();
					  Thread.sleep(1000);
					  k=true;
					  boolean k1=true;
					  while(k1){
						  if(page.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_gdvNotice3").isEmpty()){
							  Thread.sleep(1000);
							  
						  }else{
							  he=(HtmlElement) page.getElementsByIdAndOrName("ctl00_ContentPlaceHolder3_gdvNotice3").get(0);
							  k1=false;
						  }
					  }
					  z++;
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
