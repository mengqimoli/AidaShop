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
<link rel="stylesheet" type="text/css" href="css/style-pinpaiguanli.css">
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<span class="frameH3">成员信息查看&修改</span>
	<br />
	<div>
		<s:form action="user_save">
			<s:hidden name="UId" />
			<s:hidden name="baseQuery.currentPage" />
			<s:hidden name="baseQuery.pageSize" />
			<s:hidden name="baseQuery.UAdmin" />
			<s:hidden name="baseQuery.UState" />
			<s:hidden name="baseQuery.UStylingDesigner" />
			<table>
				<tr>
					<td width="18%" align="right"><label>用户名:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="UName"
							label="用户名" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>昵称:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="UNickName"
							label="昵称" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>真实姓名:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="URelaname"
							label="真实姓名" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>性别:</label></td>
					<td class="upBrFont" align="left"><s:radio name="USex"
							list="#{'男':'男','女':'女'}" label="性别" listKey="value"
							listValue="key" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>生日:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							name="UBirthday" id="stuBirth" size="20" style="height:30px;"
							cssClass="Wdate" onClick="WdatePicker({maxDate:new Date()})" />
					</td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>住址:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="UAddress"
							label="住址" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>身份证:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="UCardId"
							label="身份证" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>电子邮箱:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="UEmail"
							label="电子邮箱" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>手机:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="UMobile"
							label="手机" /></td>
				</tr>
				<tr>
					<td width="15%" align="right"><label>所属店铺ID:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="stId"
							label="所属店铺ID" /></td>
				</tr>
				<tr>
					<td><label>造型师认证:</label></td>
				</tr>
				<tr>
					<td class="upBrFont_1" colspan="2"><s:radio
							name="UStylingDesigner"
							list="#{'非认证':0,'平台认证':1,'国家认证':2,'国家认证审核中':3,'平台认证审核中':4}"
							label="状态" listKey="value" listValue="key" /></td>
				</tr>
				<tr>
					<td><label>权限:</label></td>
				</tr>
				<tr>
					<td class="upBrFont_1" colspan="2"><s:radio name="UAdmin"
							list="#{'普通':0,'店铺管理员':1,'超级管理员':2}" label="权限" listKey="value"
							listValue="key"></s:radio></td>
				</tr>
				<tr>
					<td><label>状态VIP:</label></td>
				</tr>
				<tr>
					<td class="upBrFont_1" colspan="2"><s:radio name="UState"
							list="#{'正常':0,'禁用':1,'VIP1':2,'VIP2':3,'VIP3':4,'激活中':5}"
							label="状态VIP" listKey="value" listValue="key"></s:radio></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><s:submit cssClass="upBrBtn"
							value="提交" /> <s:reset cssClass="upBrBtn" value="重置" />
					</td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
