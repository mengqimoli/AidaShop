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
<script type="text/javascript" src="js/js-huiyuanguanli.js"></script>
<%-- <script type="text/javascript" src="js/page.js"></script> --%>
<script type="text/javascript" src="js/common.js"></script>
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
	<s:form id="domainForm" action="user">
		<table class="headTab bg-1" width="100%" border="0" align="center"
			cellpadding="0" cellspacing="0" class="right-font08">
			<tr>
				<td width="15%"><span class="newfont07">选择： <a
						href="javascript:void(0);" class="right-font08"
						onclick="selectAll();">全选</a> - <a href="javascript:void(0);"
						class="right-font08" onclick="unselectAll();">取消全选</a> </span></td>
				<td width="28%">
					<button type="button" id="btnscsxx"
						class="button button--winona button--border-thin button--round-s"
						data-text="删除所选项">
						<span>删除所选项</span>
					</button>
					</button> <a href="user_input.action"><button type="button"
							class="button button--winona button--border-thin button--round-s"
							data-text="添加">
							<span>添加</span>
						</button> </a></td>
				<td>管理员: <s:select name="baseQuery.UAdmin"
						onchange='$("#domainForm").submit();'
						list="#{-2:'---请选择---',2:'超级管理员',1:'店铺管理员',0:'普通'}" />&nbsp;&nbsp;
					VIP: <s:select name="baseQuery.UState"
						onchange='$("#domainForm").submit();'
						list="#{-2:'--请选择--',0:'正常',1:'禁用',2:'VIP1',3:'VIP2',4:'VIP3'}" />&nbsp;&nbsp;
					造型师: <s:select name="baseQuery.UStylingDesigner"
						onchange='$("#domainForm").submit();'
						list="#{-2:'-----请选择-----',0:'非认证',1:'平台认证',2:'国家认证',3:'国家认证审核中',4:'平台认证审核中'}" />
				</td>
			</tr>
		</table>

		<table id="brandListTAb" class="bordered">
			<thead>
				<tr>
					<th>选择</th>
					<th>所属ID</th>
					<th>昵称</th>
					<th>真实姓名</th>
					<th>性别</th>
					<th>造型师认证</th>
					<th>权限</th>
					<th>状态(VIP)</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pageList.rows">
					<tr class="bhover"
						<s:if test="UId==#parameters['UId'][0]">style="color: red"</s:if>>
						<td><input id="UIds" type="checkbox" name="fxk"
							value="<s:property value="UId" />" /></td>
						<td><s:property value="UId" />
						</td>
						<td id="UNickName" class="introBh"><s:property
								value="UNickName" />
						</td>
						<td id="URelaname" class="introBh"><s:property
								value="URelaname" />
						</td>
						<td id="USex" class="introBh"><s:property value="USex" />
						</td>
						<td>
							<div class="nochage">
								<s:if test="UStylingDesigner==2">国家认证</s:if>
								<s:elseif test="UStylingDesigner==1">平台认证</s:elseif>
								<s:elseif test="UStylingDesigner==3">国家认证审核中</s:elseif>
								<s:elseif test="UStylingDesigner==4">平台认证审核中</s:elseif>
								<s:else>非认证</s:else>
							</div>
						</td>
						<td>
							<div class="nochage">
								<s:if test="UAdmin==2">超级管理员</s:if>
								<s:elseif test="UAdmin==1">店铺管理员</s:elseif>
								<s:else>普通</s:else>
							</div>
						</td>
						<td>
							<div class="nochage">
								<s:if test="UState==0">正常</s:if>
								<s:elseif test="UState==1">禁用</s:elseif>
								<s:elseif test="UState==2">VIP1</s:elseif>
								<s:elseif test="UState==3">VIP2</s:elseif>
								<s:elseif test="UState==4">VIP3</s:elseif>
								<s:else>激活中</s:else>
							</div>
						</td>
						<td>
							<div class="nochage">
								<a class="listEdit" title="编辑"
									onclick="updateDomain('user_input.action?UId=${UId}');"></a> 
								<a class="cancelEdit" title="删除"
									onclick="deleteDomain('user_deletesingle.action?UId=${UId}');"></a>
							</div></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<%@include file="/common/page.jsp"%>
	</s:form>
</body>
</html>
