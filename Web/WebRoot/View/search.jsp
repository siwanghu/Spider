<%@page import="com.siwanghu.bean.Record"%>
<%@page import="com.siwanghu.service.RecordService"%>
<%@page import="com.siwanghu.filter.Result"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>table_edit</title>
<meta name="author" content="siwanghu" />
<!-- Date: 2014-03-18 -->
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />
<link href="media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />
<link href="media/css/style.css" rel="stylesheet" type="text/css" />
<link href="media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />
<link href="media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />
<link href="media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css"
	href="media/css/select2_metro.css" />
<link rel="stylesheet" href="media/css/DT_bootstrap.css" />

</head>
<body>


	<form method="post" action="/Web/SearchRecordControler.do">
		<div id="content" class="white">
			<h1>
				<img src="img/icons/posts.png" alt="" />查询
			</h1>
			<div class="bloc">
				<div class="title">查询</div>
				<div class="content">
					<div class="input">
						<label for="personid">模糊查询</label> <input type="text" id="personid"
							name="keyword" />
					</div>
					<div class="input">
						<label for="personid">项目名称</label> <input type="text" id="personid"
							name="name" />
					</div>
					<div class="input">
						<label for="personid">中标单位</label> <input type="text" id="personid"
							name="unit" />
					</div>
					<div class="input">
						<label for="personid">中标金额</label> <input type="text" id="personid"
							name="amount" />
					</div>
					<div class="input">
						<label for="personid">中标日期</label> <input type="text" id="personid"
							name="time" />
					</div>
					<br />
					<div class="submit">
						<input type="submit" value="提交所填关键字" /> <input type="reset"
							value="填错了想重置" class="black" />
						<!--<input type="reset" value="White button" class="white"/>-->
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="media/js/jquery-migrate-1.2.1.min.js"
	type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="media/js/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>

<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>

	<![endif]-->

<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script type="text/javascript" src="media/js/select2.min.js"></script>

<script type="text/javascript" src="media/js/jquery.dataTables.js"></script>

<script type="text/javascript" src="media/js/DT_bootstrap.js"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="media/js/app.js"></script>

<script src="media/js/table-editable.js"></script>

<script>
	jQuery(document).ready(function() {

		App.init();

		TableEditable.init();

	});
</script>

<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-37564768-1' ]);
	_gaq.push([ '_setDomainName', 'keenthemes.com' ]);
	_gaq.push([ '_setAllowLinker', true ]);
	_gaq.push([ '_trackPageview' ]);
	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://'
				: 'http://')
				+ 'stats.g.doubleclick.net/dc.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
</body>

<!-- END BODY -->
















</html>