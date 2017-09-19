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

<title>乐享搭配生活馆</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/style-aida-detail.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
#iconS {
	height: 100px;
	width: 100px;
	background: url(./images/icon_myyhd_index_24.png) no-repeat -74px -4px;
}

#iconS:hover {
	transform: rotateX(180deg);
}
</style>
</head>
<body>
	<% response.sendRedirect("home.action"); %>
</body>
</html>
