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
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<style type="text/css">
.btn1 {
	width: 59px;
	height: 35px;
	margin-bottom: 10px;
	cursor: pointer;
	background-color: #FF8C00
}
</style>
</head>
<body>
	<%--<s:debug />--%>
	<span class="frameH3">评论查看</span>
	<br />
	<div>
		<s:form action="comment_save">
			<s:hidden name="comId" />
			<table>
				<tr>
					<td style="width: 10%;" align="right"><label>用户ID:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%;" readonly="true"
							name="adCustomer.UName" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>商品名:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%;" readonly="true"
							name="adProductInfo.PName" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>所属店铺:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%;" readonly="true"
							name="adStore.stName" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>评论内容:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="comContent" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>发表时间:</label>
					</td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%;" readonly="true"
							name="comTime" />
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2"><s:submit cssClass="upBrBtn"
							value="提交" />
						<button class="btn1" id="cancelBtn" value="返回">返回</button></td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
