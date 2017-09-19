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

<title>商户中心_AidaShop</title>
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
<style type="text/css">
</style>
</head>
<body>
	<div class="home_show mer_left_wrap">
		<div class="data_show">
			<div class="show_content">
				<div id="xiaoShouJinE" class="show_icon">
					<i></i>
				</div>
				<div class="show_main">
					<span class="show_word">累计销售金额</span> <span
						class="show_xiaoshoujine">¥</span> <span class="show_xiaoshoujine"
						class="show_number">215,100</span>
				</div>
			</div>
			<div class="show_content">
				<div id="LeiJiDingDan" class="show_icon">
					<i></i>
				</div>
				<div class="show_main">
					<span class="show_word">累计订单数</span> <span id="show_dindanshu"
						class="show_number">2,100</span>
				</div>
			</div>
			<div class="show_content">
				<div id="JiaoYiZhong" class="show_icon">
					<i></i>
				</div>
				<div class="show_main">
					<span class="show_word">交易中订单</span> <span id="show_xszdingdan"
						class="show_number">215</span>
				</div>
			</div>
			<div class="show_content">
				<div id="ChengGongXiangMu" class="show_icon">
					<i></i>
				</div>
				<div class="show_main">
					<span class="show_word">发布成功的项目</span> <span id="show_cgxiangmu"
						class="show_number">21</span>
				</div>
			</div>
			<div class="show_content">
				<div id="PingJunPingFen" class="show_icon">
					<i></i>
				</div>
				<div class="show_main">
					<span class="show_word">店铺平均评分</span> <span id="show_pjpinfen"
						class="show_number">4.9</span>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="name_card" style="border:0px solid black; margin:10px 0;">
			<div class="card_data">
				<dl id="manage_set_dl">
					<dt>
						店铺名称：
						<s:property value="user.store.stName" />
					</dt>
					<dt>
						店铺标签：
						<s:property value="user.store.stTag" />
					</dt>
					<dt>
						创建时间：
						<s:property value="user.store.stCreateTime" />
					</dt>
					<dt>
						到期时间：
						<s:property value="user.store.stEndTime" />
					</dt>
					<dt>
						店铺等级：
						<s:property value="user.store.stLevel" />
					</dt>
					<dt>
						服务态度：
						<s:property value="user.store.stServiceManner" />
					</dt>
					<dt>
						服务质量：
						<s:property value="user.store.stServiceQuality" />
					</dt>
					<dt>
						店铺状态：
						<s:property value="user.store.stState" />
					</dt>
				</dl>
			</div>
		</div>
	</div>
</body>
</html>
