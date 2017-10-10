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
			<h1><img src="img/icons/posts.png" alt="" />我的基本信息</h1>
	
			<div class="bloc">
				<div class="title">
					基本信息查看
				</div>
				<form method="post"  action="/Web/EditUserControler.do">
				<div class="content">

					<div class="input">
						<label for="input1">账号</label>
						<input type="text" readonly="readonly" id="input1"  value="${User.account }" name="username"/>
						<label for="personid">密码</label>
						<input type="password" readonly="readonly" id="personid"  value="${User.password }" name="password"/>
					
						
		
					</div>

					<div class="input">
						<label for="input2">电话号码</label>
						<input type="text"  id="input2" value="${User.phone }" name="phone"/>
						<label for="input3">邮箱</label>
						<input type="text"  id="input3" value="${User.email }" name="email"/>

					</div>
									<div class="content" id="contents">
					
					<div class="input textarea" >
						<label for="textarea2">备注 </label>
						<textarea  id="textarea2"  class="wysiwyg" rows="7" cols="4" name="note" >
			          		     ${User.note }
			            </textarea>
					</div>
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