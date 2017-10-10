<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<title>【信】个人征信系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<link rel="SHORTCUT ICON" href="img/system.ico">
		<link rel="BOOKMARK" href="img/favicon.ico">
		<!-- jQuery AND jQueryUI -->
		<script type="text/javascript" src="js/libs/jquery/1.6/jquery.min.js"></script>
		<script type="text/javascript" src="js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>

		<!-- Compressed Version
		<link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
		<script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
		-->
		<link rel="stylesheet" href="css/min.css" />
		<script type="text/javascript" src="js/min.js"></script>

	</head>
	<body>
	
	
	
	                        <div id="content" class="white">
			<h1><img src="img/icons/posts.png" alt="" />时间选择</h1>

			<div class="bloc">
				<div class="title">
					时间
				</div>
				<div class="content">

					<div class="input">

						<label for="personid">时间</label>
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
		
		
		
        <!--            
              CONTENT 
                        --> 
        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" />数据汇总</h1>
<div class="bloc">
    <div class="title">
        表格
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th>中标单位</th>
                    <th>时间范围</th>
                    <th>中标金额</th>
                </tr>
            </thead>
            <tbody>
                                <tr>
                    <td><a href="#">XXX公司</a></td>
                    <td><a href="#">2015年</a></td>
                    <td><a href="#">100000</td>
                   
                </tr>
                                                <tr>
                    <td><a href="#">XXX公司</a></td>
                    <td><a href="#">2015年</a></td>
                    <td><a href="#">100000</td>
                   
                </tr>
                                                <tr>
                    <td><a href="#">XXX公司</a></td>
                    <td><a href="#">2015年</a></td>
                    <td><a href="#">100000</td>
                   
                </tr>
                                                <tr>
                    <td><a href="#">XXX公司</a></td>
                    <td><a href="#">2015年</a></td>
                    <td><a href="#">100000</td>
                   
                </tr>
                                                <tr>
                    <td><a href="#">XXX公司</a></td>
                    <td><a href="#">2015年</a></td>
                    <td><a href="#">100000</td>
                   
                </tr>
                                <tr>
                    <td><a href="#">XXX公司</a></td>
                    <td><a href="#">2015年</a></td>
                    <td><a href="#">100000</td>
                   
                </tr>
                                <tr>
                    <td><a href="#">XXX公司</a></td>
                    <td><a href="#">2015年</a></td>
                    <td><a href="#">100000</td>
                   
                </tr>

                            </tbody>
        </table>
        <div class="pagination">
            <a href="#" class="prev">«</a>
            <a href="#">1</a>
            <a href="#" class="current">2</a>
            ...
            <a href="#">21</a>
            <a href="#">22</a>
            <a href="#" class="next">»</a>
        </div>
    </div>
</div>



        </div>
        
        
    </body>
</html>