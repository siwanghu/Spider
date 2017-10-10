<%@page import="com.siwanghu.bean.Record"%>
<%@page import="com.siwanghu.service.RecordService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>省政府采购网中标数据采集工具</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
		String flag = request.getParameter("flag");
		if (flag.equals("true")) {
			RecordService recordService = new RecordService();
			int currentPage = 1;
			int start = (currentPage - 1) * 10;
			int count = 10;
			int[] nums = { currentPage + 1, currentPage + 2,
					currentPage + 3, currentPage + 4 };
			request.getSession().setAttribute("currentPage", currentPage);
			request.getSession().setAttribute("start", start);
			request.getSession().setAttribute("count", count);
			request.getSession().setAttribute("nums", nums);
			List<Record> records = recordService.getPage(start, count);
			request.getSession().setAttribute("Records", records);
		}
	%>

	<!--            
              CONTENT 
                        -->
	<div id="content" class="white">
		<h1>
			<img src="img/icons/posts.png" alt="" />数据汇总
		</h1>
		<div class="bloc">
			<div class="title">表格</div>
			<div class="content">
				<table>
					<thead>
						<tr>
							<th>序号</th>
							<th>项目名称</th>
							<th>中标单位</th>
							<th>中标时间</th>
							<th>中标金额</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${Records}" var="record" varStatus="status">
							<tr>
								<td><a href="#">${status.index}</a></td>
								<td><a href="#">${record.name}</a></td>
								<td><a href="/Web/View/myChart.jsp?id=${ record.id}">${record.unit }</a></td>
								<td><a href="#">${record.time }</a></td>
								<td><a href="#">${record.amount }</td>
							</tr>
						</c:forEach>
				</table>
				<div class="pagination">
					<a href="/Web/PrevControler.do" class="prev">«</a> <a href="#"
						class="current">${ currentPage }</a>
					<c:forEach items="${nums }" var="num">
						<a href="/Web/NumControler.do?num=${num }">${num }</a>
					</c:forEach>
					<a href="/Web/NextControler.do" class="next">»</a>
				</div>
			</div>
		</div>
	</div>







	<div id="content" class="white">
		<h1>
			<img src="img/icons/chart.png" alt="" /> 统计分析
		</h1>
		<div class="bloc">
			<div class="title">
				表格
				<div class="tabs" id="charts">
					<a href="#line">曲线图</a> <a href="#bar">直方图</a>
				</div>
			</div>
			<div style="margin-left:30px;margin-bottom:15px">
				<div class="content" id="line">
					<table class="graph type-line dots tips">
						<caption>中标单位中标金额数据趋势</caption>
						<thead>
							<tr>
								<td></td>
								<c:forEach items="${Records}" var="record" varStatus="status">
									<th scope="col">${status.index}</th>
								</c:forEach>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">元(单位)</th>
								<c:forEach items="${Records}" var="record">
									<td >${record.amount}</td>
								</c:forEach>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="content" id="bar">
					<table class="graph type-bar">
						<caption>中标单位历史中标金额数据趋势</caption>
						<thead>
							<tr>
								<td></td>
								<c:forEach items="${Records}" var="record" varStatus="status"> 
									<th scope="col">${status.index}</th>
								</c:forEach>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">元(单位)</th>
								<c:forEach items="${Records}" var="record">
									<td >${record.amount}</td>
								</c:forEach>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>



























</body>
</html>