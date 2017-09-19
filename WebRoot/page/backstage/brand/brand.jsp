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

<title>My JSP 'pingpaiguanli.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/style-table.css">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<link rel="stylesheet" type="text/css" href="css/style-back.home.css">
<link rel="stylesheet" type="text/css" href="css/button/buttons.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/my/my.css">
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/brand/brand.js"></script>
<script type="text/javascript">
	//全选
	function selectAll() {
		var x = document.getElementById("myForm");
		for ( var i = 0; i < x.length; i++) {
			if (x.elements[i].name == "brIds") {
				x.elements[i].checked = true;
			}
		}
	}
	//取消全选
	function unselectAll() {
		var x = document.getElementById("myForm");
		for ( var i = 0; i < x.length; i++) {
			if (x.elements[i].name == "brIds") {
				if (x.elements[i].checked == true)
					x.elements[i].checked = false;
			}
		}
	}
</script>
</head>
<body>
	<%-- <s:debug /> --%>
	<s:form id="domainForm" action="brand">
		<table class="headTab" width="100%" border="0" align="center"
			cellpadding="0" cellspacing="0" class="right-font08">
			<tr>
				<td width="15%"><span class="newfont07">选择： <a
						href="javascript:void(0);" class="right-font08"
						onclick="selectAll()">全选</a> - <a href="javascript:void(0);"
						class="right-font08" onclick="unselectAll()">取消全选</a> </span>
				</td>
				<td width="28%">
					<button type="button" id="brandbtnscsxx"
						class="button button--winona button--border-thin button--round-s"
						data-text="删除所选项">
						<span>删除所选项</span>
					</button>
					</button> <a href="brand_input.action"><button type="button"
							class="button button--winona button--border-thin button--round-s"
							data-text="添加">
							<span>添加</span>
						</button> </a></td>
				<td><s:if test="user.UAdmin==2">店铺: <s:select
							list="#allStores" name="baseQuery.stId"
							onchange='$("#domainForm").submit();' id="adStore"
							listValue="stName" listKey="stId" headerKey="-1"
							headerValue=" ---------请选择---------" />
					</s:if></td>
			</tr>
		</table>
		<table id="brandListTAb" cellspacing="0">
			<thead>
				<tr>
					<th width="5%">选择</th>
					<th width="5%">编号</th>
					<th width="10%">中文名称</th>
					<th width="10%">英文名称</th>
					<th>简介</th>
					<th width="10%">所属店铺</th>
					<th width="10%">申请时间</th>
					<th width="10%">开通时间</th>
					<th width="5%">状态</th>
					<th width="10%">操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pageList.rows">
					<tr class="bhover"
						<s:if test="brId==#parameters['brId'][0]">style="color: red"</s:if>>
						<td><input id="brId" type="checkbox" name="fxk"
							value="<s:property value="brId" />" />
						</td>
						<td>${brId}</td>
						<td class="introBh"><s:property value="brName" /></td>
						<td class="introBh"><s:property value="brEngName" /></td>
						<td class="introBh"><s:property value="brDiscription" /></td>
						<td class="introBh"><s:property value="adStore.stName" /></td>
						<td><s:property value="brApplyTime" /></td>
						<td><s:property value="brEnterTime" /></td>
						<td><s:property value="brState" /></td>
						<td>
							<div class="nochage">
								<a class="listEdit" title="编辑"
									onclick="updateDomain('brand_input.action?brId=${brId}');"></a>
								<a class="cancelEdit" title="删除" href="javascript:void(0);"
									onclick="deleteDomain('brand_deletesingle.action?brId=${brId}');"></a>
							</div></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<%@include file="/common/page.jsp"%>
	</s:form>
</body>
</html>
