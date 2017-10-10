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
		<style type="text/css">
			.input {
				float: left;
				margin-left: 5px;
			}
			#contents>div{
				float: none;
			}
		</style>
	</head>
	<body>

		<!--
		CONTENT
		-->
		<div id="content" class="white">
			<h1><img src="img/icons/posts.png" alt="" />系统帮助</h1>

			<div class="bloc">
				<div class="title">
					帮助信息
				</div>
				<div class="content">
			<label>暂时没有帮助信息!</label>
			<label>开发团队:胡思旺,王营,王宏,聂佳</label>
				</div>
			</div>

		</div>

	</body>
</html>