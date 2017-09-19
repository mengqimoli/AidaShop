<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<link rel="stylesheet" type="text/css" href="css/style-xitongguanli.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/js-xitongguanli.js"></script>
</head>

<body>
	<table>
		<tr>
			<td valign="top">
				<div id="zygl_info">
					<p>
						<span>用户名：</span> <span id="zygl_infoName">${cusNickName}</span>
					</p>
					<p>
						<span>用户权限：</span> <span id="zygl_infoQuanxian"></span>
					</p>
					<p>
						<span>最近登录时间：</span> <span id="zygl_infoTime"></span>
					</p>
					<p>
						<span>最近登录地点：</span> <span id="zygl_infoPlace"></span>
					</p>
				</div></td>
			<td>
				<div id="zygl_logRecord">
					<div class="zygl_title">
						<h2>登录记录</h2>
					</div>
					<div id="recordName" class="logRecord">
						<h5>用户ID</h5>
						<div id="nameItem" class="recitem"></div>
					</div>
					<div id="recordTime" class="logRecord">
						<h5>时间</h5>
						<div id="timeItem" class="recitem"></div>
					</div>
					<div id="recordAddress" class="logRecord">
						<h5>IP地址</h5>
						<div id="addressItem" class="recitem"></div>
					</div>
					<div id="recordSite" class="logRecord">
						<h5>地点</h5>
						<div id="siteItem" class="recitem"></div>
					</div>
					<div class="clear"></div>
				</div></td>
		</tr>
	</table>
	<div class="clear"></div>
</body>
</html>
