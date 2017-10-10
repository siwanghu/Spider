<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Document</title>

<script type="text/javascript" src="g_alert.js"></script>
<script type="text/javascript" src="jquery-2.0.0.min.js"></script>

<style type="text/css">
ul {
	list-style-type: none;
}

li {
	float: left;
	height: 30px;
	line-height: 30px;
	width: 100px;
	color: #fff;
	background: #a6b9c5;
	margin-left: 5px;
	text-align: center;
	cursor: pointer;
	border-radius: 5px;
}
</style>

</head>
<body>

	<ul>
		<li onClick="error()">错误error</li>
		<li onClick="success()">正确success</li>
		<li onClick="confirm()">确认confirm</li>
		<li onClick="warn()">警告warn</li>
	</ul>


	<script type="text/javascript">
		function success() {
			g_alert('success', '操作成功', 'http://www.17sucai.com');
		}

		function error() {
			g_alert('error', '操作失败'); //url可写可不写
		}
		function confirm() {
			g_alert('confirm', '你确定要这样做吗？', 'http://www.17sucai.com');
		}
		function warn() {
			g_alert('warn', '用户名不能为空');
		}
	</script>
</body>
</html>