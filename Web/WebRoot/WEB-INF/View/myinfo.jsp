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
			<h1><img src="img/icons/posts.png" alt="" />我的基本信息</h1>

			<div class="bloc">
				<div class="title">
					基本信息查看
				</div>
				<div class="content">

					<div class="input">
						<label for="input1">账号</label>
						<input type="text" readonly="readonly" id="input1"  />
						<label for="personid">密码</label>
						<input type="text" readonly="readonly" id="personid" />
						<label class="label">性别</label>
						<input type="radio" id="radio1" name="radiobutton"  checked="checked"/>
						<label for="radio1" class="inline">男</label>
						<input type="radio" id="radio2"  name="radiobutton"/>
						<label for="radio2" class="inline">女</label>
						
						<label for="edu">用户类型</label>
						<select name="select" id="edu">
							<option value="1">普通用户</option>
							<option value="2">收费用户</option>
							<option value="3">管理员</option>
						</select>
					</div>

					<div class="input">
						<label for="input2">电话号码</label>
						<input type="text" readonly="readonly" id="input2" />
						<label for="input3">邮箱</label>
						<input type="text" readonly="readonly" id="input3"/>

					</div>

				</div>
			</div>
			<div class="bloc">
				<div class="title">
					其他输入
				</div>
				<div class="content" id="contents">
					
					<div class="input textarea" >
						<label for="textarea2">备注</label>
						<textarea name="text" id="textarea2"  class="wysiwyg" rows="7" cols="4">
			          		      
			            </textarea>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>