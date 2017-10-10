<%@page import="com.siwanghu.service.WebSiteService"%>
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

		<!-- Compressed Version
		<link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
		<script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
		-->
		<link rel="stylesheet" href="css/min.css" />
		<script type="text/javascript" src="js/min.js"></script>

	</head>
	<body>
	
	<%
	
	String uuid=request.getParameter("uuid");
			WebSiteService webSiteService=new WebSiteService();
			request.getSession().setAttribute("Site", webSiteService.find(uuid));
	 %>

		<!--
		CONTENT
		-->
		<div id="content" class="white">
			<h1><img src="img/icons/posts.png" alt="" />网站修改</h1>
	
			<div class="bloc">
				<div class="title">
					网站修改
				</div>
				<form method="post"  action="/Web/ChangeWebSiteControler.do">
				<div class="content">

					<div class="input">
						<label for="input1">省份</label>
						<input type="text"  id="input1"  value="${Site.province }" name="province"/>
						<label for="personid">市级</label>
						<input type="text"  id="personid"  value="${Site.city }" name="city"/>
		
					</div>

					<div class="input">
						<label for="input2">网址</label>
						<input type="text"  id="input2" value="${Site.url }" name="url"/>

					</div>
									<div class="content" id="contents">
					
					<div class="submit" >
						<input type="submit" value="提交所填信息" />
						<input type="reset"  value="填错了想重置" class="black"/>
						<!--<input type="reset" value="White button" class="white"/>-->
					</div>
				</div>

				</div>
				</form>
			</div>
			
		</div>
	</body>
</html>