<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<title>省政府采购网中标数据采集工具</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<link rel="SHORTCUT ICON" href="img/system.ico">
		<link rel="BOOKMARK" href="img/favicon.ico">
		<!-- jQuery AND jQueryUI -->
		<script type="text/javascript" src="js/libs/jquery/1.6/jquery.min.js"></script>
		<script type="text/javascript" src="js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>

		
		<link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
		<script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
		
		<link rel="stylesheet" href="css/min.css" />
	
		
		<script type="text/javascript" src="js/min.js"></script>

	</head>
	<body>
        <!--            
              CONTENT 
                        --> 
                        <div id="content" class="white">
			<h1><img src="img/icons/posts.png" alt="" />中标单位选择</h1>

			<div class="bloc">
				<div class="title">
					中标单位
				</div>
				<div class="content">

					<div class="input">

						<label for="personid">中标单位</label>
						<input type="text" readonly="readonly" id="personid" />
						
					</div>
					<br/>
					<div class="submit" >
						<input type="submit" value="提交所填单位" />
						<input type="reset"  value="填错了想重置" class="black"/>
						<!--<input type="reset" value="White button" class="white"/>-->
					</div>

				</div>
			</div>
		</div>
      <div id="content" class="white">
        
            
<h1><img src="img/icons/chart.png" alt="" /> 统计分析</h1>

<div class="bloc">


    <div class="title">
        表格
        <div class="tabs" id="charts">
            <a href="#line">曲线图</a>
            <a href="#bar">直方图</a>
        </div>
    </div>
    <div style="margin-left:30px;margin-bottom:15px">
        <div class="content" id="line">
            <table class="graph type-line dots tips">
                <caption>XXX中标单位历史中标金额数据趋势</caption> 
                <thead> 
                        <tr> 
                                <td></td> 
                                    <th scope="col">1</th>
                                    <th scope="col">2</th>
                                    <th scope="col">3</th>
                                    <th scope="col">4</th>
                                    <th scope="col">5</th>
                                    <th scope="col">6</th>
                                    <th scope="col">7</th>
                                    <th scope="col">8</th>
                                    <th scope="col">9</th>
                                    <th scope="col">10</th>
                                    <th scope="col">11</th>
                                    <th scope="col">12</th>
                        </tr> 
                </thead> 
                <tbody> 
                        <tr> 
                                <th scope="row">XXX中标单位</th> 
                                <td>40</td> 
                                <td>80</td> 
                                <td>90</td> 
                                <td>25</td> 
                                <td>65</td> 
                                <td>119</td>
                                <td>40</td> 
                                <td>80</td> 
                                <td>90</td> 
                                <td>25</td> 
                                <td>20</td> 
                                <td>90</td>  
                        </tr>        
                </tbody> 
            </table>
        </div>
        <div class="content" id="bar">
            <table class="graph type-bar">
                    <caption>XXX中标单位历史中标金额数据趋势</caption>
                    <thead>
                            <tr>
                                    <td></td>
                                    <th scope="col">1</th>
                                    <th scope="col">2</th>
                                    <th scope="col">3</th>
                                    <th scope="col">4</th>
                                    <th scope="col">5</th>
                                    <th scope="col">6</th>
                                    <th scope="col">7</th>
                                    <th scope="col">8</th>
                                    <th scope="col">9</th>
                                    <th scope="col">10</th>
                                    <th scope="col">11</th>
                                    <th scope="col">12</th>
                            </tr>
                    </thead>
                    <tbody> 
                            <tr> 
                                    <th scope="row">XXX中标单位</th> 
                                    <td>40</td> 
                                    <td>80</td> 
                                    <td>90</td> 
                                    <td>25</td> 
                                    <td>65</td> 
                                    <td>119</td>
                                    <td>40</td> 
                                    <td>80</td> 
                                    <td>90</td> 
                                    <td>25</td> 
                                    <td>20</td> 
                                    <td>90</td>  
                            </tr>        
                    </tbody> 
            </table>
        </div>
    </div>
</div>
        </div>
        
       


       
    </body>
</html>