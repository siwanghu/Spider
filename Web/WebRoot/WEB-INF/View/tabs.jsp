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
              
                
        <!--            
              CONTENT 
                        --> 
        <div id="content" class="white">
            
<h1><img src="img/icons/font.png" alt="" /> Tabs</h1>

<div class="bloc left">
    <div class="title">
        Text
        <div class="tabs" id="tabs1">
            <a href="#tab11">First Tab</a>
            <a href="#tab12">Second Tab</a>
        </div>
    </div>
    <div class="content">
        <div id="tab11">
            <p>Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit. In vulputate fermentum sollicitudin. Donec purus dolor, sagittis at rutrum id, volutpat eu nisl. Suspendisse quis velit et sapien malesuada vulputate. Pellentesque ante diam, congue ut volutpat nec, varius non erat.</p>
            <ul>
                <li><script type="text/javascript"><!--
google_ad_client = "ca-pub-3413404722490728";
/* 二级栏目250&#42;250中间submeusidebar.html */
google_ad_slot = "6792280775";
google_ad_width = 250;
google_ad_height = 250;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></li>
                <li>Cras nec lectus egestas purus vehicula faucibus sit amet sit amet nunc.</li>
                <li>Cras vel elit nec eros ullamcorper pretium in vel libero.</li>
            </ul>
        </div>
        <div id="tab12">
            <ol>
                <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                <li>Cras nec lectus egestas purus vehicula faucibus sit amet sit amet nunc.</li>
                <li>Cras vel elit nec eros ullamcorper pretium in vel libero.</li>
            </ol>
            <p>
                <a href="#" class="button">a.button</a>
                <a href="#" class="button black">a.button.black</a>
                <a href="#" class="button white">a.button.white</a>
            </p>
        </div>
    </div>
</div>

<div class="bloc right">
    <div class="title">
        Text
    </div>
    <div class="content">
        <p>You can also have content before and use tabs behaviour on links</p>
        <div class="tabs" id="tabs2">
            <a href="#tab21">First Tab</a>
             -- 
            <a href="#tab22">Second Tab</a>
        </div>
        <div>
            <div id="tab21">
                <p>Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit. In vulputate fermentum sollicitudin. Donec purus dolor, sagittis at rutrum id, volutpat eu nisl. Suspendisse quis velit et sapien malesuada vulputate. Pellentesque ante diam, congue ut volutpat nec, varius non erat.</p>
                <ul>
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                    <li>Cras nec lectus egestas purus vehicula faucibus sit amet sit amet nunc.</li>
                    <li>Cras vel elit nec eros ullamcorper pretium in vel libero.</li>
                </ul>
            </div>
            <div id="tab22">
                <ol>
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                    <li>Cras nec lectus egestas purus vehicula faucibus sit amet sit amet nunc.</li>
                    <li>Cras vel elit nec eros ullamcorper pretium in vel libero.</li>
                </ol>
                <p>
                    <a href="#" class="button">a.button</a>
                    <a href="#" class="button black">a.button.black</a>
                    <a href="#" class="button white">a.button.white</a>
                </p>
            </div>
        </div>
    </div>
</div>        </div>
        
        
    </body>
</html>