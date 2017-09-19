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

<title>修改店铺信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/style-pinpaiguanli.css">
</head>

<body>
	<span class="frameH3">店铺添加&修改</span>
	<div>
		<s:form action="store_save">
			<s:hidden name="stId" />
			<s:hidden name="baseQuery.currentPage" />
			<s:hidden name="baseQuery.pageSize" />
			<table id="upBrtable">
				<tr>
					<td width="17%" align="right"><label>店铺名称:</label>
					</td>
					<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
							cssStyle="width:500px;" name="stName" label="店铺名称" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>店铺标签:</label>
					</td>
					<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
							cssStyle="width:500px;" name="stTag" label="店铺标签" />
					</td>
				</tr>
				<s:if test="stId!=null">
					<tr>
						<td align="right"><label>好评率:</label>
						</td>
						<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
								cssStyle="width:500px;" name="stFavorablerate" />
						</td>
					</tr>
					<tr>

						<td align="right"><label>服务态度:</label>
						</td>
						<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
								cssStyle="width:500px;" name="stServiceManner" />
						</td>
					</tr>
					<tr>
						<td align="right"><label>服务质量:</label></td>
						<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
								cssStyle="width:500px;" name="stServiceQuality" /></td>
					</tr>
					<tr>
						<td align="right"><label>发货速度:</label></td>
						<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
								cssStyle="width:500px;" name="stSpeed" /></td>
					</tr>
					<tr>
						<td align="right"><label>发货速度:</label></td>
						<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
								cssStyle="width:500px;" name="stSpeed" /></td>
					</tr>
				</s:if>
				<tr>
					<td align="center" colspan="2"><s:submit cssClass="upBrBtn"
							value="提交" /> <s:reset cssClass="upBrBtn" value="重置" /></td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
