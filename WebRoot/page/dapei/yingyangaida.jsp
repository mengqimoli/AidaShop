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

<title>AidaLife_喜欢搭配的时光</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords"
	content="网上超市，网上商城，网络购物，进口食品，美容护理，母婴玩具，厨房清洁用品，家用电器，手机数码，电脑软件办公用品，家居生活，服饰内衣，营养保健，钟表珠宝，饰品箱包，汽车生活，图书音像，礼品卡，药品，医疗器械，隐形眼镜等，AidaLShop">
<meta http-equiv="description" content="AidaLShop，在线搭配平台，在搭配中改变为更好的我">

<link rel="shortcut icon" href="images/icon/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
</head>
<body>
	<jsp:include page="../reuse/detailheader.jsp"></jsp:include>
	<jsp:include page="../reuse/detailfooter.jsp"></jsp:include>
</body>
</html>
