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
            <h1>Main icons, <span><a href="http://www.woothemes.com/2010/08/woocons1/">Woocons #1</a></h1>
<div class="bloc">
    <div class="title">Main icons</div>
    <div class="content">
        			<a href="#" title="arrow-down.png"><img src="img/icons/arrow-down.png" style="padding:5px;"/></a>
					<a href="#" title="arrow-left.png"><img src="img/icons/arrow-left.png" style="padding:5px;"/></a>
					<a href="#" title="arrow-right.png"><img src="img/icons/arrow-right.png" style="padding:5px;"/></a>
					<a href="#" title="arrow-up.png"><img src="img/icons/arrow-up.png" style="padding:5px;"/></a>
					<a href="#" title="black-board-2.png"><img src="img/icons/black-board-2.png" style="padding:5px;"/></a>
					<a href="#" title="black-board.png"><img src="img/icons/black-board.png" style="padding:5px;"/></a>
					<a href="#" title="bluetooth.png"><img src="img/icons/bluetooth.png" style="padding:5px;"/></a>
					<a href="#" title="bookmarks-2.png"><img src="img/icons/bookmarks-2.png" style="padding:5px;"/></a>
					<a href="#" title="bookmarks.png"><img src="img/icons/bookmarks.png" style="padding:5px;"/></a>
					<a href="#" title="box-add.png"><img src="img/icons/box-add.png" style="padding:5px;"/></a>
					<a href="#" title="box-down.png"><img src="img/icons/box-down.png" style="padding:5px;"/></a>
					<a href="#" title="box-remove.png"><img src="img/icons/box-remove.png" style="padding:5px;"/></a>
					<a href="#" title="box-up.png"><img src="img/icons/box-up.png" style="padding:5px;"/></a>
					<a href="#" title="briefcase.png"><img src="img/icons/briefcase.png" style="padding:5px;"/></a>
					<a href="#" title="bug.png"><img src="img/icons/bug.png" style="padding:5px;"/></a>
					<a href="#" title="button-add.png"><img src="img/icons/button-add.png" style="padding:5px;"/></a>
					<a href="#" title="button-burn.png"><img src="img/icons/button-burn.png" style="padding:5px;"/></a>
					<a href="#" title="button-check.png"><img src="img/icons/button-check.png" style="padding:5px;"/></a>
					<a href="#" title="button-color-circle.png"><img src="img/icons/button-color-circle.png" style="padding:5px;"/></a>
					<a href="#" title="button-eject.png"><img src="img/icons/button-eject.png" style="padding:5px;"/></a>
					<a href="#" title="button-help.png"><img src="img/icons/button-help.png" style="padding:5px;"/></a>
					<a href="#" title="button-info.png"><img src="img/icons/button-info.png" style="padding:5px;"/></a>
					<a href="#" title="button-load.png"><img src="img/icons/button-load.png" style="padding:5px;"/></a>
					<a href="#" title="button-next.png"><img src="img/icons/button-next.png" style="padding:5px;"/></a>
					<a href="#" title="button-pause.png"><img src="img/icons/button-pause.png" style="padding:5px;"/></a>
					<a href="#" title="button-play.png"><img src="img/icons/button-play.png" style="padding:5px;"/></a>
					<a href="#" title="button-previous.png"><img src="img/icons/button-previous.png" style="padding:5px;"/></a>
					<a href="#" title="button-record-active.png"><img src="img/icons/button-record-active.png" style="padding:5px;"/></a>
					<a href="#" title="button-record.png"><img src="img/icons/button-record.png" style="padding:5px;"/></a>
					<a href="#" title="button-remove.png"><img src="img/icons/button-remove.png" style="padding:5px;"/></a>
					<a href="#" title="button-rss.png"><img src="img/icons/button-rss.png" style="padding:5px;"/></a>
					<a href="#" title="button-stop.png"><img src="img/icons/button-stop.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-add.png"><img src="img/icons/button-white-add.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-check.png"><img src="img/icons/button-white-check.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-help.png"><img src="img/icons/button-white-help.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-info.png"><img src="img/icons/button-white-info.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-load.png"><img src="img/icons/button-white-load.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-remove.png"><img src="img/icons/button-white-remove.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-rss.png"><img src="img/icons/button-white-rss.png" style="padding:5px;"/></a>
					<a href="#" title="button-white-stop.png"><img src="img/icons/button-white-stop.png" style="padding:5px;"/></a>
					<a href="#" title="calendar-2.png"><img src="img/icons/calendar-2.png" style="padding:5px;"/></a>
					<a href="#" title="calendar.png"><img src="img/icons/calendar.png" style="padding:5px;"/></a>
					<a href="#" title="camera.png"><img src="img/icons/camera.png" style="padding:5px;"/></a>
					<a href="#" title="chart-bar.png"><img src="img/icons/chart-bar.png" style="padding:5px;"/></a>
					<a href="#" title="chart-pie.png"><img src="img/icons/chart-pie.png" style="padding:5px;"/></a>
					<a href="#" title="chart.png"><img src="img/icons/chart.png" style="padding:5px;"/></a>
					<a href="#" title="checkbox-empty.png"><img src="img/icons/checkbox-empty.png" style="padding:5px;"/></a>
					<a href="#" title="checkbox-full.png"><img src="img/icons/checkbox-full.png" style="padding:5px;"/></a>
					<a href="#" title="clock-alarm.png"><img src="img/icons/clock-alarm.png" style="padding:5px;"/></a>
					<a href="#" title="clock.png"><img src="img/icons/clock.png" style="padding:5px;"/></a>
					<a href="#" title="cmd-key.png"><img src="img/icons/cmd-key.png" style="padding:5px;"/></a>
					<a href="#" title="cocktail.png"><img src="img/icons/cocktail.png" style="padding:5px;"/></a>
					<a href="#" title="cog.png"><img src="img/icons/cog.png" style="padding:5px;"/></a>
					<a href="#" title="comment-add.png"><img src="img/icons/comment-add.png" style="padding:5px;"/></a>
					<a href="#" title="comment-edit.png"><img src="img/icons/comment-edit.png" style="padding:5px;"/></a>
					<a href="#" title="comment-remove.png"><img src="img/icons/comment-remove.png" style="padding:5px;"/></a>
					<a href="#" title="comment.png"><img src="img/icons/comment.png" style="padding:5px;"/></a>
					<a href="#" title="computer-off.png"><img src="img/icons/computer-off.png" style="padding:5px;"/></a>
					<a href="#" title="computer-on.png"><img src="img/icons/computer-on.png" style="padding:5px;"/></a>
					<a href="#" title="contact.png"><img src="img/icons/contact.png" style="padding:5px;"/></a>
					<a href="#" title="contacts-add.png"><img src="img/icons/contacts-add.png" style="padding:5px;"/></a>
					<a href="#" title="contacts-remove.png"><img src="img/icons/contacts-remove.png" style="padding:5px;"/></a>
					<a href="#" title="contacts-sync.png"><img src="img/icons/contacts-sync.png" style="padding:5px;"/></a>
					<a href="#" title="contacts.png"><img src="img/icons/contacts.png" style="padding:5px;"/></a>
					<a href="#" title="credit-card-paypal.png"><img src="img/icons/credit-card-paypal.png" style="padding:5px;"/></a>
					<a href="#" title="credit-card.png"><img src="img/icons/credit-card.png" style="padding:5px;"/></a>
					<a href="#" title="dashboard.png"><img src="img/icons/dashboard.png" style="padding:5px;"/></a>
					<a href="#" title="database-add.png"><img src="img/icons/database-add.png" style="padding:5px;"/></a>
					<a href="#" title="database-remove.png"><img src="img/icons/database-remove.png" style="padding:5px;"/></a>
					<a href="#" title="database.png"><img src="img/icons/database.png" style="padding:5px;"/></a>
					<a href="#" title="desktop.png"><img src="img/icons/desktop.png" style="padding:5px;"/></a>
					<a href="#" title="disc-blu-ray.png"><img src="img/icons/disc-blu-ray.png" style="padding:5px;"/></a>
					<a href="#" title="disc-dvd.png"><img src="img/icons/disc-dvd.png" style="padding:5px;"/></a>
					<a href="#" title="document-1-add.png"><img src="img/icons/document-1-add.png" style="padding:5px;"/></a>
					<a href="#" title="document-1-edit.png"><img src="img/icons/document-1-edit.png" style="padding:5px;"/></a>
					<a href="#" title="document-1-remove.png"><img src="img/icons/document-1-remove.png" style="padding:5px;"/></a>
					<a href="#" title="document-1.png"><img src="img/icons/document-1.png" style="padding:5px;"/></a>
					<a href="#" title="document-2-add.png"><img src="img/icons/document-2-add.png" style="padding:5px;"/></a>
					<a href="#" title="document-2-remove.png"><img src="img/icons/document-2-remove.png" style="padding:5px;"/></a>
					<a href="#" title="document-2.png"><img src="img/icons/document-2.png" style="padding:5px;"/></a>
					<a href="#" title="document-blueprint.png"><img src="img/icons/document-blueprint.png" style="padding:5px;"/></a>
					<a href="#" title="document-checklist.png"><img src="img/icons/document-checklist.png" style="padding:5px;"/></a>
					<a href="#" title="drawer-closed.png"><img src="img/icons/drawer-closed.png" style="padding:5px;"/></a>
					<a href="#" title="drawer-open.png"><img src="img/icons/drawer-open.png" style="padding:5px;"/></a>
					<a href="#" title="file-add.png"><img src="img/icons/file-add.png" style="padding:5px;"/></a>
					<a href="#" title="file-receive.png"><img src="img/icons/file-receive.png" style="padding:5px;"/></a>
					<a href="#" title="file-remove.png"><img src="img/icons/file-remove.png" style="padding:5px;"/></a>
					<a href="#" title="file-send.png"><img src="img/icons/file-send.png" style="padding:5px;"/></a>
					<a href="#" title="file.png"><img src="img/icons/file.png" style="padding:5px;"/></a>
					<a href="#" title="finder.png"><img src="img/icons/finder.png" style="padding:5px;"/></a>
					<a href="#" title="folder-add.png"><img src="img/icons/folder-add.png" style="padding:5px;"/></a>
					<a href="#" title="folder-remove.png"><img src="img/icons/folder-remove.png" style="padding:5px;"/></a>
					<a href="#" title="folder-smart.png"><img src="img/icons/folder-smart.png" style="padding:5px;"/></a>
					<a href="#" title="folder-sync.png"><img src="img/icons/folder-sync.png" style="padding:5px;"/></a>
					<a href="#" title="folder.png"><img src="img/icons/folder.png" style="padding:5px;"/></a>
					<a href="#" title="font.png"><img src="img/icons/font.png" style="padding:5px;"/></a>
					<a href="#" title="globe-active.png"><img src="img/icons/globe-active.png" style="padding:5px;"/></a>
					<a href="#" title="globe-inactive.png"><img src="img/icons/globe-inactive.png" style="padding:5px;"/></a>
					<a href="#" title="glyph-add.png"><img src="img/icons/glyph-add.png" style="padding:5px;"/></a>
					<a href="#" title="glyph-check.png"><img src="img/icons/glyph-check.png" style="padding:5px;"/></a>
					<a href="#" title="glyph-remove.png"><img src="img/icons/glyph-remove.png" style="padding:5px;"/></a>
					<a href="#" title="home.png"><img src="img/icons/home.png" style="padding:5px;"/></a>
					<a href="#" title="im-2.png"><img src="img/icons/im-2.png" style="padding:5px;"/></a>
					<a href="#" title="im.png"><img src="img/icons/im.png" style="padding:5px;"/></a>
					<a href="#" title="ipad.png"><img src="img/icons/ipad.png" style="padding:5px;"/></a>
					<a href="#" title="iphone.png"><img src="img/icons/iphone.png" style="padding:5px;"/></a>
					<a href="#" title="light-bulb-off.png"><img src="img/icons/light-bulb-off.png" style="padding:5px;"/></a>
					<a href="#" title="light-bulb-on.png"><img src="img/icons/light-bulb-on.png" style="padding:5px;"/></a>
					<a href="#" title="link.png"><img src="img/icons/link.png" style="padding:5px;"/></a>
					<a href="#" title="lock-closed.png"><img src="img/icons/lock-closed.png" style="padding:5px;"/></a>
					<a href="#" title="lock-open.png"><img src="img/icons/lock-open.png" style="padding:5px;"/></a>
					<a href="#" title="love.png"><img src="img/icons/love.png" style="padding:5px;"/></a>
					<a href="#" title="magic-wand.png"><img src="img/icons/magic-wand.png" style="padding:5px;"/></a>
					<a href="#" title="mail-add.png"><img src="img/icons/mail-add.png" style="padding:5px;"/></a>
					<a href="#" title="mail-edit.png"><img src="img/icons/mail-edit.png" style="padding:5px;"/></a>
					<a href="#" title="mail-forward.png"><img src="img/icons/mail-forward.png" style="padding:5px;"/></a>
					<a href="#" title="mail-open-1.png"><img src="img/icons/mail-open-1.png" style="padding:5px;"/></a>
					<a href="#" title="mail-open-2.png"><img src="img/icons/mail-open-2.png" style="padding:5px;"/></a>
					<a href="#" title="mail-receive.png"><img src="img/icons/mail-receive.png" style="padding:5px;"/></a>
					<a href="#" title="mail-remove.png"><img src="img/icons/mail-remove.png" style="padding:5px;"/></a>
					<a href="#" title="mail-reply.png"><img src="img/icons/mail-reply.png" style="padding:5px;"/></a>
					<a href="#" title="mail-send.png"><img src="img/icons/mail-send.png" style="padding:5px;"/></a>
					<a href="#" title="mail.png"><img src="img/icons/mail.png" style="padding:5px;"/></a>
					<a href="#" title="maps.png"><img src="img/icons/maps.png" style="padding:5px;"/></a>
					<a href="#" title="mobile-phone.png"><img src="img/icons/mobile-phone.png" style="padding:5px;"/></a>
					<a href="#" title="money-bundle.png"><img src="img/icons/money-bundle.png" style="padding:5px;"/></a>
					<a href="#" title="money.png"><img src="img/icons/money.png" style="padding:5px;"/></a>
					<a href="#" title="movies.png"><img src="img/icons/movies.png" style="padding:5px;"/></a>
					<a href="#" title="music-blue.png"><img src="img/icons/music-blue.png" style="padding:5px;"/></a>
					<a href="#" title="music-green.png"><img src="img/icons/music-green.png" style="padding:5px;"/></a>
					<a href="#" title="music-red.png"><img src="img/icons/music-red.png" style="padding:5px;"/></a>
					<a href="#" title="news-add.png"><img src="img/icons/news-add.png" style="padding:5px;"/></a>
					<a href="#" title="news-remove.png"><img src="img/icons/news-remove.png" style="padding:5px;"/></a>
					<a href="#" title="news.png"><img src="img/icons/news.png" style="padding:5px;"/></a>
					<a href="#" title="note-pinned.png"><img src="img/icons/note-pinned.png" style="padding:5px;"/></a>
					<a href="#" title="note-sticky.png"><img src="img/icons/note-sticky.png" style="padding:5px;"/></a>
					<a href="#" title="pencil.png"><img src="img/icons/pencil.png" style="padding:5px;"/></a>
					<a href="#" title="pictures.png"><img src="img/icons/pictures.png" style="padding:5px;"/></a>
					<a href="#" title="posts.png"><img src="img/icons/posts.png" style="padding:5px;"/></a>
					<a href="#" title="printer.png"><img src="img/icons/printer.png" style="padding:5px;"/></a>
					<a href="#" title="private.png"><img src="img/icons/private.png" style="padding:5px;"/></a>
					<a href="#" title="ruler.png"><img src="img/icons/ruler.png" style="padding:5px;"/></a>
					<a href="#" title="search-add.png"><img src="img/icons/search-add.png" style="padding:5px;"/></a>
					<a href="#" title="search-remove.png"><img src="img/icons/search-remove.png" style="padding:5px;"/></a>
					<a href="#" title="search.png"><img src="img/icons/search.png" style="padding:5px;"/></a>
					<a href="#" title="sign-public.png"><img src="img/icons/sign-public.png" style="padding:5px;"/></a>
					<a href="#" title="smiley-happy.png"><img src="img/icons/smiley-happy.png" style="padding:5px;"/></a>
					<a href="#" title="smiley-sad.png"><img src="img/icons/smiley-sad.png" style="padding:5px;"/></a>
					<a href="#" title="speaker.png"><img src="img/icons/speaker.png" style="padding:5px;"/></a>
					<a href="#" title="star-off.png"><img src="img/icons/star-off.png" style="padding:5px;"/></a>
					<a href="#" title="star-on.png"><img src="img/icons/star-on.png" style="padding:5px;"/></a>
					<a href="#" title="stop-2.png"><img src="img/icons/stop-2.png" style="padding:5px;"/></a>
					<a href="#" title="stop.png"><img src="img/icons/stop.png" style="padding:5px;"/></a>
					<a href="#" title="system-activity-monitor.png"><img src="img/icons/system-activity-monitor.png" style="padding:5px;"/></a>
					<a href="#" title="system-equalizer.png"><img src="img/icons/system-equalizer.png" style="padding:5px;"/></a>
					<a href="#" title="system-preferences.png"><img src="img/icons/system-preferences.png" style="padding:5px;"/></a>
					<a href="#" title="system-terminal.png"><img src="img/icons/system-terminal.png" style="padding:5px;"/></a>
					<a href="#" title="trash-full.png"><img src="img/icons/trash-full.png" style="padding:5px;"/></a>
					<a href="#" title="trash-shredder.png"><img src="img/icons/trash-shredder.png" style="padding:5px;"/></a>
					<a href="#" title="trash.png"><img src="img/icons/trash.png" style="padding:5px;"/></a>
					<a href="#" title="tv-off.png"><img src="img/icons/tv-off.png" style="padding:5px;"/></a>
					<a href="#" title="tv-on.png"><img src="img/icons/tv-on.png" style="padding:5px;"/></a>
					<a href="#" title="user.png"><img src="img/icons/user.png" style="padding:5px;"/></a>
					<a href="#" title="users.png"><img src="img/icons/users.png" style="padding:5px;"/></a>
					<a href="#" title="warning.png"><img src="img/icons/warning.png" style="padding:5px;"/></a>
					<a href="#" title="wifi-singal.png"><img src="img/icons/wifi-singal.png" style="padding:5px;"/></a>
					<a href="#" title="window-move.png"><img src="img/icons/window-move.png" style="padding:5px;"/></a>
					<a href="#" title="window-resize.png"><img src="img/icons/window-resize.png" style="padding:5px;"/></a>
					<a href="#" title="window.png"><img src="img/icons/window.png" style="padding:5px;"/></a>
		        <div class="cb"></div>
    </div>
</div>
<div class="bloc">
    <div class="title">Main icons</div>
    <div class="content">
        			<script type="text/javascript"><!--
google_ad_client = "ca-pub-3413404722490728";
/* postscript728+90postscript.html */
google_ad_slot = "9238639693";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
		        <div class="cb"></div>
    </div>
</div>


<h1>Menu icons, <span><a href="http://www.iconsweets2.com/">iconSweets 2</a></h1>

<div class="bloc left">
    <div class="title">Icons White</div>
    <div class="content" style="background:#1C1C1C">
        			<a href="#" title="android.png"><img src="img/icons/menu/android.png" style="padding:5px;"/></a>
					<a href="#" title="basket.png"><img src="img/icons/menu/basket.png" style="padding:5px;"/></a>
					<a href="#" title="books.png"><img src="img/icons/menu/books.png" style="padding:5px;"/></a>
					<a href="#" title="brush.png"><img src="img/icons/menu/brush.png" style="padding:5px;"/></a>
					<a href="#" title="calendar.png"><img src="img/icons/menu/calendar.png" style="padding:5px;"/></a>
					<a href="#" title="chart.png"><img src="img/icons/menu/chart.png" style="padding:5px;"/></a>
					<a href="#" title="clipboard.png"><img src="img/icons/menu/clipboard.png" style="padding:5px;"/></a>
					<a href="#" title="comment.png"><img src="img/icons/menu/comment.png" style="padding:5px;"/></a>
					<a href="#" title="comments.png"><img src="img/icons/menu/comments.png" style="padding:5px;"/></a>
					<a href="#" title="contacts.png"><img src="img/icons/menu/contacts.png" style="padding:5px;"/></a>
					<a href="#" title="cut.png"><img src="img/icons/menu/cut.png" style="padding:5px;"/></a>
					<a href="#" title="directions.png"><img src="img/icons/menu/directions.png" style="padding:5px;"/></a>
					<a href="#" title="dollar.png"><img src="img/icons/menu/dollar.png" style="padding:5px;"/></a>
					<a href="#" title="download.png"><img src="img/icons/menu/download.png" style="padding:5px;"/></a>
					<a href="#" title="dribbble.png"><img src="img/icons/menu/dribbble.png" style="padding:5px;"/></a>
					<a href="#" title="dropbox.png"><img src="img/icons/menu/dropbox.png" style="padding:5px;"/></a>
					<a href="#" title="earth.png"><img src="img/icons/menu/earth.png" style="padding:5px;"/></a>
					<a href="#" title="facebook.png"><img src="img/icons/menu/facebook.png" style="padding:5px;"/></a>
					<a href="#" title="factory.png"><img src="img/icons/menu/factory.png" style="padding:5px;"/></a>
					<a href="#" title="feed.png"><img src="img/icons/menu/feed.png" style="padding:5px;"/></a>
					<a href="#" title="flag.png"><img src="img/icons/menu/flag.png" style="padding:5px;"/></a>
					<a href="#" title="home.png"><img src="img/icons/menu/home.png" style="padding:5px;"/></a>
					<a href="#" title="idea.png"><img src="img/icons/menu/idea.png" style="padding:5px;"/></a>
					<a href="#" title="inbox.png"><img src="img/icons/menu/inbox.png" style="padding:5px;"/></a>
					<a href="#" title="inbox2.png"><img src="img/icons/menu/inbox2.png" style="padding:5px;"/></a>
					<a href="#" title="info.png"><img src="img/icons/menu/info.png" style="padding:5px;"/></a>
					<a href="#" title="key.png"><img src="img/icons/menu/key.png" style="padding:5px;"/></a>
					<a href="#" title="lab.png"><img src="img/icons/menu/lab.png" style="padding:5px;"/></a>
					<a href="#" title="lastfm.png"><img src="img/icons/menu/lastfm.png" style="padding:5px;"/></a>
					<a href="#" title="layout.png"><img src="img/icons/menu/layout.png" style="padding:5px;"/></a>
					<a href="#" title="list.png"><img src="img/icons/menu/list.png" style="padding:5px;"/></a>
					<a href="#" title="lock.png"><img src="img/icons/menu/lock.png" style="padding:5px;"/></a>
					<a href="#" title="mail.png"><img src="img/icons/menu/mail.png" style="padding:5px;"/></a>
					<a href="#" title="map.png"><img src="img/icons/menu/map.png" style="padding:5px;"/></a>
					<a href="#" title="marker.png"><img src="img/icons/menu/marker.png" style="padding:5px;"/></a>
					<a href="#" title="medias.png"><img src="img/icons/menu/medias.png" style="padding:5px;"/></a>
					<a href="#" title="mobile.png"><img src="img/icons/menu/mobile.png" style="padding:5px;"/></a>
					<a href="#" title="money.png"><img src="img/icons/menu/money.png" style="padding:5px;"/></a>
					<a href="#" title="movie.png"><img src="img/icons/menu/movie.png" style="padding:5px;"/></a>
					<a href="#" title="outbox.png"><img src="img/icons/menu/outbox.png" style="padding:5px;"/></a>
					<a href="#" title="pacman.png"><img src="img/icons/menu/pacman.png" style="padding:5px;"/></a>
					<a href="#" title="page.png"><img src="img/icons/menu/page.png" style="padding:5px;"/></a>
					<a href="#" title="pages.png"><img src="img/icons/menu/pages.png" style="padding:5px;"/></a>
					<a href="#" title="paypal.png"><img src="img/icons/menu/paypal.png" style="padding:5px;"/></a>
					<a href="#" title="pdf.png"><img src="img/icons/menu/pdf.png" style="padding:5px;"/></a>
					<a href="#" title="pdfs.png"><img src="img/icons/menu/pdfs.png" style="padding:5px;"/></a>
					<a href="#" title="pen.png"><img src="img/icons/menu/pen.png" style="padding:5px;"/></a>
					<a href="#" title="pig.png"><img src="img/icons/menu/pig.png" style="padding:5px;"/></a>
					<a href="#" title="plane.png"><img src="img/icons/menu/plane.png" style="padding:5px;"/></a>
					<a href="#" title="print.png"><img src="img/icons/menu/print.png" style="padding:5px;"/></a>
					<a href="#" title="search.png"><img src="img/icons/menu/search.png" style="padding:5px;"/></a>
					<a href="#" title="settings.png"><img src="img/icons/menu/settings.png" style="padding:5px;"/></a>
					<a href="#" title="shirt.png"><img src="img/icons/menu/shirt.png" style="padding:5px;"/></a>
					<a href="#" title="skype.png"><img src="img/icons/menu/skype.png" style="padding:5px;"/></a>
					<a href="#" title="slideshow.png"><img src="img/icons/menu/slideshow.png" style="padding:5px;"/></a>
					<a href="#" title="suitcase.png"><img src="img/icons/menu/suitcase.png" style="padding:5px;"/></a>
					<a href="#" title="support.png"><img src="img/icons/menu/support.png" style="padding:5px;"/></a>
					<a href="#" title="timer.png"><img src="img/icons/menu/timer.png" style="padding:5px;"/></a>
					<a href="#" title="trophy.png"><img src="img/icons/menu/trophy.png" style="padding:5px;"/></a>
					<a href="#" title="tumblr.png"><img src="img/icons/menu/tumblr.png" style="padding:5px;"/></a>
					<a href="#" title="twitter.png"><img src="img/icons/menu/twitter.png" style="padding:5px;"/></a>
					<a href="#" title="upload.png"><img src="img/icons/menu/upload.png" style="padding:5px;"/></a>
					<a href="#" title="user.png"><img src="img/icons/menu/user.png" style="padding:5px;"/></a>
					<a href="#" title="users.png"><img src="img/icons/menu/users.png" style="padding:5px;"/></a>
					<a href="#" title="vcard.png"><img src="img/icons/menu/vcard.png" style="padding:5px;"/></a>
					<a href="#" title="vimeo.png"><img src="img/icons/menu/vimeo.png" style="padding:5px;"/></a>
					<a href="#" title="wifi.png"><img src="img/icons/menu/wifi.png" style="padding:5px;"/></a>
					<a href="#" title="wordpress.png"><img src="img/icons/menu/wordpress.png" style="padding:5px;"/></a>
					<a href="#" title="zip.png"><img src="img/icons/menu/zip.png" style="padding:5px;"/></a>
					<a href="#" title="zips.png"><img src="img/icons/menu/zips.png" style="padding:5px;"/></a>
		        <div class="cb"></div>
    </div>
</div>

<div class="bloc right">
    <div class="title">Icons Black</div>
    <div class="content">
        			<a href="#" title="android.png"><img src="img/icons/menu/dark/android.png" style="padding:5px;"/></a>
					<a href="#" title="basket.png"><img src="img/icons/menu/dark/basket.png" style="padding:5px;"/></a>
					<a href="#" title="books.png"><img src="img/icons/menu/dark/books.png" style="padding:5px;"/></a>
					<a href="#" title="brush.png"><img src="img/icons/menu/dark/brush.png" style="padding:5px;"/></a>
					<a href="#" title="calendar.png"><img src="img/icons/menu/dark/calendar.png" style="padding:5px;"/></a>
					<a href="#" title="chart.png"><img src="img/icons/menu/dark/chart.png" style="padding:5px;"/></a>
					<a href="#" title="clipboard.png"><img src="img/icons/menu/dark/clipboard.png" style="padding:5px;"/></a>
					<a href="#" title="comment.png"><img src="img/icons/menu/dark/comment.png" style="padding:5px;"/></a>
					<a href="#" title="comments.png"><img src="img/icons/menu/dark/comments.png" style="padding:5px;"/></a>
					<a href="#" title="contacts.png"><img src="img/icons/menu/dark/contacts.png" style="padding:5px;"/></a>
					<a href="#" title="cut.png"><img src="img/icons/menu/dark/cut.png" style="padding:5px;"/></a>
					<a href="#" title="directions.png"><img src="img/icons/menu/dark/directions.png" style="padding:5px;"/></a>
					<a href="#" title="dollar.png"><img src="img/icons/menu/dark/dollar.png" style="padding:5px;"/></a>
					<a href="#" title="download.png"><img src="img/icons/menu/dark/download.png" style="padding:5px;"/></a>
					<a href="#" title="dribbble.png"><img src="img/icons/menu/dark/dribbble.png" style="padding:5px;"/></a>
					<a href="#" title="dropbox.png"><img src="img/icons/menu/dark/dropbox.png" style="padding:5px;"/></a>
					<a href="#" title="earth.png"><img src="img/icons/menu/dark/earth.png" style="padding:5px;"/></a>
					<a href="#" title="facebook.png"><img src="img/icons/menu/dark/facebook.png" style="padding:5px;"/></a>
					<a href="#" title="factory.png"><img src="img/icons/menu/dark/factory.png" style="padding:5px;"/></a>
					<a href="#" title="feed.png"><img src="img/icons/menu/dark/feed.png" style="padding:5px;"/></a>
					<a href="#" title="flag.png"><img src="img/icons/menu/dark/flag.png" style="padding:5px;"/></a>
					<a href="#" title="home.png"><img src="img/icons/menu/dark/home.png" style="padding:5px;"/></a>
					<a href="#" title="idea.png"><img src="img/icons/menu/dark/idea.png" style="padding:5px;"/></a>
					<a href="#" title="inbox.png"><img src="img/icons/menu/dark/inbox.png" style="padding:5px;"/></a>
					<a href="#" title="inbox2.png"><img src="img/icons/menu/dark/inbox2.png" style="padding:5px;"/></a>
					<a href="#" title="info.png"><img src="img/icons/menu/dark/info.png" style="padding:5px;"/></a>
					<a href="#" title="key.png"><img src="img/icons/menu/dark/key.png" style="padding:5px;"/></a>
					<a href="#" title="lab.png"><img src="img/icons/menu/dark/lab.png" style="padding:5px;"/></a>
					<a href="#" title="lastfm.png"><img src="img/icons/menu/dark/lastfm.png" style="padding:5px;"/></a>
					<a href="#" title="layout.png"><img src="img/icons/menu/dark/layout.png" style="padding:5px;"/></a>
					<a href="#" title="list.png"><img src="img/icons/menu/dark/list.png" style="padding:5px;"/></a>
					<a href="#" title="lock.png"><img src="img/icons/menu/dark/lock.png" style="padding:5px;"/></a>
					<a href="#" title="mail.png"><img src="img/icons/menu/dark/mail.png" style="padding:5px;"/></a>
					<a href="#" title="map.png"><img src="img/icons/menu/dark/map.png" style="padding:5px;"/></a>
					<a href="#" title="marker.png"><img src="img/icons/menu/dark/marker.png" style="padding:5px;"/></a>
					<a href="#" title="medias.png"><img src="img/icons/menu/dark/medias.png" style="padding:5px;"/></a>
					<a href="#" title="mobile.png"><img src="img/icons/menu/dark/mobile.png" style="padding:5px;"/></a>
					<a href="#" title="money.png"><img src="img/icons/menu/dark/money.png" style="padding:5px;"/></a>
					<a href="#" title="movie.png"><img src="img/icons/menu/dark/movie.png" style="padding:5px;"/></a>
					<a href="#" title="outbox.png"><img src="img/icons/menu/dark/outbox.png" style="padding:5px;"/></a>
					<a href="#" title="pacman.png"><img src="img/icons/menu/dark/pacman.png" style="padding:5px;"/></a>
					<a href="#" title="page.png"><img src="img/icons/menu/dark/page.png" style="padding:5px;"/></a>
					<a href="#" title="pages.png"><img src="img/icons/menu/dark/pages.png" style="padding:5px;"/></a>
					<a href="#" title="paypal.png"><img src="img/icons/menu/dark/paypal.png" style="padding:5px;"/></a>
					<a href="#" title="pdf.png"><img src="img/icons/menu/dark/pdf.png" style="padding:5px;"/></a>
					<a href="#" title="pdfs.png"><img src="img/icons/menu/dark/pdfs.png" style="padding:5px;"/></a>
					<a href="#" title="pen.png"><img src="img/icons/menu/dark/pen.png" style="padding:5px;"/></a>
					<a href="#" title="pig.png"><img src="img/icons/menu/dark/pig.png" style="padding:5px;"/></a>
					<a href="#" title="plane.png"><img src="img/icons/menu/dark/plane.png" style="padding:5px;"/></a>
					<a href="#" title="print.png"><img src="img/icons/menu/dark/print.png" style="padding:5px;"/></a>
					<a href="#" title="search.png"><img src="img/icons/menu/dark/search.png" style="padding:5px;"/></a>
					<a href="#" title="settings.png"><img src="img/icons/menu/dark/settings.png" style="padding:5px;"/></a>
					<a href="#" title="shirt.png"><img src="img/icons/menu/dark/shirt.png" style="padding:5px;"/></a>
					<a href="#" title="skype.png"><img src="img/icons/menu/dark/skype.png" style="padding:5px;"/></a>
					<a href="#" title="slideshow.png"><img src="img/icons/menu/dark/slideshow.png" style="padding:5px;"/></a>
					<a href="#" title="suitcase.png"><img src="img/icons/menu/dark/suitcase.png" style="padding:5px;"/></a>
					<a href="#" title="support.png"><img src="img/icons/menu/dark/support.png" style="padding:5px;"/></a>
					<a href="#" title="timer.png"><img src="img/icons/menu/dark/timer.png" style="padding:5px;"/></a>
					<a href="#" title="trophy.png"><img src="img/icons/menu/dark/trophy.png" style="padding:5px;"/></a>
					<a href="#" title="tumblr.png"><img src="img/icons/menu/dark/tumblr.png" style="padding:5px;"/></a>
					<a href="#" title="twitter.png"><img src="img/icons/menu/dark/twitter.png" style="padding:5px;"/></a>
					<a href="#" title="upload.png"><img src="img/icons/menu/dark/upload.png" style="padding:5px;"/></a>
					<a href="#" title="user.png"><img src="img/icons/menu/dark/user.png" style="padding:5px;"/></a>
					<a href="#" title="users.png"><img src="img/icons/menu/dark/users.png" style="padding:5px;"/></a>
					<a href="#" title="vcard.png"><img src="img/icons/menu/dark/vcard.png" style="padding:5px;"/></a>
					<a href="#" title="vimeo.png"><img src="img/icons/menu/dark/vimeo.png" style="padding:5px;"/></a>
					<a href="#" title="wifi.png"><img src="img/icons/menu/dark/wifi.png" style="padding:5px;"/></a>
					<a href="#" title="wordpress.png"><img src="img/icons/menu/dark/wordpress.png" style="padding:5px;"/></a>
					<a href="#" title="zip.png"><img src="img/icons/menu/dark/zip.png" style="padding:5px;"/></a>
					<a href="#" title="zips.png"><img src="img/icons/menu/dark/zips.png" style="padding:5px;"/></a>
		        <div class="cb"></div>
        <p>
            You can also use this icons on buttons ! <br/>
            <a class="button" href="#"><img src="img/icons/menu/pdf.png"/> Button with icon</a>
            <a class="button white" href="#"><img src="img/icons/menu/dark/chart.png"/> Button with icon</a>
            <a class="button black" href="#"><img src="img/icons/menu/money.png"/> Button with icon</a>
        </p>
    </div>
</div>

<div class="cb"></div>        </div>
        
        
    </body>
</html>