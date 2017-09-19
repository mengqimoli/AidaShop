<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/style-aida01.css">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<style type="text/css">
li {
	text-align: center;
}
</style>
</head>

<body>
	<div class="header_wrap">
		<div class="top_content">
			<div class="top_bar">
				<div class="topbar_left">
					<!-- 登录模块-start -->
					<div id="unlogin_top" class="login_wrap">
						<div class="ad_login">
							<span>亲,请</span> <a href="login.html"> 登录 </a> <i>/</i> <a
								target="_blank" href="page/register/register.jsp">&nbsp;注册 </a>
						</div>
						<div class="ad_user_center">
							<div class="login">
								<div class="f1">
									<a href=""></a>
								</div>
								<div>
									<p>
										<a href="login.html">欢迎进入我的AidaLife</a>
									</p>
								</div>
							</div>
							<div class="ad_message">
								<a href="login.html">积分</a> <a href="login.html">勋章</a>
							</div>
						</div>
						<em class="login_arrow"></em>
					</div>
					<div id="login_top" class="login_wrap">
						<div class="ad_login">
							<span>亲,</span> <a target="_blank" id="login_name"
								<%-- value="${cusNickName}" --%> href="page/home/gerenzhongxin.jsp"></a> <i>/</i>
							<a href="loginout.action">&nbsp;注销 </a> <input id="userCheck"
								type="hidden" value="">
						</div>
						<div class="ad_user_center">
							<div class="login">
								<div class="f1">
									<a href=""></a>
								</div>
								<div class="ad_growth_box">
									<p>
										<a target="_blank" href="page/home/gerenzhongxin.jsp">欢迎进入我的AidaLife</a>
									</p>
								</div>
							</div>
							<div class="ad_message">
								<a href="#">积分</a> <a href="#">勋章</a>
							</div>

						</div>
						<em class="login_arrow"></em>
					</div>
					<!-- 登录模块-end -->

					<div id="headerSelectprovince">
						<span>送货至：&nbsp;</span> <a class="currProvince"><i>河北</i> <em></em>
						</a>
						<div id="headerAllProvince">
							<dl class="hot_city">
								<dt>热门省市：&nbsp;</dt>
								<dd>
									<a href="javascript:void(0);">上海&nbsp;</a>
								</dd>
								<dd>
									<a href="javascript:void(0);">北京&nbsp;</a>
								</dd>
								<dd>
									<a href="javascript:void(0);">广东&nbsp;</a>
								</dd>
								<dd>
									<a href="javascript:void(0);">湖北&nbsp;</a>
								</dd>
								<dd>
									<a href="javascript:void(0);">四川&nbsp;</a>
								</dd>
							</dl>
							<div class="clear"></div>
							<div class="province_detail">
								<dl>
									<dt>华北：</dt>
									<dd>
										<a href="javascript:;">北京&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">天津&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">河北&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">山西&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">内蒙古&nbsp;</a>
									</dd>
								</dl>
								<br />
								<dl>
									<dt>华东：</dt>
									<dd>
										<a href="javascript:;">上海&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">浙江&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">安徽&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">江苏&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">福建&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">山东&nbsp;</a>
									</dd>
								</dl>
								<br />
								<dl>
									<dt>华南：</dt>
									<dd>
										<a href="javascript:;">广东&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">广西&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">海南&nbsp;</a>
									</dd>
								</dl>
								<br />
								<dl>
									<dt>华中：</dt>
									<dd>
										<a href="javascript:;">江西&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">河南&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">湖北&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">湖南&nbsp;</a>
									</dd>
								</dl>
								<br />
								<dl>
									<dt>西南：</dt>
									<dd>
										<a href="javascript:;">重庆&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">四川&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">贵州&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">云南&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">西藏&nbsp;</a>
									</dd>
								</dl>
								<br />
								<dl>
									<dt>西北：</dt>
									<dd>
										<a href="javascript:;">陕西&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">甘肃&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">宁夏&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">新疆&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">青海&nbsp;</a>
									</dd>
								</dl>
								<br />
								<dl>
									<dt>东北：</dt>
									<dd>
										<a href="javascript:;">辽宁&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">吉林&nbsp;</a>
									</dd>
									<dd>
										<a href="javascript:;">黑龙江&nbsp;</a>
									</dd>
								</dl>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="topbar_right">
					<ul>
						<li id="glMyAdiaShop" class="menu_tit"><a class="menu"
							href="###"> <span>我的AidaLife</span> <em></em> </a>
							<div class="menu_list">
								<ul>
									<li><a href="###" target="_blank">我的订单</a>
									</li>
									<li><a href="###" target="_blank">我的积分</a>
									</li>
									<li><a href="###" target="_blank">我的红包</a>
									</li>
									<li><a href="###" target="_blank">我的抵用券</a>
									</li>
									<li><a href="###" target="_blank">我的评论</a>
									</li>
									<li><a href="###" target="_blank">会员专享</a>
									</li>
								</ul>
							</div>
						</li>
						<li id="glShouCang" class="menu_tit"><a class="menu"
							href="###"> <span>收藏夹</span> <em></em> </a>
							<div id="glShoucangChild" class="menu_list">
								<ul>
									<li><a href="###" target="_blank">商品收藏</a>
									</li>
									<li><a href="###" target="_blank">店铺收藏</a>
									</li>
								</ul>
							</div>
						</li>
						<li id="glKeHuDuan" class="menu_tit"><a class="menu"
							href="javascript:;"> <span>掌上AidaLife</span> <em></em> </a>
							<div class="moblie_show menu_list">
								<div class="moblie_content">
									<img alt="" src="">
								</div>
								<ul class="moblie_tab">
									<li><a href="javascript:void(0);">手机购物更方便</a>
									</li>
								</ul>
							</div>
						</li>
						<li id="glKeHuFuWu" class="menu_tit"><a class="menu"
							href="###"> <span>客户服务</span> <em></em> </a>
							<div class="menu_list">
								<ul>
									<li><a href="###" target="_blank">包裹追踪</a>
									</li>
									<li><a href="###" target="_blank">常见问题</a>
									</li>
									<li><a href="###" target="_blank">在线退回货</a>
									</li>
									<li><a href="###" target="_blank">配送范围</a>
									</li>
								</ul>
							</div>
						</li>
						<li id="glWangZhanDaoHang" class="menu_tit"><a class="menu"
							href="javascript:;"> <span>网站导航</span> <em></em> </a>
							<div class="site_nav menu_list">
								<ul>
									<li><a href="###" target="_blank">主题市场</a>
									</li>
									<li><a href="###" target="_blank">精品推荐</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="site_header">
			<div id="logo_areaID" class="left">
				<a href="home.action"> <img alt="Aida商城" src="images/aidal01.png">
				</a>
			</div>
			<div class="head_search left">
				<div class="search_form">
					<div id="searchTab" class="search_tab left">
						<i></i> <a id="type0" data-type="1" style="outline: medium none;">商品</a>
						<a id="type1" data-type="2" style="outline: medium none;"
							onclick="changeTab();">店铺</a>
					</div>
					<div class="search_wrap left">
						<input type="text" autocomplete="off" placeholder="衬衫">
						<button id="searchSuggest" class="serch_btn" type="button">搜
							索</button>
					</div>
				</div>
				<p id="hotKeyWordShow" class="hot_search">
					<a target="_blank" href="###">新款连衣裙</a> <a target="_blank"
						href="###"><font color="red">潮流T恤</font> </a><a target="_blank"
						href="###">时尚女鞋</a><a target="_blank" href="###">短裤</a><a
						target="_blank" href="###">半身裙</a><a target="_blank" href="###">男士外套</a><a
						target="_blank" href="###">新款男鞋</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a target="_blank" href="###">更多></a>
				</p>
			</div>
			<div id="prismWrap" class="prism_wrap right">
				<div id="miniCart" class="mini_cart">
					<u id="cartNum" class="in_cart_num none"></u> <a> <em></em> <span>购物车</span>
					</a>
					<div id="showMiniCartDetail" class="cart_show none">
						<p>登录才能看到购物车里的商品哦~</p>
						<a target="_blank" id="miniCartLogin" href="login.html">登录</a>
					</div>
					<div id="miniCarLog">
						<div></div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<script type="text/javascript" src="js/js-aida02.js"></script>
</body>
</html>
