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
		
	</head>
	<frameset rows="41,*" border="0">
		<frame src="head.jsp">
			
			<frameset cols="240,*">
				<frame src="siderbar.jsp" />
				<frame src="dashboard.jsp" name="main" />
				
			</frameset>
		
		
		
	</frameset>
	<body>
		
		

		
	</body>
</html>