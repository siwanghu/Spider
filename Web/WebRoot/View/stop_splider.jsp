<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="com.siwanghu.bean.Record"%>
<%@page import="com.siwanghu.dao.RecordDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>抓取显示</title>

<link rel="SHORTCUT ICON" href="img/system.ico">
<link rel="BOOKMARK" href="img/favicon.ico">
<!-- jQuery AND jQueryUI -->
<script type="text/javascript" src="js/libs/jquery/1.6/jquery.min.js"></script>
<script type="text/javascript"
	src="js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>

<!-- Compressed Version
		<link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
		<script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
		-->
<link rel="stylesheet" href="css/min.css" />
<script type="text/javascript" src="js/min.js"></script>
</head>
<body>
	<%
		RecordDao recordDao = new RecordDao();
			Long size = Long.parseLong(request.getSession().getAttribute("tableSize").toString());
			List<Record> records = recordDao.getAll(size);
			Collections.reverse(records);
			request.getSession().setAttribute("_Records", records);
	%>
	
	
		<form method="post" action="/Web/StopSpliderControler.do">
		<div id="content" class="white">
			<h1>
				<img src="img/icons/posts.png" alt="" />操作
			</h1>
			<div class="bloc">
				<div class="title">操作</div>
				<div class="content">
					<div class="submit">
						<input type="reset" class="black" value="开始" onclick="javascript:window.location.href='/Web/SpliderControler.do?uuid=${thread}';"/>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	
	<div id="content" class="white">
		<h1>
			<img src="img/icons/posts.png" alt="" />抓取显示
		</h1>
		<div class="bloc">
			<div class="title">表格</div>
			<div class="content">
				<table>
					<thead>
						<tr>
							<th>项目名称</th>
							<th>中标单位</th>
							<th>中标时间</th>
							<th>中标金额</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${_Records}" var="_record" varStatus="status" >
							<tr>
								<td><a href="#">${_record.name}</a></td>
								<td><a href="#">${_record.unit }</a></td>
								<td><a href="#">${_record.time }</a></td>
								<td><a href="#">${_record.amount }</td>
							</tr>
						</c:forEach>
				</table>
			</div>
		</div>
	</div>



</body>
</html>