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

<title>修改品牌信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/style-pinpaiguanli.css">
</head>

<body>
	<span class="frameH3">品牌添加&修改</span>
	<div>
		<s:form action="brand_save">
			<s:hidden name="brId" />
			<s:hidden name="baseQuery.currentPage" />
			<s:hidden name="baseQuery.pageSize" />
			<table id="upBrtable">
				<tr>
					<td><label>中文名称:</label>
					</td>
				</tr>
				<tr>
					<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
							name="brName" label="中文名称" />
					</td>
				</tr>
				<tr>
					<td><label>英文名称:</label>
					</td>
				</tr>
				<tr>
					<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
							name="brEngName" label="英文名称" />
					</td>
				</tr>
				<tr>
					<td><label>简介:</label>
					</td>
				</tr>
				<tr>
					<td class="upBrFont"><s:textarea id="upBrText"
							name="brDiscription" label="简介" />
					</td>
				</tr>
				<s:if test="user.UAdmin==2">
					<tr>
						<td><label>所属店铺:</label></td>
					</tr>
					<tr>
						<td class="upBrFont"><s:select list="#allStores"
								name="adStore.stId" id="adStore" listValue="stName"
								listKey="stId" headerKey="-1" headerValue=" ------请选择------" />
						</td>
					</tr>
				</s:if>
				<tr>
					<td><label>状态:</label>
					</td>
				</tr>
				<tr>
					<td class="upBrFont"><s:radio name="brState"
							list="#{'停售':0,'正常':1,'促销':2,'开通中':3}" label="状态" listKey="value"
							listValue="key" />
					</td>
				</tr>
				<tr>
					<td><label>评级:</label>
					</td>
				</tr>
				<tr>
					<td class="upBrFont"><s:radio name="brLevelGrand"
							list="#{'恶劣':0,'不良':1,'普通':2,'较好':3,'优秀':4}" label="评级"
							listKey="value" listValue="key"></s:radio>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2"><s:submit cssClass="upBrBtn"
							value="提交" /> <s:reset cssClass="upBrBtn" value="重置" /></td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
