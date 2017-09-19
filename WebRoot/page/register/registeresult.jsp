<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册_AidaLife</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="shortcut icon" href="images/icon/favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/style-clear.css">
    <style type="text/css">
    	.resH1 {
    		display: block;
    		width: 600px;
    		height: 50px;
    		margin: 20px auto;
    		line-height: 50px;
    		font-weight: 300;
    	}
    	.resURL {
    		width: 600px;
    		height: 200px;
    		margin: 0 auto;
    	}
    	.resURL h2 {
    		font-weight: 300;
    	}
    	.resA {
    		color: blue;
    		margin: 5px;
    	}
    	#iconTit {width: 600px;height:24px;line-height: 24px; margin: 10 auto 0;}
    	#iconTit span {display: inline-block;width: 76px;text-align: center;}
    	#iconShow {width: 600px;margin: 0 auto;}
    	.iconShowA {display: inline-block;width:64px;height: 64px;border: 1px solid;margin:0 5px 5px 5px;border-radius: 5px;cursor: pointer;}
    	#storeA {background: url("./images/store.png") 2px -5px no-repeat;border-color: #ff3c3c;background-size:64px 64px;}
    	#styleA {background: url("./images/styleDesginner.png") no-repeat;border-color: #fd6d37;background-size:64px 64px;}
    	#shopA {background: url("./images/shopping.png") no-repeat;border-color: #3DB85C;background-size:64px 64px;}
    </style>
    
  </head>
  
  <body>
  	<jsp:include page="/page/reuse/header.jsp"></jsp:include>
	
		<% 
  		request.setCharacterEncoding("utf-8");
  		String data = (String) request.getAttribute("data");
  		System.out.println("registeresult.jsp data:"+data);
  		if(data!=null) {
	  		if(data.equals("0")) {
	  			%>
	  			<h1 class="resH1">邮箱尚未激活，请去邮箱激活</h1>
	  			<div class="resURL"></div>
	  			<%
	  		}else if(data.equals("1")) {
	  			%>
	  			<h1 class="resH1">邮箱已激活，现在去<a class="resA" href="login.html">登录</a></h1>
	  			<div class="resURL">
	  				<h2><span>去</span><a class="resA" href="page/home/gerenzhongxin.jsp">个人中心</a><span>完善个人信息</span></h2>	
	  				<br>
	  				<h2>完善个人信息才可以： </h2>
	  				<div id="iconTit">
	  					<span>店铺入驻</span>
	  					<span>成为造型师</span>
	  					<span>购物</span>
	  				</div>
	  				<div id="iconShow">
	  					<a id="storeA" class="iconShowA" title="店铺入驻" href="page/home/shangjiaruzhu.jsp"></a>
	  					<a id="styleA" class="iconShowA" title="成为造型师"></a>
	  					<a id="shopA" class="iconShowA" title="购物" href="home.jsp"></a>
	  				</div>
	  			</div>
		<%
	  		}else {
	  			%>
	  			<h1 class="resH1">激活失败，请重新去邮箱激活</h1>
	  			<div class="resURL"></div>
	  			<%
	  			
	  		}
  		}else {
  			%>
			<h1 class="resH1">激活失败，请重新去邮箱激活</h1>
			<div class="resURL"></div>
			<%
  		}
  	 %>
    <input type="hidden" value="${data}">
   	<jsp:include page="/page/reuse/footer.jsp"></jsp:include>
  </body>
</html>
