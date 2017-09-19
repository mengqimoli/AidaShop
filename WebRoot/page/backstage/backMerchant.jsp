<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>商户中心_AidaLife</title>
<s:head />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="css/style-back-merchant.css">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/js-back.merchant.js"></script>
</head>
<body>
	<div class="back_mer_wrap">
		<div class="list_wrap">
			<div class="list_title">
				<div class="span_name_con">
					<span id="merchant_name">aidaL</span> <span> 商户中心</span>
				</div>
			</div>
			<div class="list_main">
				<div id="list_main_tit">
					<div id="head_portrait">
						<img alt=""
							src="images/store/ChEi1lgpT3yAU019AAAfbkO0yGk13000.jpg">
					</div>
					<span id="mer_name">KOOL男装旗舰店</span>
				</div>
				<div class="mer_list_item">
					<ul class="list_item_wrap">
						<a style="color: white;" href="merchant.action" target="frmright"><li
							id="list_home" class="list_item mer_list_selected"><em></em><span>店铺首页</span>
						</li> </a>
						<a style="color: white;" href="productInfo.action"
							target="frmright"><li id="list_good" class="list_item"><em></em><span>商品管理
							</span>
						</li> </a>
						<a style="color: white;" href="brand.action" target="frmright"><li
							id="list_brand" class="list_item"><em></em><span>品牌管理</span>
						</li> </a>
						<a style="color: white;" href="comment.action" target="frmright"><li
							id="list_comment" class="list_item"><em></em><span>商品评价管理</span>
						</li> </a>
						<a style="color: white;" href="order.action" target="frmright"><li
							id="list_comment" class="list_item"><em></em><span>订单管理</span>
						</li> </a>
					</ul>
				</div>
			</div>
		</div>
		<div class="mer_left_content">
			<div class="mer_bar">
				<div class="addGood">
					<i></i> <span>添加商品</span>
				</div>
				<ul id="mer_bar_ul" style="position: relative;left: 850px;">
					<li id="bar_mes"><i></i> <span>系统消息</span></li>
					<li id="bar_exit"><a href="loginout"> <i></i> <span>退出</span>
					</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<br /> <br />
		<div class="mer_left">
			<IFRAME height="100%" width="100%" frameBorder=0 id=frmright
				name=frmright src="merchant.action"></IFRAME>
		</div>
	</div>
</body>
</html>
