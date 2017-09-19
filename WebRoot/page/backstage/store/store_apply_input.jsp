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
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnbtg").click(function() {
			$("#sftg").val("否");
			if (confirm("确定提交审核吗?")) {
				alert("审核成功");
				return true;
			} else {
				return false;
			}
		})
		$("#btntg").click(function() {
			$("#sftg").val("是");
			if (confirm("确定提交审核吗?")) {
				alert("审核成功");
				return true;
			} else {
				return false;
			}
		})
	})
</script>
</head>

<body>
	<span class="frameH3">店铺审核</span>
	<div>
		<s:form action="store_checkapply">
			<input type="hidden" name="stId" value="${storeapply.stId}"/>
			<s:hidden name="baseQuery.currentPage" />
			<s:hidden name="baseQuery.pageSize" />
			<s:hidden name="sftg" id="sftg" />
			<table id="upBrtable">
				<tr>
					<td width="17%" align="right"><label>店铺名称:</label></td>
					<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
							cssStyle="width:500px;" name="storeapply.stName" label="店铺名称" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>店铺标签:</label></td>
					<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
							cssStyle="width:500px;" name="storeapply.stTag" label="店铺标签" readonly="true" />
					</td>
				</tr>
				</tr>
				<tr>
					<td align="right"><label>申请时间:</label></td>
					<td class="upBrFont"><s:textfield cssClass="upBrtextfield"
							cssStyle="width:500px;" name="storeapply.stCreateTime" label="请时间" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td align="right"><label>证件照正面:</label></td>
					<td class="introBh"><s:hidden id="front_hide"
							name="user.store.st_IDCard_front"></s:hidden> <img alt="无图"
						width="200" src='${storeapply.st_IDCard_front}'></td>
				</tr>
				<tr>
					<td align="right"><label>证件照反面:</label></td>
						<td class="introBh"><s:hidden id="back_hide"
							name="user.store.st_IDCard_back"></s:hidden> <img alt="无图"
						width="200" src='${storeapply.st_IDCard_back}'></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><s:submit id="btntg"
							cssClass="upBrBtn" value="通过" /> <s:submit id="btnbtg"
							cssClass="upBrBtn" value="不通过" />
					</td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
