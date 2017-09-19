<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/style-aida01.css">
    <link rel="stylesheet" type="text/css" href="css/style-clear.css">
  </head>
  
  <body>
  	<div class="clear"></div>
  	<div class="ft_service_link">
	  	<div class="ft_help_list">
	  		<dl>
	  			<dt>新手入门</dt>
	  			<dd><a href="#">购买流程</a></dd>
	  			<dd><a href="#">会员制度</a></dd>
	  			<dd><a href="#">订单查询</a></dd>
	  			<dd><a href="#">发票制度</a></dd>
	  			<dd><a href="#">常见问题</a></dd>
	  		</dl>
	  		<dl>
	  			<dt>支付方式</dt>
	  			<dd><a href="#">货到付款</a></dd>
	  			<dd><a href="#">网上支付</a></dd>
	  			<dd><a href="#">银行付款</a></dd>
	  			<dd><a href="#">礼品卡支付</a></dd>
	  			<dd><a href="#">其他支付</a></dd>
	  		</dl>
	  		<dl>
	  			<dt>配送服务</dt>
	  			<dd><a href="#">配送范围及运费</a></dd>
	  			<dd><a href="#">配送进度查询</a></dd>
	  			<dd><a href="#">自提服务</a></dd>
	  			<dd><a href="#">商品验货与签收</a></dd>
	  		</dl>
	  		<dl>
	  			<dt>售后保障</dt>
	  			<dd><a href="#">退换货政策</a></dd>
	  			<dd><a href="#">退换货流程</a></dd>
	  			<dd><a href="#">退款说明</a></dd>
	  			<dd><a href="#">延保说明页面</a></dd>
	  			<dd><a href="#">联系客服</a></dd>
	  		</dl>
	  		<dl>
	  			<dt>商家合作</dt>
	  			<dd><a href="./page/home/shangjiaruzhu.jsp">商家入驻</a></dd>
	  			<dd><a href="#">商必赢</a></dd>
	  			<dd><a href="#">平台规则</a></dd>
	  			<dd><a href="#">企业采购</a></dd>
	  		</dl>
	  		<dl>
	  			<dt>造型师合作</dt>
	  			<dd><a href="#">造型师入驻</a></dd>
	  			<dd><a href="#">造型师认证</a></dd>
	  			<dd><a href="#">造型师认证规则</a></dd>
	  			<dd><a href="#">造型师平台评级规则</a></dd>
	  		</dl>
	  	</div>
	  	<div class="ft_mobile_code">
	  		<p>APP更方便</p>
	  		<img alt="AidaLife移动客户端二维码" src="images/QRcode/erweimaapp.png">
	  	</div>
  	</div>
    <div class="simplefooter">
        <p>Copyright © AidaLife爱搭乐享生活馆 2007-2018，All Rights Reserved</p>
    </div>
  </body>
</html>
