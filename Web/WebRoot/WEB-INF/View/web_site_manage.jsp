<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>table_edit</title>
		<meta name="author" content="siwanghu" />
		<!-- Date: 2014-03-18 -->
		<meta content="width=device-width, initial-scale=1.0" name="viewport" />
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
		<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
		<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>
		<link href="media/css/style.css" rel="stylesheet" type="text/css"/>
		<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
		<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
		<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
		<!-- END GLOBAL MANDATORY STYLES -->
		<!-- BEGIN PAGE LEVEL STYLES -->
		<link rel="stylesheet" type="text/css" href="media/css/select2_metro.css" />
		<link rel="stylesheet" href="media/css/DT_bootstrap.css" />
	</head>
	<body>
		<div class="row-fluid">
			<div class="span12">
				<!-- BEGIN EXAMPLE TABLE PORTLET-->
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-edit"></i>网站列表
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="#portlet-config" data-toggle="modal" class="config"></a>
							<a href="javascript:;" class="reload"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix">
							<div class="btn-group">
								<button id="sample_editable_1_new" class="btn green">
									添加 <i class="icon-plus"></i>
								</button>
							</div>
						</div>
						<table class="table table-striped table-hover table-bordered" id="sample_editable_1">

							<thead>

								<tr>

									<th>省份</th>

									<th>市级</th>

									<th>网址</th>

									<th>备注</th>

									<th>添加</th>

									<th>删除</th>
									<th>抓取</th>

								</tr>

							</thead>

							<tbody>

								<tr class="">

									<td>浙江</td>

									<td>杭州</td>

									<td>http://cg.hzft.gov.cn/www/noticelist.do?noticetype=5,6</td>

									<td class="center">无</td>

									<td><a class="edit" href="">Edit</a></td>

									<td><a class="delete" href="">Delete</a></td>
									<td><a class="delete" href="">grap</a></td>

								</tr>
								
								<tr class="">

									<td>浙江</td>

									<td>宁波</td>

									<td>http://www.nbzfcg.cn/project/MoreNotice.aspx?Type=3</td>

									<td class="center">无</td>

									<td><a class="edit" href="javascript:;">Edit</a></td>

									<td><a class="delete" href="javascript:;">Delete</a></td>
									<td><a class="delete" href="">grap</a></td>

								</tr>
								<tr class="">

									<td>浙江</td>

									<td>温州</td>

									<td>http://www.qianlima.com/zb/area_2603_3_1/</td>

									<td class="center">无</td>

									<td><a class="edit" href="javascript:;">Edit</a></td>

									<td><a class="delete" href="javascript:;">Delete</a></td>
									<td><a class="delete" href="">grap</a></td>

								</tr>
								
								<tr class="">

									<td>浙江</td>

									<td>嘉兴</td>

									<td>http://www.jxzbtb.gov.cn/jxcms/jxztb/category/jygg/jdbmgz/jdbmgz_jg/list.html</td>

									<td class="center">无</td>

									<td><a class="edit" href="javascript:;">Edit</a></td>

									<td><a class="delete" href="javascript:;">Delete</a></td>
									<td><a class="delete" href="">grap</a></td>

								</tr>
								
								<tr class="">

									<td>浙江</td>

									<td>湖州</td>

									<td>http://www.bidchance.com/company-6489.html</td>

									<td class="center">无</td>

									<td><a class="edit" href="javascript:;">Edit</a></td>

									<td><a class="delete" href="javascript:;">Delete</a></td>
									<td><a class="delete" href="">grap</a></td>

								</tr>
								
								<tr class="">

									<td>浙江</td>

									<td>绍兴</td>

									<td>http://www.qianlima.com/zb/area_2601_3_1/</td>

									<td class="center">无</td>

									<td><a class="edit" href="javascript:;">Edit</a></td>

									<td><a class="delete" href="javascript:;">Delete</a></td>
									<td><a class="delete" href="">grap</a></td>

								</tr>
								

							</tbody>
						</table>
					</div>
				</div>
				<!-- END EXAMPLE TABLE PORTLET-->

			</div>
		</div>
	</body>
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>

	<![endif]-->

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

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
		_gaq.push(['_setAccount', 'UA-37564768-1']);
		_gaq.push(['_setDomainName', 'keenthemes.com']);
		_gaq.push(['_setAllowLinker', true]);
		_gaq.push(['_trackPageview']);
		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script></body>

	<!-- END BODY -->

</html>

