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
		<!--<link rel="stylesheet" href="css/style.css" />-->
		<script type="text/javascript" src="js/min.js"></script>

	</head>

	<body>
		<!--
		SIDEBAR
		-->
		<div id="sidebar">
			<ul>
				<li class="current">
					<a href="dashboard.jsp" target="main"> <img src="img/icons/menu/inbox.png" alt="" /> 我的桌面 </a>
				</li>
				<li >
					<a href="#"><img src="img/icons/menu/list.png" alt="" /> 个人信息</a>
					<ul>
						
						<li>
							<a href="myinfo.jsp?p=myinfo" target="main">我的信息</a>
						</li>
						<li>
							<a href="editinfo.jsp?p=editinfo" target="main">信息修改</a>
						</li>
						<li>
							<a href="changepass.jsp?p=changepass" target="main">密码修改</a>
						</li>

					</ul>
				</li>

				<li >
					<a href="#"><img src="img/icons/menu/skype.png" alt="" />网站配置</a>
					<ul>

						<li>
							<a href="web_site_manage.jsp?p=edittable" target="main">网站管理</a>
						</li>
						<li>
							<a href="web_site_conf.jsp?p=gallery" target="main">网站配置</a>
						</li>

					</ul>
				</li>

				<li >
					<a href="#"><img src="img/icons/menu/basket.png" alt="" />数据管理</a>
					<ul>
						<li>
							<a href="search.jsp?p=typo" target="main">数据查询</a>
						</li>
						<li>
							<a href="table.jsp?flag=true" target="main">数据汇总</a>
						</li>
					</ul>
				</li>
				<li >
					<a href="#"><img src="img/icons/menu/user.png" alt="" />系统管理</a>
					<ul>
						<li>
							<a href="user_manage.jsp?p=typo" target="main">用户管理</a>
						</li>
						<li>
							<a href="help.jsp" target="main">系统帮助</a>
						</li>
						
					</ul>
				</li>

				
			</ul>

		</div>
	</body>
</html>
