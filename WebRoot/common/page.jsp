<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<table class="footTab" width="100%" border="0" align="center"
	cellpadding="0" cellspacing="0" class="right-font08">
	<tr>
		<td width="30%">第 <span style="color: red">${pageList.begin}</span>
			到 <span style="color: red">${pageList.end}</span> 条/总共 <span
			style="color: red">${pageList.totalCount}</span> 条记录</td>
		<td style="text-align: center;">${pageList.page}</td>
		<td width="30%" style="text-align: right;">每页 <s:select
				list="{4,5,8,10,20,50}" name="baseQuery.pageSize"
				onchange='$("#domainForm").submit();' style="width:40px;" /> 条/第 <s:textfield
				id="pageNo" name="baseQuery.currentPage"
				value="%{pageList.currentPage}" size="1" /> 页
			<button class="btn" type="submit">Go</button>
		</td>
	</tr>
</table>
