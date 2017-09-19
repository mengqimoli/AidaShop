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
<link rel="stylesheet" type="text/css" href="css/my/my.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/comment/comment.js"></script>
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
	<s:form id="domainForm" action="comment">
		<s:if test="adCustomer.UAdmin == 2">
			<table class="headTab bg-1" width="100%" border="0" align="center"
				cellpadding="0" cellspacing="0" class="right-font08">
				<tr>
					<td width="15%"><span class="newfont07">选择： <a
							href="javascript:void(0);" class="right-font08"
							onclick="selectAll();">全选</a> - <a href="javascript:void(0);"
							class="right-font08" onclick="unselectAll();">取消全选</a> </span>
					</td>
					<td width="28%">
						<button type="button" id="combtnscsxx"
							class="button button--winona button--border-thin button--round-s"
							data-text="删除所选项">
							<span>删除所选项</span>
						</button>
						</button> <a href="comment_input.action"><button type="button"
								class="button button--winona button--border-thin button--round-s"
								data-text="添加">
								<span>添加</span>
							</button> </a>
					</td>
					<td></td>
				</tr>
			</table>
		</s:if>
		<table id="commentListTAb" class="bordered">
			<thead>
				<tr>
					<th>选择</th>
					<th>编号</th>
					<th>用户ID</th>
					<th>商品名</th>
					<th>评论内容</th>
					<th>发表时间</th>
					<s:if test="adCustomer.UAdmin == 2">
						<th>操作</th>
					</s:if>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pageList.rows">
					<tr class="bhover">
						<td><input id="comId" type="checkbox" name="fxk"
							value="<s:property value="comId" />" /></td>
						<td>${comId}</td>
						<td class="introBh">${adCustomer.UName}</td>
						<td class="introBh">${adProductInfo.PName}</td>
						<td class="introBh">${comContent}</td>
						<td class="introBh">${comTime}</td>
						</td>
						<s:if test="adCustomer.UAdmin == 2">
							<td>
								<div class="nochage">
									<a class="listEdit" title="编辑"
										onclick="updateDomain('comment_input.action?comId=${comId}');"></a>
									<a class="cancelEdit" title="删除" href="javascript:void(0);"
										onclick="deleteDomain('comment_deletesingle.action?comId=${comId}');"></a>
								</div></td>
						</s:if>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<%@include file="/common/page.jsp"%>
	</s:form>
</body>
</html>
