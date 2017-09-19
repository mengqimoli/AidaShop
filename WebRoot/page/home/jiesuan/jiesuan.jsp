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
<script type="text/javascript" src="js/comment/comment.js"></script>
<style type="text/css">
.cm {
	border: 1px black solid;
	margin: 5px;
	padding: 5px;
}

.btnfbpl {
	width: 66px;
	height: 32px;
	background: #DCDCDC;
	color: Gray;
	border-radius: 5px;
	border: none;
	outline: none;
	cursor: pointer;
	margin: 20px;
}

.btn1 {
	background: #ff3c3c;
	width: 98px;
	height: 35px;
	color: #fff;
	border: 0;
	font-size: 14px;
	font-family: "Microsoft YaHei";
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
}

.btnfbpl1 {
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

table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 100%;
}

table,th,td {
	border: 1px solid white;
	text-align: center;
}

th {
	font-size: 14px;
	font-family: 宋体;
	border: 4px solid LightSteelBlue;
	border-left-style: none;
	border-top-style: none;
	border-right-style: none;
}

.longtext {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 250px;
}
</style>

</head>
<body>
	<jsp:include page="../../reuse/detailheader.jsp"></jsp:include>
	<div>
		<div class="ad_home_wrap">
			<!-- 单个商品展示框 -->
			<div class="floor_title">
				<a>确认订单信息</a> <em></em> <a></a>
			</div>
			<br /> <br />
			<table>
				<tr>
					<th style="width: 15%" colspan="2">店铺宝贝</th>
					<th style="width: 25%">商品属性</th>
					<th style="width: 15%">单价</th>
					<th style="width: 15%">数量</th>
					<th style="width: 15%">优惠方式</th>
					<th style="width: 15%">小计</th>
				</tr>
				<tr>
					<td style="height: 20px; text-align: right;" colspan="7"></td>
				</tr>
				<s:iterator value="#session.BUYCART_IN_SESSION.items" var="item">
					<tr style="background-color: HoneyDew   ">
						<td style="width: 200px; height: 130px;"><a
							href="proShow.action?PId=${productInfo.PId}" target="_top"><img
								alt="${productInfo.PName}" height="80px;"
								src="${productInfo.PSmallPic}"> </a></td>
						<td valign="top"><br /> <br />
							<div>
								<a href="proShow.action?PId=${productInfo.PId}" target="_top">${productInfo.PName}</a>
							</div></td>
						<td>颜色：44R暗枣红<br />尺码：M</td>
						<td><font color="red" size="2px;">￥${productInfo.PSellprice}</font>
						</td>
						<td><font color="LightSeaGreen" size="2px;">${proNum}件</font>
						</td>
						<td><font color="Green " size="2px;">普通会员</font>
						</td>
						<td><font color="red" size="2px;">￥${proNum*productInfo.PSellprice}</font>
						</td>
					</tr>
					<tr style="background-color: AliceBlue ">
						<td colspan="3" style="height: 40px;">给卖家留言：<s:textfield
								size="70px;" placeholder="选填：对本次交易的说明（建议填写已和商家协商一致的内容）" /></td>
						<td colspan="2">运送方式: 普通&nbsp;配送&nbsp;快递&nbsp;免邮</td>
						<td></td>
						<td><font color="red" size="2px;">0.00</font></td>
					</tr>
					<tr style="background-color: AliceBlue ">
						<td style="height: 40px; text-align: right;" colspan="7"><font
							size="2px;">店铺合计(含运费)</font><font color="red" size="4px;">￥${proNum*productInfo.PSellprice}</font>&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<td style="height: 20px; text-align: right;" colspan="7"></td>
					</tr>
				</s:iterator>
				<tr>
					<td colspan="4" height="50px;"></td>
					<td colspan="2" style="font-size: 15px;">实付款：<font color="red"
						size="3">￥<s:property
								value="#session.BUYCART_IN_SESSION.totalPrice" /> </font></td>
					<td><a href="buycart.action">返回购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="home.action" target="_top"><button class="btn1"
								type="button">结算</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<br />
	<br />
	<jsp:include page="../../reuse/detailfooter.jsp"></jsp:include>
</body>
</html>
