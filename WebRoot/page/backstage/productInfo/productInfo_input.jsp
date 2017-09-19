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
	<span class="frameH3">商品信息查看&修改</span>
	<br />
	<div>
		<s:form action="productInfo_save" method="post"
			enctype="multipart/form-data">
			<s:hidden name="PId" />
			<s:hidden name="baseQuery.currentPage" />
			<s:hidden name="baseQuery.pageSize" />
			<table>
				<tr>
					<td align="right">商品图片:</td>
					<td class="upBrFont" align="left"><s:file name="proImg"
							accept="image/*" />
					</td>
				</tr>
				<tr>
					<td style="width: 10%;" align="right"><label>商品名:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="PName"
							label="商品名" /></td>
				</tr>
				<tr>
					<td align="right" valign="top"><label>商品描述:</label></td>
					<td class="upBrFont" align="left"><s:textarea
							name="PDescription" rows="2" cols="90" /></td>
				</tr>
				<s:if test="user.UAdmin==2">
					<tr>
						<td align="right"><label>品牌:</label></td>
						<td class="upBrFont" align="left"><s:select list="#allBrands"
								name="brandAD.brId" id="brandAD" listValue="brName"
								listKey="brId" headerKey="-1" headerValue=" ------请选择------" />
						</td>
					</tr>
				</s:if>
				<s:if test="user.UAdmin==1">
					<tr>
						<td align="right"><label>品牌:</label></td>
						<td class="upBrFont" align="left"><s:select list="allStoreBrands"
								name="brandAD.brId" id="brandAD" listValue="brName"
								listKey="brId" headerKey="-1" headerValue=" ------请选择------" />
						</td>
					</tr>
				</s:if>
				<tr>
					<td align="right"><label>类别:</label></td>
					<td class="upBrFont" align="left"><s:select
							list="#allProductCates" name="adProductcategory.cgId"
							id="adProductcategory" listValue="cgName" listKey="cgId"
							headerKey="-1" headerValue=" ------请选择------" /></td>
				</tr>
				<s:if test="user.UAdmin==2">
					<tr>
						<td align="right"><label>店铺:</label></td>
						<td class="upBrFont" align="left"><s:select list="#allStores"
								name="adStore.stId" id="adStore" listValue="stName"
								listKey="stId" headerKey="-1" headerValue=" ------请选择------" />
						</td>
					</tr>
				</s:if>
				<tr>
					<td align="right"><label>采购价格:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="PBaseprice"
							label="采购价格" /></td>
				</tr>
				<tr>
					<td align="right"><label>市场价格:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="PMarketprice"
							label="市场价格" /></td>
				</tr>
				<tr>
					<td align="right"><label>营销价格:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="PSellprice"
							label="营销价格" /></td>
				</tr>
				<tr>
					<td align="right"><label>所属性别:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="PSexrequest"
							label="所属性别" /></td>
				</tr>
				<tr>
					<td align="right"><label>库存:</label></td>
					<td class="upBrFont" align="left"><s:textfield
							style="background:transparent;width:100%; " name="PCount"
							label="库存" /></td>
				</tr>
				<tr>
					<td align="right"><label>推荐等级:</label></td>
					<td class="upBrFont" align="left"><s:select list="{1,2,3,4,5}"
							name="PCommend" />
					</td>
				</tr>
				<tr>
					<td align="right"><label>上架/下架:</label></td>
					<td class="upBrFont" align="left"><s:select name="PState"
							list="#{-1:'--请选择--',1:'上架',0:'下架'}" /></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><s:submit cssClass="upBrBtn"
							value="提交" /> <s:reset cssClass="upBrBtn" value="重置" />
					</td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
</html>
