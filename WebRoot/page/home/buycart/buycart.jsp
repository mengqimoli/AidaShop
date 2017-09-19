<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<sx:head />

<link rel="stylesheet" type="text/css" href="css/style-pinpaiguanli.css">
<link rel="stylesheet" type="text/css" href="css/style-grzx.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/grzx.js"></script>
<style type="text/css">
.longtext {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 400px;
}

.btn {
	width: 66px;
	height: 32px;
	background: #fd6d37;
	color: #fff;
	border-radius: 5px;
	border: none;
	outline: none;
	cursor: pointer;
	margin: 20px;
}

.btn1 {
	background: #ff3c3c;
	width: 98px;
	height: 28px;
	color: #fff;
	border: 0;
	font-size: 14px;
	font-family: "Microsoft YaHei";
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
}

td,th {
	font-size: 12px;
}

a {
	text-decoration: none;
}
</style>
</head>

<body>
	<div class="setBar">
		<span class="frameH3 spanHover">我的购物车</span>
		<div style="clear:both;"></div>
	</div>
	<div id="base_info">
		<table width="100%">
			<s:iterator value="#session.BUYCART_IN_SESSION.items" var="item">
				<tr>
					<td style="width: 200px;"><a
						href="proShow.action?PId=${productInfo.PId}" target="_top"><img
							alt="${productInfo.PName}" height="160px;"
							src="${productInfo.PSmallPic}"> </a>
					</td>
					<td>
						<table>
							<tr>
								<td><h3 class="longtext">
										<a href="proShow.action?PId=${productInfo.PId}" target="_top"
											style="color: black;">产品名称：${productInfo.PName}</a>
									</h3></td>
							</tr>
							<tr>
								<td>市场价：<font size="2px;">${productInfo.PMarketprice}￥</font>
								</td>
							</tr>
							<tr>
								<td>乐搭价：<font color="red" size="3px;">${productInfo.PSellprice}￥</font><font
									color="red" size="2px;">(节省了${productInfo.PMarketprice-productInfo.PSellprice}￥)</font>
								</td>
							</tr>
							<tr>
								<td>尺 码：M</td>
							</tr>
							<tr>
								<td>数 量：${proNum}</td>
							</tr>
						</table>
					</td>
					<td valign="top"><a
						href="buycart_delete.action?PId=${productInfo.PId}" target="_top"><button
								class="btn" type="button">删除</button> </a>
					</td>
				</tr>
			</s:iterator>
			<tr>
				<td style="height: 50px;"></td>
				<td colspan="2" style="text-align: right; font-size: 15px;" >购物金额小计<font
					color="red">￥<s:property
							value="#session.BUYCART_IN_SESSION.totalPrice" /> </font>，比市场价格<font
					color="green">￥<s:property
							value="#session.BUYCART_IN_SESSION.totalMarkPrice" /> </font>节省了<font
					color="red">￥<s:property
							value="#session.BUYCART_IN_SESSION.jieyuePrice" /> </font>
				</td>

			</tr>
			<tr>
				<td style="height: 50px;"></td>
				<td style="text-align: right;"><a href="home.action"
					target="_top"><button class="btn1" type="button">继续购物</button>
				</a>
				</td>
				<td style="text-align: left;"><a href="order_jiesuan.action" target="_top"><button
							class="btn1" type="button">去结算中心</button> </a></td>
			</tr>
		</table>
	</div>
	<div id="setPwd"></div>
</body>
</html>
