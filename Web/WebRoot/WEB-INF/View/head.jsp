<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
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
		
		<script type="text/javascript" src="content/settings/main.js"></script>
		<link rel="stylesheet" href="content/settings/style.css" />

		<div class="settings" id="settings">
			<div class="wrapper">
				<div class="grid3">
					<div class="titre">
						设置背景色
					</div>
					<a href="url(css/img/bg.html" class="backgroundChanger active" title="White"></a>
					<a href="url(css/img/dark-bg.html" class="backgroundChanger dark" title="Dark"></a>
					<a href="url(css/img/wood.html" class="backgroundChanger dark" title="Wood"></a>
					<a href="url(css/img/altbg/smoothwall.html" class="backgroundChanger" title="Smoothwall"></a>
					<a href="url(css/img/altbg/black_denim.html" class="backgroundChanger dark" title="black_denim"></a>
					<a href="url(css/img/altbg/carbon.html" class="backgroundChanger dark" title="Carbon"></a>
					<a href="url(css/img/altbg/double_lined.html" class="backgroundChanger" title="Double lined"></a>
					<div class="clear"></div>
				</div>
				<div class="grid3">
					<div class="titre">
						边框颜色
					</div>
					<a href="black.html" class="blocChanger" title="Black" style="background:url(css/img/bloctitle.png);"></a>
					<a href="white.html" class="blocChanger active" title="White" style="background:url(css/img/white-title.png);"></a>
					<a href="wood.html" class="blocChanger" title="Wood" style="background:url(css/img/wood-title.jpg);"></a>
					<div class="clear"></div>
				</div>
				<div class="grid3">
					<div class="titre">
						边框风格
					</div>
					<a href="grey.html" class="sidebarChanger active" title="Grey" style="background:#494949"></a>
					<a href="black.html" class="sidebarChanger" title="Black" style="background:#262626"></a>
					<a href="white.html" class="sidebarChanger" title="White" style="background:#EEEEEE"></a>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<a class="settingbutton" href="#"> </a>
		</div>
		<!--
		HEAD
		-->
		<div id="head">
			<div class="left">
				<a href="#" class="button profile"><img src="img/icons/top/huser.png" alt="" /></a>
				你好,
				<a href="#">胡思旺</a>
				&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="#">退出</a>&nbsp;&nbsp;系统
			</div>
			<div class="right">
					日期:<label>2015年12月1日</label>
			</div>
		</div>

	</body>
</html>
