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
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

</head>

<body>
	<input id="pageCheck" type="hidden" value="sqzx" />
	<form id="myForm">
		<table id="brandListTAb" class="bordered">
			<thead>
				<tr>
					<th>申请类型</th>
					<th>申请人</th>
					<th>店铺名称</th>
					<th>店铺标签</th>
					<th>证件照正面</th>
					<th>证件照反面</th>
					<th>状态</th>
				</tr>
			</thead>
			<tbody>
				<tr class="bhover">
					<td class="introBh">店铺申请</td>
					<td><s:hidden name="user.store.stId" /> <a
						href='<s:url action="store_sqvi.action"><s:param  name="stId" value="user.store.stId" /></s:url>'>${cusNickName}</a>
					</td>
					<td class="introBh">${user.store.stName}</td>
					<td class="introBh">${user.store.stTag}</td>
					<td class="introBh"><s:hidden id="front_hide"
							name="user.store.st_IDCard_front"></s:hidden> <img alt="无图"
						width="70" src='${user.store.st_IDCard_front}'></td>
					<td class="introBh"><s:hidden id="back_hide"
							name="user.store.st_IDCard_back"></s:hidden> <img alt="无图"
						width="70" src='${user.store.st_IDCard_back}'></td>
					<td><s:if test="user.store.stState==0">未通过</s:if> <s:elseif
							test="user.store.stState==1">申请中</s:elseif> <s:elseif
							test="user.store.stState==2">已通过</s:elseif></td>
			</tbody>
		</table>
		<script type="text/javascript">
			var srcF = $("#front_hide").val();
			var srcB = $("#back_hide").val();
			var imgF = $("#front_img");
			var imgB = $("#back_img");
			console.log("srcF:" + srcF);
			var indexF = srcF.indexOf("\\upload\\");
			var indexB = srcB.indexOf("\\upload\\");
			console.log("indexF:" + indexF);
			var reg = /\\/g;//g,表示全部替换
			srcF = "." + srcF.substr(indexF).replace(reg, "/");
			srcB = "." + srcB.substr(indexF).replace(reg, "/");
			console.log("srcF now:" + srcF);
			imgF.attr("src", srcF);
			imgB.attr("src", srcB);

			$("#brandListTAb img").each(function() {
				//加载图片至内存，完成后执行
				//获得原始图片高宽
				var imgWidth = $(this).width();
				var imgHeight = $(this).height();
				//重新设置img的width和height
				$(this).width((55 * imgWidth) / imgHeight);
				$(this).height(55);
			});
		</script>
	</form>
</body>
</html>
