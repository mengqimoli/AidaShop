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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="images/icon/favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/style-aida01.css">
    <link rel="stylesheet" type="text/css" href="css/style-clear.css">
 
  </head>
  
  <body>
   	<div class="container_register">
   		<!-- 顶部 -->
   		<jsp:include page="../reuse/header.jsp"/>
 		<!-- 注册框 -->
 		<div id="reg_mid">
 			<div id="reg_box">
 				<div id="reg_title">
 					<label>注册账号</label>
 				</div>
				<div id="regid" class="regstyle" >
					<input id="regidinp" name="regidinp" class="reg_input" type="text" placeholder="请输入邮箱或手机号">
					<div id="span0">
						<span>请您输入QQ、163、126、gmail等常用邮箱，或者11位手机号。</span>
					</div>
				</div>
				<div id="regphone" class="regstyle">
					<div id="Verification1">
						<input id="regcheck1" name="regcheck1" class="regcheck" type="text" placeholder="验证码">
						<input id="phonecheck" name="phonecheck" type="button" class="checkbut" value="获取验证码">
						<div>
							<span></span>
						</div>
					</div>
				</div>
				<div id="infoBox">
					<div id="regname" class="register_box regstyle">
					<input id="name_input" class="reg_input" name="name_input" type="text" placeholder="昵称">
					<div>
						<span></span>
					</div>
				</div>
				<div id="repwd" class="register_box regstyle">
					<input id="pwd_input" class="reg_input" name="pwd_input" type="password" placeholder="密码" autocomplete="off">
					<div>
						<span></span>
					</div>
				</div>
				<div id="repwd1" class="register_box regstyle">
					<input id="pwd_input1" class="reg_input" name="pwd_input1" type="password" placeholder="确认密码" autocomplete="off">
					<div>
						<span id="errorPwd"></span>
					</div>
				</div>
				</div>
				<div id="reglawread" class="register_box">
					<input id="lawread" type="checkbox" checked="checked">
					<label>我已认真阅读并同意</label>
					<a href="page/register/shoplaw.jsp">《AidaLife服务条款》</a>
				</div>
				<div id="regsurebut" class="register_box regstyle">
					<input id="regbut" type="button" value="立即注册" onclick="return register();">
				</div>
				<div id="signin"><a href="login.html">已有账号，立即登录</a></div>
 			</div>
 		</div>
 		<script type="text/javascript" src="js/js-aida01.js"></script>
 		<!-- 尾部 -->
 		<jsp:include page="../reuse/footer.jsp"></jsp:include>
   </div>
  </body>
</html>
