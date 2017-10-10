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

		<!--
		CONTENT
		-->
		<div id="content" class="white">
			<h1><img src="img/icons/posts.png" alt="" />密码修改</h1>

			<div class="bloc">
				<div class="title">
					个人密码修改
				</div>
				<div class="content">
					<form  method="post" action="/Web/ChangePasswordControler.do">
					<div class="input">
						<label for="input1">账号</label>
						<input type="text" id="input1" readonly="readonly"  placeholder="请在此输入您的真实姓名" value="${User.account}"/>
					</div>
					<div class="input">
						<label for="personid">旧密码</label>
						<input type="password" id="personid"  readonly="readonly" placeholder="请在此输入您的旧密码" value="${User.password}"/>
					</div>
					<div class="input">
						<label for="personid">新密码</label>
						<input type="password" id="personid"  placeholder="请输入您的新密码" name="password"/>
					</div>
					<div class="input">
						<label for="personid">确认密码</label>
						<input type="password" id="personid"  placeholder="请再次输入您的新密码" name="rpassword"/>
					<br />
					</div>
					<div class="submit">
						<input type="submit" value="提交所填信息" />
						<input type="reset"  value="填错了想重置" class="black"/>
					</div>
					</form>
				</div>
			</div>
			</div>

		</div>

	</body>
</html>