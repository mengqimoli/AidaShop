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

<link rel="stylesheet" type="text/css" href="css/style-homecontent.css">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<link rel="stylesheet" type="text/css" href="css/zzsc.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/js-homecontent.js"></script>
</head>

<body>
	<jsp:include page="../reuse/detailheader.jsp"></jsp:include>
	<div id="mainLayout">
		<div class="ad_home_wrap">
			<!-- 单个商品展示框 -->
			<div class="floor_title">
				<a>服装</a> <em>·</em> <a>爱搭</a>
			</div>
			<table>
				<tr>
					<td width="30%"><img alt="符号公社 男士字母时尚休闲卫衣" height="550px;" width="350px;"
						src="images/fuzhuangdapei/2-2.jpg"></td>
					<td valign="top" width="25%"><br /><h2>秋水伊人2017夏装新品女装圆领条纹显瘦字母彩印百搭T恤上衣</h2>
						<img alt="秋水伊人2017夏装新品女装圆领条纹显瘦字母彩印百搭T恤上衣" height="350px;"
						width="350px;" src="images/fuzhuangdapei/2-1.jpg"> <br />
					<br />
					<div style="color: red">个性条纹 直筒百搭版型 面料柔软舒适</div>
					</td>
					<td width="15px;"></td>
					<td valign="top" width="25%"><br /> <br /><br /><br /> <h2>秋水伊人2017夏新品女装纯色百搭系带休闲七分裤阔腿裤女裤</h2><img
						alt="秋水伊人2017夏装新品女装宽松纯色七分裤休闲裤明线拼接阔腿裤女" height="250px;"
						width="250px;" src="images/fuzhuangdapei/2-3.jpg"> <br />
					<br />
					<div style="color: red">精选优质面料 宽松大方版型 纯色百搭款式</div>
					</td>
					<td><div style="position: relative;left: 50px; top: -100px;">
							<button id="searchSuggest" class="serch_btn" type="button">一键购买</button>
						</div> <br />
						<div style="position: relative;left: 50px; top: -100px;">
							<button id="searchSuggest" class="serch_btn" type="button">一键加入购物车</button>
						</div></td>
				</tr>
			</table>

		</div>
	</div>
	<jsp:include page="../reuse/detailfooter.jsp"></jsp:include>
</body>
</html>
