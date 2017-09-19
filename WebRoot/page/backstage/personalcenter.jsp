<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<sx:head />
    <base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="css/style-pinpaiguanli.css">
  </head>
  
  <body>
    <span class="frameH3">个人中心</span>
    <div class="messageCenter">${messageCenter }</div>
    <div>
    	<s:form action="updateCustomerAction" method="POST">  
 			<s:hidden name="viCust.UId" />  
 			<s:hidden name="viCust.UAdmin" />  
	  		<table id="upBrtable">
	  			<tr>
	  				<td width="15%" align="right"><label>用户名:</label></td>
	  				<td class="upBrFont" align="left"><s:textfield  name="viCust.UName" label="用户名" /></td>
	  			</tr> 
	  			<tr>
	  				<td width="15%" align="right"><label>密码:</label></td>
	  				<td class="upBrFont" align="left"><s:textfield  name="viCust.UPassword" label="密码" /></td>
	  			</tr>
	  			<tr>
	  				<td width="15%" align="right"><label>昵称:</label></td>
			   		<td class="upBrFont" align="left"><s:textfield  name="viCust.UNickName" label="昵称" /></td>
			   	</tr>  
			   	<tr>
			   		<td width="15%" align="right"><label>真实姓名:</label></td>
			   		<td class="upBrFont" align="left"><s:textfield  name="viCust.URelaname" label="真实姓名" /></td>
			   	</tr> 
			   	<tr>
			   		<td width="15%" align="right"><label>性别:</label></td>
			   		<td class="upBrFont" align="left">
			   			<s:radio list="#{'男':'男','女':'女'}" listKey="key" listValue="value" name="viCust.USex"></s:radio>
			   		</td>
			   	</tr> 
			   	<tr>
			   		<td width="15%" align="right"><label>生日:</label></td>
			   		<td class="upBrFont" align="left">
			   			<sx:datetimepicker name="viCust.UBirthday" displayFormat="yyyy-MM-dd"></sx:datetimepicker>
			   		</td>
			   	</tr> 
			   	<tr>
			   		<td width="15%" align="right"><label>住址:</label></td>
			   		<td class="upBrFont" align="left"><s:textfield  name="viCust.UAddress" label="住址" /></td>
			   	</tr> 
			   		<tr>
			   		<td width="15%" align="right"><label>身份证:</label></td>
			   		<td class="upBrFont" align="left"><s:textfield name="viCust.UCardId" label="身份证" /></td>
			   	</tr> 
			   	<tr>
			   		<td width="15%" align="right"><label>电子邮箱:</label></td>
			   		<td class="upBrFont" align="left"><s:textfield  name="viCust.UEmail" label="电子邮箱" /></td>
			   	</tr> 
			   	<tr>
			   		<td width="15%" align="right"><label>手机:</label></td>
			   		<td class="upBrFont" align="left"><s:textfield  name="viCust.UMobile" label="手机" /></td>
			   	</tr> 
			   	<tr>
			   		<td width="15%" align="right"><label>所属店铺ID:</label></td>
			   		<td class="upBrFont" align="left"><s:textfield readonly="true" style= "background:transparent;border-style:none;width:100%; " name="viCust.stId" label="所属店铺ID" /></td>
			   	</tr>
			   	<tr><td width="15%" align="right"><label>权限:</label></td><td align="left"><label>超级管理员</label> </td> </tr> 
			   	<tr><td><label>造型师认证:</label></td></tr>
			   	<tr><td class="upBrFont_1" colspan="2"><s:radio name="viCust.UStylingDesigner" list="#{'非认证':0,'平台认证':1,'国家认证':2,'国家认证审核中':3,'平台认证审核中':4}" label="状态" listKey="value" listValue="key"/></td>
			   	</tr>  
			   	<tr><td><label>状态VIP:</label></td></tr>
			   	<tr>
			   		<td class="upBrFont_1" colspan="2"><s:radio name="viCust.UState" list="#{'正常':0,'VIP1':2,'VIP2':3,'VIP3':4}" label="状态VIP" listKey="value" listValue="key"></s:radio></td>
			   	</tr>  
			   	<tr>
			   		<td align="center" colspan="2">
				   		<s:submit cssClass="upBrBtn" value="提交" />  
						<s:reset cssClass="upBrBtn" value="重置"/>  
				    </td>
				</tr>
			</table>  
  		</s:form>  
    </div>
  </body>
</html>
