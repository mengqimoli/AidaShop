<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>店铺入驻_AidaLife</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="shortcut icon" href="images/icon/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<link rel="stylesheet" type="text/css" href="css/sjrz.css">
<link rel="stylesheet" type="text/css" href="css/input/input.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/sjrz.js"></script>
<script type="text/javascript" src="calendar/js/laydate.js"></script>

</head>

<body>
	<jsp:include page="/page/reuse/header.jsp"></jsp:include>

	<div id="cs_wrap">
		<h1>免费开店</h1>
		<div>
			<span>申请店铺完全免费; 一个身份只能开一家店; 开店后店铺无法注销; 申请到正式开通预计需1~3个工作日。</span>
		</div>
		<div id="cs_main">
			<div id="cs_tit">
				<ul>
					<li class="active">
						<div class="cs_num">1</div>
						<div class="cs_text">
							<p>选择开店类型</p>
							<span>个人店铺、企业店铺</span>
						</div>
						<div class="tri">
							<div class="triLit"></div>
						</div></li>
					<li>
						<div class="cs_num">2</div>
						<div class="cs_text">
							<p>阅读开店须知</p>
							<span>确认自己符合个人店铺的相关规定</span>
						</div>
						<div class="tri">
							<div class="triLit"></div>
						</div></li>
					<li>
						<div class="cs_num">3</div>
						<div class="cs_text">
							<p>申请开店认证</p>
							<span>需提供认证相关资料, 等待审核通过</span>
						</div>
						<div class="tri">
							<div class="triLit"></div>
						</div></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div id="cs_contain">
				<div id="cs_1" class="tabNone actiTab">
					<div class="cs1_border">
						<div class="typeWarp">
							<div id="geren" class="typePic"></div>
							<div class="typeName">个人店铺</div>
							<p class="typeDescri">通过个人实名认证的商家创建的店铺, 就是个人店铺。</p>
							<a id="creatStore" class="butA" href="javascript:void(0);">创建个人店铺</a>
						</div>
					</div>
					<div class="cs1_border">
						<div class="typeWarp">
							<div id="qiye" class="typePic"></div>
							<div class="typeName">企业店铺</div>
							<p class="typeDescri">通过企业认证的商家创建的店铺, 就是企业店铺。</p>
							<a class="butA isNot" href="javascript:void(0);">创建企业店铺</a>
							<div>
								请使用<a href="javascript:void(0);">企业账户</a>登陆开店
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div id="cs_2" class="tabNone">
					<div class="cs2_border">
						<div class="cs2_borLit">
							<p class="question">1、我在爱搭已经开了个店了，我用别人的身份证再开一个店可以吗？</p>
							<p class="answer">答：不可以。未经爱搭平台同意，将本人爱搭账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由
								本人自行承担全部民事、行政及刑事责任。</p>
							<p class="question">2、我可以把店铺转租给其他人吗?</p>
							<p class="answer">答：不可以。未经爱搭平台同意，将本人爱搭账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由本人自行承担全部民事、行政及刑事责任。</p>
							<p class="question">3、开爱搭店要收费吗?</p>
							<p class="answer">答：爱搭开店是免费的，不收取任何服务费用。</p>
							<p class="question">4、我可以开多个爱搭店吗?</p>
							<p class="answer">答：不可以。一张身份证（一张营业执照）只能开一个爱搭店铺。如是企业店铺，开店后营业执照不得注销。</p>
							<p class="question">5、我已经开过爱搭店，现在想要注销原来的店铺重新开店，可以吗?</p>
							<p class="answer">答：不可以，爱搭暂时不提供注销店铺的服务。用户一但成功开店就无法再用身份证（营业执照）另开一家爱搭店铺。</p>
						</div>
						<div class="cs2_tip">本站在任何情况下都不会用QQ与您取得联系,
							任何使用QQ联系您的"工作人员"都是骗子。</div>
						<div class="btn">
							<a id="preBtn1" class="preBtn" href="javascript:void(0);">上一步</a>
							<a id="blueBtn1" class="blueBtn" href="javascript:void(0);">我已了解，继续开店</a>
						</div>
					</div>
				</div>
				<div id="cs_3" class="tabNone">
					<div id="cs_31">
						<label>基础信息是否完整：</label> <a id="baseCompNo"
							href="javascript:void(0);">去查看</a> <input id="baseCompRes"
							type="hidden" value="no" />
					</div>
					<div class="back"></div>
					<div class="shadow">
						<div id="viewInfo">
							<div id="viewTit">
								<h3>核对个人信息，如未补全且请补全所有信息:</h3>
								<i class="closeIcon"></i>
							</div>
							<div id="viewWarp">
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">用户名:</label><label id="infoName"></label><input
											id="iptName" type="hidden" name="UName" />
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">昵称:</label><input id="infoUNickName"
											name="UNickName" type="text" />
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">真实姓名:</label><input id="infoURelaname"
											name="URelaname" type="text" />
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">性别:</label> <input id="infoUMan"
											class="radioSex" name="USex" type="radio" title="男:"
											value="男" /><label class="labSex">男</label>&nbsp; <input
											id="infoUWoman" name="USex" class="radioSex" type="radio"
											title="女:" value="女" /><label class="labSex">女</label>
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">生日:</label><input class="laydate-icon"
											id="demo" name="UBirthday" /> <input id="birthday"
											type="hidden" value="" />
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">住址:</label><input id="infoUAddress"
											name="UAddress" type="text" />
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">身份证:</label><input id="infoUCardId"
											name="UCardId" type="text" />
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">电子邮箱:</label><input id="infoUEmail"
											name="UEmail" type="text" />
									</div>
								</div>
								<div class="infoItem">
									<div class="itemlabel">
										<label class="itemSpan">手机:</label><input id="infoUMobile"
											name="UMobile" type="text" />
									</div>
								</div>
							</div>
							<div id="viewBtn">
								<p></p>
								<input id="checkBtn" type="button" class="upBrBtn" value="确认">
							</div>
							<script type="text/javascript">
								!function() {
									laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
									laydate({
										elem : '#demo'
									});//绑定元素
								}();
							</script>
						</div>
					</div>
					<!-- 身份证件上传 -->
					<div id="cs_32">
						<s:form action="store_apply" enctype="multipart/form-data">
							<table id="formTab" width="100%" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td>店铺名称：</td>
									<td><input type="text" name="stName">
									</td>
								</tr>
								<tr>
									<td>店铺标签：</td>
									<td><input type="text" name="stTag"><span
										id="tipTr2">请以“**/**/**”的形式书写，如“上衣/衬衫/裤子”</span></td>
								</tr>
								<tr>
									<td>身份证正面上传：</td>
									<td><input type="file" name="IDCardfrontImg">
									</td>
								</tr>
								<tr>
									<td>身份证背面上传：</td>
									<td><input type="file" name="IDCardbackImg">
									</td>
								</tr>
								<tr>
									<td colspan="2"><input id="existCheck" class="upBrBtn"
										type="submit" value="提交">
									</td>
								</tr>
							</table>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/page/reuse/footer.jsp"></jsp:include>
</body>
</html>
