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

<link rel="stylesheet" type="text/css" href="css/style-table.css">
<link rel="stylesheet" type="text/css"
	href="css/style-huiyuanguanli.css">
<link rel="stylesheet" type="text/css" href="css/button/buttons.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/my/my.css">
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/product/productInfo.js"></script>
<script type="text/javascript">
	//全选
	function selectAll() {
		var x = document.getElementById("domainForm");
		for ( var i = 0; i < x.length; i++) {
			if (x.elements[i].name == "fxk") {
				x.elements[i].checked = true;
			}
		}
	}
	//取消全选
	function unselectAll() {
		var x = document.getElementById("domainForm");
		for ( var i = 0; i < x.length; i++) {
			if (x.elements[i].name == "fxk") {
				if (x.elements[i].checked == true)
					x.elements[i].checked = false;
			}
		}
	}
</script>
</head>

<body>
	<%-- <s:debug /> --%>
	<s:form id="domainForm" action="productInfo">
		<table class="headTab bg-1" width="100%" border="0" align="center"
			cellpadding="0" cellspacing="0" class="right-font08">
			<tr>
				<td width="15%"><span class="newfont07">选择： <a
						href="javascript:void(0);" class="right-font08"
						onclick="selectAll();">全选</a> - <a href="javascript:void(0);"
						class="right-font08" onclick="unselectAll();">取消全选</a> </span>
				</td>
				<td width="28%">
					<button type="button" id="probtnscsxx"
						class="button button--winona button--border-thin button--round-s"
						data-text="删除所选项">
						<span>删除所选项</span>
					</button>
					</button> <a href="productInfo_input.action"><button type="button"
							class="button button--winona button--border-thin button--round-s"
							data-text="添加">
							<span>添加</span>
						</button> </a>
				</td>
				<td><s:if test="user.UAdmin==2">
					店铺: <s:select list="#allStores" name="baseQuery.stId"
							onchange='$("#domainForm").submit();' id="adStore"
							listValue="stName" listKey="stId" headerKey="-1"
							headerValue="------请选择------" />
					</s:if> &nbsp;&nbsp;&nbsp;&nbsp;类别: <s:select list="#allProductCates"
						name="baseQuery.cgId" onchange='$("#domainForm").submit();'
						id="adProductcategory" listValue="cgName" listKey="cgId"
						headerKey="-1" headerValue=" ------请选择------" />&nbsp;&nbsp;&nbsp;&nbsp;
					上架/下架: <s:select name="baseQuery.PState"
						onchange='$("#domainForm").submit();'
						list="#{-1:'------请选择------',1:'上架',0:'下架'}" /></td>
			</tr>
		</table>
		<table id="productInfoListTAb" class="bordered">
			<thead>
				<tr>
					<th>选择</th>
					<th>图片</th>
					<th>编号</th>
					<th style="width: 15%;">名称</th>
					<th>类别</th>
					<th>品牌</th>
					<th>店铺</th>
					<th>创建时间</th>
					<th>推荐等级</th>
					<th>是否上架</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pageList.rows">
					<tr class="bhover"
						<s:if test="PId==#parameters['PId'][0]">style="color: red"</s:if>>
						<td><input id="PId" type="checkbox" name="fxk"
							value="<s:property value="PId" />" /></td>
						<td><img alt="无图" width="60" src='${PSmallPic}'>
						</td>
						<td>${PId}</td>
						<td class="introBh">${PName}</td>
						<td class="introBh">${adProductcategory.cgName}</td>
						<td class="introBh">${brandAD.brName}</td>
						<td class="introBh">${adStore.stName}</td>
						<td class="introBh">${PCreateTime}</td>
						<td class="introBh">${PCommend}</td>
						<td class="introBh"><s:if test="PState==1">上架</s:if> <s:else>下架</s:else>
						</td>
						<td style="text-align: left;">
							<div class="nochage">
								<a class="listEdit" title="编辑"
									onclick="updateDomain('productInfo_input.action?PId=${PId}');"></a>
								<a class="cancelEdit" title="删除" href="javascript:void(0);"
									onclick="deleteDomain('productInfo_deletesingle.action?PId=${PId}');"></a>
							</div>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<%@include file="/common/page.jsp"%>
	</s:form>
</body>
</html>
