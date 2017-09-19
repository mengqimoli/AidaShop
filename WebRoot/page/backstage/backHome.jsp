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

<title>AidaShop信息管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="images/icon/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<link rel="stylesheet" type="text/css" href="css/style-back.home.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/js-back.home.js"></script>

</head>

<body>
	<div id="bh_container">
		<div id="bh_titlewarp">
			<div id="bh_title">
				<div id="bh_logo">
					<a href="home.action" target="_blank"> <img title="AidaShop主页"
						src="images/aidal01.png"> </a>
				</div>
				<div id="bh_titleWord">
					<h1>
						<a href="page/backstage/backHome.jsp">AidaShop管理中心</a>
					</h1>
				</div>
				<div id="bh_userid">
					<span>您好，</span> <span id="bh_idname"></span><input type="hidden"
						id="bh_id" value=""> <em>|</em> <span id="hb_logout"><a
						href="loginout">退出</a> </span>
				</div>
			</div>
		</div>
		<div id="bh_mainLayout">
			<div id="bh_left">
				<div id="centerBtn">
					<i class="icontitle"></i>
					<h1>管理中心</h1>
				</div>
				<ul>
					<li class="bh_leftli bh_ulshow">
						<div>
							<i class="iconDian"></i> <span>系统管理</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li id="ad_glzy" class="bh_listShow">管理主页</li>
						</ul>
					</li>
					<li class="bh_leftli">
						<div>
							<i class="iconDian"></i> <span>店铺管理</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li>店铺列表</li>
							<li>店铺开通申请</li>
						</ul>
					</li>
					<li class="bh_leftli">
						<div>
							<i class="iconDian"></i> <span>品牌管理</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li>品牌列表</li>
						</ul>
					</li>
					<li class="bh_leftli">
						<div>
							<i class="iconDian"></i> <span>商品管理</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li>商品列表</li>
							<li>商品类别管理</li>
						</ul>
					</li>
					<li class="bh_leftli">
						<div>
							<i class="iconDian"></i> <span>订单管理</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li>订单管理</li>
							<li>未付款订单</li>
							<li>未发货订单</li>
							<li>撤销订单</li>
							<li>订单统计</li>
						</ul>
					</li>
					<li class="bh_leftli">
						<div>
							<i class="iconDian"></i> <span>用户管理</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li>用户列表</li>
						</ul>
					</li>
					<!-- 					<li class="bh_leftli"> -->
					<!-- 						<div> -->
					<!-- 							<i class="iconDian"></i> <span>造型师认证</span> <i class="iconArrow"></i> -->
					<!-- 						</div> -->
					<!-- 						<ul> -->
					<!-- 							<li>造型师审核</li> -->
					<!-- 							<li>平台造型师认证</li> -->
					<!-- 						</ul> -->
					<!-- 					</li> -->
					<li class="bh_leftli">
						<div>
							<i class="iconDian"></i> <span>评论管理</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li>商品评论管理</li>
						</ul>
					</li>
					<!-- 					<li class="bh_leftli"> -->
					<!-- 						<div> -->
					<!-- 							<i class="iconDian"></i> <span>管理员管理</span> <i class="iconArrow"></i> -->
					<!-- 						</div> -->
					<!-- 						<ul> -->
					<!-- 							<li>管理员列表</li> -->
					<!-- 							<li>超级管理员</li> -->
					<!-- 							<li>店铺管理员</li> -->
					<!-- 						</ul> -->
					<!-- 					</li> -->
					<!-- 					<li class="bh_leftli"> -->
					<!-- 						<div> -->
					<!-- 							<i class="iconDian"></i> <span>退换货管理</span> <i class="iconArrow"></i> -->
					<!-- 						</div> -->
					<!-- 						<ul> -->
					<!-- 							<li>退换货管理</li> -->
					<!-- 						</ul> -->
					<!-- 					</li> -->
					<li class="bh_leftli">
						<div>
							<i class="iconDian"></i> <span>个人中心</span> <i class="iconArrow"></i>
						</div>
						<ul>
							<li>个人中心</li>
						</ul>
					</li>
				</ul>
			</div>
			<div id="bh_right">
				<div id="righTit"></div>
				<div id="bh_rightWarp">
					<div id="frameShow" class="bh_rightShow">
						<iframe id="backHFrame" class="iframeBH" name="backHFrame"
							frameborder="0" scrolling="auto" src=""></iframe>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</body>
</html>