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
			<h1><img src="img/icons/document-2-add.png" alt="" />网站导入</h1>

			<div class="bloc">
				<div class="title">
					网站导入
				</div>
				<div class="content">

		
	
				<label for="edu">文件类型</label>
						<select name="select" id="edu">
							<option value="1">xls</option>
							<option value="2">txt</option>
							<option value="3">xml</option>
							<option value="3">properties</option>
						</select>
					<div class="input">
						<label for="file">上传文件</label>
						<input type="file" id="file" />
					</div>
					<br/>
					<br/>
					<div class="submit">
						<input type="submit" value="提交网站文件" />
						<input type="reset"  value="填错重新选择" class="black"/>
					</div>
				</div>
			</div>
			</div>
			
			<div id="content" class="white">
			<h1><img src="img/icons/document-2-remove.png" alt="" />网站导出</h1>

			<div class="bloc">
				<div class="title">
					网站导出
				</div>
				<div class="content">

		
	
				<label for="edu">文件类型</label>
						<select name="select" id="edu">
							<option value="1">xls</option>
							<option value="2">txt</option>
							<option value="3">xml</option>
							<option value="3">properties</option>
						</select>
					<br/>
					<div class="submit">
						<input type="submit" value="导出网站文件" />
						<input type="reset"  value="填错重新选择" class="black"/>
					</div>
				</div>
			</div>
			</div>
       
        
        
    </body>
</html>