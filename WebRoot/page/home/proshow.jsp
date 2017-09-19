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
</style>
</head>
<body>
	<jsp:include page="../reuse/detailheader.jsp"></jsp:include>
	<div id="mainLayout">
		<div class="ad_home_wrap">
			<!-- 单个商品展示框 -->
			<div class="floor_title">
				<a>商品</a> <em>·</em> <a>详情</a>
			</div>
			<table width="100%">
				<tr>
					<td height="30px;"></td>
				</tr>
				<tr>
					<td width="400px;"><img alt="${productInfo.PName}"
						height="400px;" src="${productInfo.PBigPic}">
					</td>
					<td width="30px;"></td>
					<td valign="top"><table>
							<tr>
								<td colspan="2"><h2>${productInfo.PName}</h2>
								</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2"><font color="red">${productInfo.PDescription}</font><br />
									<br /></td>
								<td></td>
							</tr>
							<tr style="background-color: Gainsboro;">
								<td height="40px;" width="15%">市场价</td>
								<td><font size="3px;">${productInfo.PMarketprice}</font> <br />
								</td>
								<td></td>
							</tr>
							<tr style="background-color: Gainsboro;">
								<td height="40px;">乐搭价</td>
								<td><font color="red" size="5px;">${productInfo.PSellprice}</font><font
									color="red" size="2px;">(正品特价)</font>
								</td>
								<td></td>
							</tr>
							<tr>
								<td height="40px;">运费</td>
								<td>云南昆明 至 石家庄 快递:0.00 平邮: 15.00</td>
								<td></td>
							</tr>
							<tr>
								<td style="text-align: right;">月销量&nbsp;<font color="red"><b>32</b>
								</font>
								</td>
								<td style="text-align: center;">累计评价&nbsp;<font color="red"><b>266</b>
								</font>
								</td>
								<td style="text-align: left;">送乐搭积分&nbsp;<font color="red"><b>135</b>
								</font>
								</td>
							</tr>
							<tr>
								<td height="10px;"></td>
							</tr>
							<tr>
								<td>尺码</td>
								<td><a class="cm">S</a><a class="cm">M</a> <a class="cm">L</a>
									<a class="cm">XL</a></td>
								<td></td>
							</tr>
							<tr>
								<td height="20px;"></td>
							</tr>
							<tr>
								<td>数量</td>
								<td><s:textfield name="num" size="2" value="1" />件(库存
									${productInfo.PCount} 件)</td>
								<td></td>
							</tr>
							<tr>
								<td height="40px;"></td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2"><s:if test="user != null">
										<button id="searchSuggest" class="serch_btn" type="button">立即购买</button>
									</s:if> <s:else>
										<a href="login.html"><button id="searchSuggest"
												class="serch_btn" type="button">立即购买</button> </a>
									</s:else>&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <s:if
										test="user != null">
										<a href="buycart_save.action?PId=${productInfo.PId}"><button
												id="searchSuggest" class="serch_btn" type="button">加入购物车</button>
										</a>
									</s:if> <s:else>
										<a href="login.html"><button id="searchSuggest"
												class="serch_btn" type="button">加入购物车</button> </a>
									</s:else>
								</td>
							</tr>
						</table></td>
				</tr>
			</table>
		</div>
	</div>
	<s:hidden name="productInfo.PId" id="PId" />
	<table style="width: 100%">
		<tr>
			<td style="width: 40px;"></td>
			<td style="width: 20%;text-align: center;"><font color="#808080"
				size="4">${productInfo.adStore.stName}旗舰店</font><br /> <br /> <a
				style="color: IndianRed">进入店铺</a>
			</td>
			<td style="width: 30px;"></td>
			<td><br />
				<div class="floor_title">
					<a>商品评论</a>
				</div> <br />
				<table style="width: 900px;">
					<tr>
						<td style="width: 15%; text-align: center;"><s:if
								test="user != null">${user.UNickName}</s:if> <s:else>
								<a href="login.html">请登录</a>
							</s:else></td>
						<td><s:textarea rows="3" cols="120" name="comContent" />
						</td>
						<td><s:if test="user == null">
								<button class="btnfbpl">发表评论</button>
							</s:if> <s:else>
								<button class="btnfbpl1" id="btncomment">发表评论</button>
							</s:else>
						</td>
					</tr>
				</table> <br />
				<hr> <br />
				<table style="width: 900px;">
					<s:iterator value="proComments" var="proCom">
						<tr>
							<td style="width: 15%; text-align: center;" valign="top"><font
								color="DarkSeaGreen" size="2">${proCom.adCustomer.UNickName}</font>(匿名)
							</td>
							<td>${proCom.comContent}<br /> <br /> <font
								color="DarkGray" size="1">${proCom.comTime}</font>
								<hr></td>
						</tr>
					</s:iterator>
				</table>
			</td>
		</tr>
	</table>
	<br />
	<br />
	<br />
	<br />
	<br />
	<jsp:include page="../reuse/detailfooter.jsp"></jsp:include>
</body>
</html>
