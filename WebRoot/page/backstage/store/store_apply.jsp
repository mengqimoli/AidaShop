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
<link rel="stylesheet" type="text/css" href="css/style-back.home.css">
<link rel="stylesheet" type="text/css" href="css/button/buttons.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/my/my.css">
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/store/store.js"></script>
<script type="text/javascript">
	//全选
	function selectAll() {
		var x = document.getElementById("myForm");
		for ( var i = 0; i < x.length; i++) {
			if (x.elements[i].name == "stIds") {
				x.elements[i].checked = true;
			}
		}
	}
	//取消全选
	function unselectAll() {
		var x = document.getElementById("myForm");
		for ( var i = 0; i < x.length; i++) {
			if (x.elements[i].name == "stIds") {
				if (x.elements[i].checked == true)
					x.elements[i].checked = false;
			}
		}
	}
</script>

</head>

<body>
	<s:form id="domainForm" action="store">
		<table id="storeListTAb" class="bordered">
			<thead>
				<tr>
					<th>所属ID</th>
					<th>店铺名称</th>
					<th>店铺标签</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pageList.rows">
					<tr class="bhover">
						<td>${stId}</td>
						<td id="stName" class="introBh"><s:property value="stName" />
						</td>
						<td id="stTag" class="introBh"><s:property value="stTag" />
						</td>
						<td>
							<div class="nochage">
								<s:if test="stState==0">未通过</s:if>
								<s:elseif test="stState==1">申请中</s:elseif>
								<s:elseif test="stState==2">已通过</s:elseif>
								<s:elseif test="stState==3">问题店铺</s:elseif>
							</div>
							<div class="chage">
								<s:select id="stState" name="stState"
									list="#{'正常':0,'禁用':1,'推广中':2,'问题店铺':3}" listKey="value"
									listValue="key" value="stState"></s:select>
							</div>
						</td>
						<td>
							<div class="nochage">
								<a class="listEdit" title="审核" id="btntg"
									onclick="updateDomain('store_applyinput.action?stId=${stId}');"></a>
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
