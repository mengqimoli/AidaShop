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
		<table class="headTab bg-1" width="100%" border="0" align="center"
			cellpadding="0" cellspacing="0" class="right-font08">
			<tr>
				<td width="15%"><span class="newfont07">选择： <a
						href="javascript:void(0);" class="right-font08"
						onclick="selectAll()">全选</a> - <a href="javascript:void(0);"
						class="right-font08" onclick="unselectAll()">取消全选</a> </span>
				</td>
				<td width="28%">
					<button type="button" id="storebtnscsxx"
						class="button button--winona button--border-thin button--round-s"
						data-text="删除所选项">
						<span>删除所选项</span>
					</button>
					</button> <a href="store_input.action"><button type="button"
							class="button button--winona button--border-thin button--round-s"
							data-text="添加">
							<span>添加</span>
						</button> </a></td>
				<td></td>
			</tr>
		</table>
		<table id="storeListTAb" class="bordered">
			<thead>
				<tr>
					<th>选择</th>
					<th>所属ID</th>
					<th>店铺名称</th>
					<th>店铺标签</th>
					<th>好评率</th>
					<th>服务态度</th>
					<th>服务质量</th>
					<th>发货速度</th>
					<th>星级</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pageList.rows">
					<tr class="bhover">
						<td><input id="stId" type="checkbox" name="fxk"
							value="<s:property value="stId" />" />
						</td>
						<td>${stId}</td>
						<td id="stName" class="introBh"><s:property value="stName" />
						</td>
						<td id="stTag" class="introBh"><s:property value="stTag" />
						</td>
						<td id="stFavorablerate" class="introBh"><s:property
								value="stFavorablerate" /></td>
						<td id="stServiceManner" class="introBh"><s:property
								value="stServiceManner" /></td>
						<td id="stServiceQuality" class="introBh"><s:property
								value="stServiceQuality" /></td>
						<td id="stSpeed" class="introBh"><s:property value="stSpeed" />
						</td>
						<td>
							<div class="nochage">
								<s:if test="stLevel==0">0星</s:if>
								<s:elseif test="stLevel==1">1星</s:elseif>
								<s:elseif test="stLevel==2">2星</s:elseif>
								<s:elseif test="stLevel==3">3星</s:elseif>
								<s:elseif test="stLevel==4">4星</s:elseif>
								<s:elseif test="stLevel==5">5星</s:elseif>
							</div>
							<div class="chage">
								<s:select id="stLevel" name="stLevel"
									list="#{'0星':0,'1星':1,'2星':2,'3星':3,'4星':4,'5星':5}"
									listKey="value" listValue="key" value="stLevel"></s:select>
							</div>
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
								<a class="listEdit" title="编辑"
									onclick="updateDomain('store_input.action?stId=${stId}');"></a>
								<a class="cancelEdit" title="删除" href="javascript:void(0);"
									onclick="deleteDomain('store_deletesingle.action?stId=${stId}');"></a>
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
