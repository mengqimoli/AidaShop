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
	<div id="wrap_contain" class="wrap_header">
       <div id="login_title">
           <div id="logo">
               <a href="home.action">
                   <img src="images/aidal01.png">
               </a>
           </div>
           <div id="title_right">
           	<a href="login.html">请登录</a>
               <span class="fr">您好，欢迎光临AidaLife,</span>
           </div>
           <div class="clear"></div>
       </div>
   </div>
  </body>
</html>
