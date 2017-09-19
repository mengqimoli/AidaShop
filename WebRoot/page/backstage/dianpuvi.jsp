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
	<span class="frameH3">店铺信息查看、修改</span>
	<div>
		<s:form action="editStoreAction" method="POST">
			<s:hidden name="store.stId" />
			<table id="upBrtable">
				<tr>
					<td width="20%" align="right"><label>店铺名称:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield readonly="true"
							style="background:transparent;width:100%; " name="store.stName"
							label="店铺名称" />
					</td>
				</tr>
				<tr>
					<td width="20%" align="right"><label>店铺标签:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield readonly="true"
							style="background:transparent;width:100%; " name="store.stTag"
							label="店铺标签" />
					</td>
				</tr>
				<tr>
					<td width="20%" align="right"><label>好评率:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield readonly="true"
							style="background:transparent;width:100%; "
							name="store.stFavorablerate" label="好评率" />
					</td>
				</tr>
				<tr>
					<td width="20%" align="right"><label>服务态度:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield readonly="true"
							style="background:transparent;width:100%; "
							name="store.stServiceManner" label="服务态度" />
					</td>
				</tr>
				<tr>
					<td width="20%" align="right"><label>服务质量:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield readonly="true"
							style="background:transparent;width:100%; "
							name="store.stServiceQuality" label="服务质量" />
					</td>
				</tr>
				<tr>
					<td width="20%" align="right"><label>发货速度:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield readonly="true"
							style="background:transparent;width:100%; " name="store.stSpeed"
							label="发货速度" />
					</td>
				</tr>
				<tr>
					<td width="20%" align="right"><label>开通时间:</label>
					</td>
					<td class="upBrFont" align="left"><s:date
							name="store.stCreateTime" format="yyyy-MM-dd" nice="false" /> <s:hidden
							name="store.stCreateTime"></s:hidden></td>
				</tr>
				<tr>
					<td width="20%" align="right"><label>到期时间:</label>
					</td>
					<td class="upBrFont" align="left"><s:date
							name="store.stEndTime" format="yyyy-MM-dd" nice="false" /> <s:hidden
							name="store.stEndTime"></s:hidden></td>
				</tr>
				<tr>
					<td><label>星级:</label>
					</td>
				</tr>
				<tr>
					<td class="upBrFont_1" colspan="2"><s:radio
							name="store.stLevel"
							list="#{'0星':0,'1星':1,'2星':2,'3星':3,'4星':4,'5星':5}" label="权限"
							listKey="value" listValue="key"></s:radio>
					</td>
				</tr>
				<tr>
					<td><label>状态:</label>
					</td>
				</tr>
				<tr>
					<td class="upBrFont_1" colspan="2"><s:radio
							name="store.stState" list="#{'正常':0,'禁用':1,'推广中':2,'问题店铺':3}"
							label="状态VIP" listKey="value" listValue="key"></s:radio>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2"><s:submit cssClass="upBrBtn"
							value="提交" /> <s:reset cssClass="upBrBtn" value="重置" /></td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
