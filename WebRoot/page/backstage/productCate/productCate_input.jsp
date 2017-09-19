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
</head>
<body>
	<%--<s:debug />--%>
	<span class="frameH3">商品信息查看&修改</span>
	<br />
	<div>
		<s:form action="productCate_save">
			<s:hidden name="cgId" />
			<table>
				<tr>
					<td style="width: 10%;" align="right"><label>商品类名:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="cgName"
							label="商品名" /></td>
				</tr>
				<tr>
					<td align="right"><label>推荐等级:</label></td>
					<td class="upBrFont" align="left"><s:select list="{1,2,3,4,5}"
							name="cgLevel" />
					</td>
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
