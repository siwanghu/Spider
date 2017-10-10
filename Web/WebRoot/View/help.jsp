<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<style type="text/css">
.input {
	float: left;
	margin-left: 5px;
}

#contents>div {
	float: none;
}
</style>
</head>
<body>

	<!--
		CONTENT
		-->
	<div id="content" class="white">
		<h1>
			<img src="img/icons/posts.png" alt="" />系统帮助
		</h1>

		<div class="bloc">
			<div class="title">帮助信息</div>
			<div class="content">
				<p>
				<h1>欢迎使用系统,为了你的体验请仔细阅读以下使用说明,谢谢合作!</h1>
				</p>
				<p>
				<h4>一.在个人信息模块中你可以对自己的信息进行一些修改,其中包括密码修改</h4>
				</p>
				<p>
				<h4>
					二.网站配置模块含有两个功能</br>网站管理可以实现手动的网站管理,你可以点击grap(抓取)网页内容,我们将启动爬虫为你抓取指定网页并实时在界面显示,你可以点停止或开始按钮来操作爬虫的工作</br>网站配置含有包含两个小功能:</br>1>你可以写网站配置的properties文件上传给服务器,服务器将会添加到你的数据库中
					</br>注意:properties文件格式如下:{省份}|{市级}=网站地址 如果格式不正确我们将拒绝接收,这是例子:
				</h4>
				</br>
				<h5>
					浙江|杭州=http://cg.hzft.gov.cn/www/noticelist.do?noticetype=5,6</br>
					浙江|温州=http://www.qianlima.com/zb/area_2603_3_1/</br>
					浙江|嘉兴=http://www.jxzbtb.gov.cn/jxcms/jxztb/category/jygg/jdbmgz/jdbmgz_jg/list.html</br>
					浙江|湖州=http://www.bidchance.com/company-6489.html</br>
					浙江|绍兴=http://www.qianlima.com/zb/area_2601_3_1/</br>
					浙江|金华=http://www.jhztb.gov.cn/jhztb/zfcgzbhxgs/index.htm</br>
					浙江|衢州=http://www.qzggzy.com/yj.aspx?xm=zfcg&xj=zfcg_cggg</br>
					浙江|舟山=http://www.zszfcg.gov.cn/news/96.html</br>
					浙江|台州=http://www.tzzfcg.gov.cn/cggg/index.htm</br>
					浙江|丽水=http://www.lscgzb.gov.cn/index.php?m=content&c=index&a=lists&catid=20</br>
					浙江|宁波=http://www.nbzfcg.cn/project/MoreNotice.aspx?Type=3
				</h5>
				</br>
				<h4>
					2>你可以将爬虫爬取的数据以xls的文件导出给你,便于你查看,xls的字符编码为UTF-8格式<br> </br>
					</p>
					<p>
					<h4>三.在数据管理模块中你可以查看或查询抓取的数据,数据也会以表格的形式动态显示,数据查询将以关键字的方式查询,只要某条记录含有该关键字,我们便认为它匹配成功</h4>
					</p>
					<p>
					<h4>
						四.系统管理模块可以进行用户的管理,如果你没有管理员的权限将无法操作
						<p>
						<h4>最后希望我们的软件能够提高你的工作效率,祝你使用愉快!</h4>
						</p>
			</div>
		</div>

	</div>

</body>
</html>