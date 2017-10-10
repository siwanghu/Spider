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
	try{
		String id=request.getParameter("id");
		RecordService recordService=new RecordService();
		Record record=recordService.findbyId(Integer.parseInt(id)).get(0);
		List<Record> list=recordService.findbyUnit(record.getUnit());
		for(int i=0;i<list.size();i++){
			list.get(i).setAmount(String.valueOf((Double.parseDouble(list.get(i).getAmount())+Math.random()*10000)));
		}
		request.getSession().setAttribute("Records_T", list);
	}catch(Exception e){
		request.getSession().setAttribute("message", "服务器异常，请稍后再试!");
		response.sendRedirect("/Web/View/message.jsp");
		return;
	}
	%>




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
								<c:forEach items="${Records_T}" var="record" varStatus="status">
									<th scope="col">${status.index}</th>
								</c:forEach>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">元(单位)</th>
								<c:forEach items="${Records_T}" var="record">
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
								<c:forEach items="${Records_T}" var="record" varStatus="status"> 
									<th scope="col">${status.index}</th>
								</c:forEach>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">元(单位)</th>
								<c:forEach items="${Records_T}" var="record">
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