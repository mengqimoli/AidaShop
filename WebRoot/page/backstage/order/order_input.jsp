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
	<span class="frameH3">订单查看&修改</span>
	<br />
	<div>
		<s:form action="order_save">
			<s:hidden name="cgId" />
			<table>
				<tr>
					<td style="width: 10%;" align="right"><label>订单编号:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coId"
							label="订单编号" readonly="true" /></td>
				</tr>
				<tr>
					<td align="right"><label>订单名称:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coName"
							label="订单名称" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>送货地址:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coAddress"
							label="送货地址" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>联系电话:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coMobile"
							label="送货地址" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>实付款:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coRealPrice"
							label="实付款" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>创建时间:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coCreateTime"
							label="创建时间" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>支付方式:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coPaymentWay"
							label="支付方式" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>订单状态:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="coOrderState"
							label="订单状态" readonly="true" />
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2"><s:submit cssClass="upBrBtn"
							value="提交" />
						<button class="btn1" id="cancelBtn" value="返回">返回</button>
					</td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
