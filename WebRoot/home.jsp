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

<title>乐享搭配生活馆</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/style-homecontent.css">
<link rel="stylesheet" type="text/css" href="css/style-clear.css">
<link rel="stylesheet" type="text/css" href="css/zzsc.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/js-homecontent.js"></script>
</head>
<body>
	<jsp:include page="page/reuse/detailheader.jsp"></jsp:include>
	<!-- 导航栏 -->
	<div class="homeNav">
		<div class="homeNavMain">
			<ul class="homeNavUl">
				<li class="homeNavFirst">主题市场 <em class="bias"></em>
					<ul class="fistMenu">
						<li class="firstMenuItem">服装
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">女士</a>、<a
									href="###">绅士</a>、 <a href="###">小孩</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">服装</a> <a href="###"
											style="position: relative;left: 165px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="###">春夏新品</a>
									</dd>
									<dd>
										<a href="###">原创设计款</a>
									</dd>
									<dd>
										<a href="###">外套</a>
									</dd>
									<dd>
										<a href="###">夹克</a>
									</dd>
									<dd>
										<a href="###">衬衫</a>
									</dd>
									<dd>
										<a href="###">T恤</a>
									</dd>
									<dd>
										<a href="###">运动外套</a>
									</dd>
									<dd>
										<a href="###">棒球服</a>
									</dd>
									<dd>
										<a href="###">卫衣</a>
									</dd>
									<dd>
										<a href="###">牛仔外套</a>
									</dd>
									<dd>
										<a href="###">西装</a>
									</dd>
									<dd>
										<a href="###">风衣</a>
									</dd>
									<dd>
										<a href="###">皮衣</a>
									</dd>
									<dd>
										<a href="###">针织衫</a>
									</dd>
									<dd>
										<a href="###">POLO衫</a>
									</dd>
									<dd>
										<a href="###">套装</a>
									</dd>
									<dd>
										<a href="###">开衫</a>
									</dd>
									<dd>
										<a href="###">休闲裤</a>
									</dd>
									<dd>
										<a href="###">牛仔裤</a>
									</dd>
									<dd>
										<a href="###">运动裤</a>
									</dd>
									<dd>
										<a href="###">九分裤</a>
									</dd>
									<dd>
										<a href="###">哈伦裤</a>
									</dd>
									<dd>
										<a href="###">马甲</a>
									</dd>
									<dd>
										<a href="###">棉衣</a>
									</dd>
									<dd>
										<a href="###">中老年</a>
									</dd>
									<dd>
										<a href="###">情侣装</a>
									</dd>
								</dl>
							</div>
						</li>
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">外套</a>、
								<a href="###">裙装</a>、 <a href="###">外套</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">外套</a> <a href="###"
											style="position: relative;left: 165px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">夹克</a>
									</dd>
									<dd>
										<a href="#">西装</a>
									</dd>
									<dd>
										<a href="#">春新款</a>
									</dd>
									<dd>
										<a href="#">风衣</a>
									</dd>
									<dd>
										<a href="#">棒球服</a>
									</dd>
									<dd>
										<a href="#">皮衣</a>
									</dd>
									<dd>
										<a href="#">牛仔外套</a>
									</dd>
									<dd>
										<a href="#">呢大衣</a>
									</dd>
								</dl>
							</div></li>
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">内搭</a>、
								<a href="###">内搭</a>、 <a href="###">内搭</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">内搭</a> <a href="###"
											style="position: relative;left: 165px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">卫衣</a>
									</dd>
									<dd>
										<a href="#">T恤</a>
									</dd>
									<dd>
										<a href="#">衬衫</a>
									</dd>
									<dd>
										<a href="#">polo衫</a>
									</dd>
									<dd>
										<a href="#">针织衫</a>
									</dd>
									<dd>
										<a href="#">短袖T恤</a>
									</dd>
									<dd>
										<a href="#">牛仔外套</a>
									</dd>
									<dd>
										<a href="#">呢大衣</a>
									</dd>
								</dl>
							</div></li>
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">毛衣</a>、
								<a href="###">针织衫</a>、 <a href="###">毛衣</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">针织衫/毛衣</a> <a href="###"
											style="position: relative;left: 125px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">针织衫</a>
									</dd>
									<dd>
										<a href="#">开衫</a>
									</dd>
									<dd>
										<a href="#">毛衣</a>
									</dd>
									<dd>
										<a href="#">套头</a>
									</dd>
									<dd>
										<a href="#">羊毛衫</a>
									</dd>
									<dd>
										<a href="#">羊绒衫</a>
									</dd>
									<dd>
										<a href="#">情侣</a>
									</dd>
									<dd>

										<a href="#">高领</a>
									</dd>
								</dl>
							</div></li>
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">西裤</a>、
								<a href="###">休闲裤</a>、 <a href="###">牛仔裤</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">休闲裤/西裤</a> <a href="###"
											style="position: relative;left: 125px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">休闲裤</a>
									</dd>
									<dd>
										<a href="#">运动裤</a>
									</dd>
									<dd>
										<a href="#">阔腿裤</a>
									</dd>
									<dd>
										<a href="#">西裤</a>
									</dd>
									<dd>
										<a href="#">小脚</a>
									</dd>
									<dd>
										<a href="#">哈伦</a>
									</dd>
									<dd>
										<a href="#">九分</a>
									</dd>
									<dd>
										<a href="#">七分</a>
									</dd>
									<dd>
										<a href="#">工装</a>
									</dd>
									<dd>
										<a href="#">秋款</a>
									</dd>
									<dd>
										<a href="#">薄款</a>
									</dd>
									<dd>
										<a href="#">直筒</a>
									</dd>
									<dd>
										<a href="#">破洞</a>
									</dd>
									<dd>
										<a href="#">修身</a>
									</dd>
									<dd>
										<a href="#">黑色</a>
									</dd>
									<dd>
										<a href="#">潮牌</a>
									</dd>
									<dd>
										<a href="#">弹力</a>
									</dd>
								</dl>
							</div></li> 营养品
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">生鲜</a>、
								<a href="###">水果</a>、 <a href="###">肉食</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">水果</a> <a href="###"
											style="position: relative;left: 165px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">苹果</a>
									</dd>
									<dd>
										<a href="#">香蕉</a>
									</dd>
									<dd>
										<a href="#">草莓</a>
									</dd>
									<dd>
										<a href="#">黑莓</a>
									</dd>
									<dd>
										<a href="#">青提</a>
									</dd>
									<dd>
										<a href="#">葡萄</a>
									</dd>
									<dd>
										<a href="#">蜜橘</a>
									</dd>
									<dd>
										<a href="#">金桔</a>
									</dd>
									<dd>
										<a href="#">脐橙</a>
									</dd>
									<dd>
										<a href="#">柚子</a>
									</dd>
									<dd>
										<a href="#">柠檬</a>
									</dd>
									<dd>
										<a href="#">水蜜桃</a>
									</dd>
									<dd>
										<a href="#">李子</a>
									</dd>
									<dd>
										<a href="#">苹果</a>
									</dd>
									<dd>
										<a href="#">梨</a>
									</dd>
									<dd>
										<a href="#">西瓜</a>
									</dd>
									<dd>
										<a href="#">海参</a>
									</dd>
									<dd>
										<a href="#">北极贝</a>
									</dd>
									<dd>
										<a href="#">车厘子</a>
									</dd>
									<dd>
										<a href="#">菠萝蜜</a>
									</dd>
									<dd>
										<a href="#">土猪肉</a>
									</dd>
									<dd>
										<a href="#">青蟹</a>
									</dd>
									<dd>
										<a href="#">牛肉</a>
									</dd>
									<dd>
										<a href="#">羊肉</a>
									</dd>
									<dd>
										<a href="#">虾仁</a>
									</dd>
								</dl>
							</div></li>
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">美食</a>、
								<a href="###">杂粮</a>、 <a href="###">茶品</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">美食杂粮</a><a href="###"
											style="position: relative;left: 135px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">麦片</a>
									</dd>
									<dd>
										<a href="#">牛奶</a>
									</dd>
									<dd>
										<a href="#">木耳</a>
									</dd>
									<dd>
										<a href="#">枸杞</a>
									</dd>
									<dd>
										<a href="#">人参</a>
									</dd>
									<dd>
										<a href="#">燕窝</a>
									</dd>
									<dd>
										<a href="#">蜂蜜</a>
									</dd>
									<dd>
										<a href="#">天麻</a>
									</dd>
									<dd>
										<a href="#">花粉</a>
									</dd>
									<dd>
										<a href="#">红茶</a>
									</dd>
									<dd>
										<a href="#">黑茶</a>
									</dd>
									<dd>
										<a href="#">花草茶</a>
									</dd>
									<dd>
										<a href="#">铁观音</a>
									</dd>
									<dd>
										<a href="#">龙井</a>
									</dd>
									<dd>
										<a href="#">普洱</a>
									</dd>
								</dl>
							</div></li>
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">营养型</a>、
								<a href="###">强化型</a>、 <a href="###">功能型</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">保健品</a><a href="###"
											style="position: relative;left: 155px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">蜂王浆</a>
									</dd>
									<dd>
										<a href="#">花粉</a>
									</dd>
									<dd>
										<a href="#">钙片</a>
									</dd>
									<dd>
										<a href="#">多维矿物质</a>
									</dd>
									<dd>
										<a href="#">B族维生素</a>
									</dd>
									<dd>
										<a href="#">葡萄籽</a>
									</dd>
									<dd>
										<a href="#">辅酶Q10</a>
									</dd>
									<dd>
										<a href="#">消化酶</a>
									</dd>
									<dd>
										<a href="#">软骨素</a>
									</dd>
									<dd>
										<a href="#">维生素C</a>
									</dd>
									<dd>
										<a href="#">大豆异黄酮</a>
									</dd>
									<dd>
										<a href="#">益生菌</a>
									</dd>
									<dd>
										<a href="#">鱼油</a>
									</dd>
									<dd>
										<a href="#">氨基葡萄糖</a>
									</dd>
									<dd>
										<a href="#">生物素</a>
									</dd>
									<dd>
										<a href="#">玛咖</a>
									</dd>
									<dd>
										<a href="#">螺旋藻</a>
									</dd>
									<dd>
										<a href="#">胶原蛋白</a>
									</dd>
									<dd>
										<a href="#">DHA</a>
									</dd>
									<dd>
										<a href="#">蔓越莓</a>
									</dd>
									<dd>
										<a href="#">左旋肉碱</a>
									</dd>
									<dd>
										<a href="#">褪黑素</a>
									</dd>
								</dl>
							</div></li>
						<li class="firstMenuItem">
							<h3>
								<i class="iconFirstMenu iconfont">&#xe743;</i> <a href="###">时令蔬菜</a>、
								<a href="###">有机蔬菜</a>
							</h3>
							<div class="secondMenu">
								<dl class="secondMenuItem">
									<dt>
										<a href="###">蔬菜</a><a href="###"
											style="position: relative;left: 165px;">更多></a>
										<hr>
									</dt>
									<dd>
										<a href="#">辣椒</a>
									</dd>
									<dd>
										<a href="#">丝瓜</a>
									</dd>
									<dd>
										<a href="#">苦瓜</a>
									</dd>
									<dd>
										<a href="#">冬瓜</a>
									</dd>
									<dd>
										<a href="#">菜豆</a>
									</dd>
									<dd>
										<a href="#">芦笋</a>
									</dd>
									<dd>
										<a href="#">苋菜</a>
									</dd>
									<dd>
										<a href="#">空心菜</a>
									</dd>
									<dd>
										<a href="#">龙须菜</a>
									</dd>
									<dd>
										<a href="#">竹笋</a>
									</dd>
									<dd>
										<a href="#">西红柿</a>
									</dd>
									<dd>
										<a href="#">卷心菜</a>
									</dd>
									<dd>
										<a href="#">菠菜</a>
									</dd>
									<dd>
										<a href="#">芹菜</a>
									</dd>
									<dd>
										<a href="#">葱</a>
									</dd>
									<dd>
										<a href="#">韭菜</a>
									</dd>
									<dd>
										<a href="#">结球甘蓝</a>
									</dd>
									<dd>
										<a href="#">大白菜</a>
									</dd>
									<dd>
										<a href="#">包心芥菜</a>
									</dd>
									<dd>
										<a href="#">茄子</a>
									</dd>
									<dd>
										<a href="#">蘑菇</a>
									</dd>
									<dd>
										<a href="#">香菇</a>
									</dd>
								</dl>
							</div></li>
					</ul></li>
				<li class="homeNavLi"><a href="###">首页</a>
				</li>
				<li class="homeNavLi"><a href="page/dapei/fuzhuangaida.jsp">服装爱搭</a>
				</li>
				<li class="homeNavLi"><a href="page/dapei/yingyangaida.jsp">营养爱搭</a>
				</li>
				<li class="homeNavLi"><a
					href="page/dapei/fuzhuangaidapaihang.jsp">服装爱搭排行</a>
				</li>
				<li class="homeNavLi"><a
					href="page/dapei/yingyangaidapaihang.jsp">营养爱搭排行</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="mainLayout">
		<!-- 轮转图片 -->
		<div class="homeRound">
			<div class="hot_wrap">
				<div id="target" class="tbui_slideshow_container">
					<ul class="tbui_slideshow_list">
						<li><a href="###" target="_blank"> <img
								src="images/lunzhuan/3.jpg" width="750" height="398" /> </a>
						</li>
						<li><a href="###" target="_blank"> <img
								src="images/lunzhuan/5.jpg" width="750" height="398" /> </a>
						</li>
						<li><a href="###" target="_blank"> <img
								src="images/lunzhuan/ChEi1VisBTGAOJ_0AAIhjQyE_Xo96100.jpg"
								width="750" height="398" /> </a>
						</li>
						<li><a href="###" target="_blank"> <img
								src="images/lunzhuan/TB13V_cQFXXXXcnaXXXSutbFXXX.jpg"
								width="750" height="398" /> </a>
						</li>
						<li><a href="###" target="_blank"> <img
								src="images/lunzhuan/ChEwoliqzR6AGAFJAAF2nDJ5-cY70500.jpg"
								width="750" height="398" /> </a>
						</li>
					</ul>
				</div>
				<div class="slide_bg"></div>
				<!--导航条的结构-->
				<ul id="controller">
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
				<a href="#" id="prev">上一页</a> <a href="#" id="next">下一页</a>
			</div>
			<div class="left-wrap"></div>
			<div class="homeTip">
				<div id="newsShow">
					<dl>
						<dt>快讯</dt>
						<dd>
							<a target="_blank" href="###"> <b>【公告】</b> <span>爱搭生活馆开业活动</span>
							</a>
						</dd>
						<dd>
							<a target="_blank" href="###"> <b>【优选】</b> <span>女装开业促销
									满199减50</span> </a>
						</dd>
						<dd>
							<a target="_blank" href="###"> <b>【优选】</b> <span>保健品隆重开业
									满299减100</span> </a>
						</dd>
						<dd>
							<a target="_blank" href="###"> <b>【优选】</b> <span>搭配商品
									满499减200</span> </a>
						</dd>
						<dd>
							<a target="_blank" href="###"> <b></b> <span>
									............................................................
									............................................................</span> </a>
						</dd>
						<dd>
							<a target="_blank" href="###"> <b>【值得拥有】</b> <span>今日特卖</span>
							</a>
						</dd>
					</dl>
					<div style="text-align: center;">
						<br /> <a target="_blank" href="###"><img
							src="images/random/TB1hdOhQpXXXXcGXXXXSutbFXXX.jpg" /> </a>
					</div>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<script type="text/javascript" src="js/jquery-min-1.7.js"
			charset="utf-8"></script>
		<script type="text/javascript" src="js/all_dfd5691e.js"></script>
		<script>
			$(function() {
				new SlideShow({
					nav : "#controller",
					effect : "fade",
					target : "#target",
					activeClass : "active",
					next : "#next",
					prev : "#prev",
					auto : true
				});
			});
		</script>
		<div class="ad_home_wrap">
			<!-- 单个商品展示框 -->
			<div class="floor_title">
				<a>时尚</a> <em>·</em> <a>生活</a>
			</div>
			<div class="good_common_show">
				<s:iterator value="newProductInfos" var="pro" status="st">
					<s:if test="#st.index<5">
						<div class="good_com_box">
							<div class="box_picture">
								<img alt="${pro.PName}" height="350px;" width="300px;"
									src="${pro.PBigPic}">
							</div>
							<p></p>
							<div class="box_shadow"></div>
							<div id="shadoWord">
								<a id="chaKanXiangQing" href="proShow.action?PId=${pro.PId}">查看详情</a>
							</div>
						</div>
					</s:if>
				</s:iterator>
				<div class="clear"></div>
			</div>
			<div class="floor_title">
				<a>潮流</a> <em>·</em> <a>生活</a>
			</div>
			<div class="good_common_show">
				<s:iterator value="newProductInfos" var="pro" status="st">
					<s:if test="#st.index>4">
						<div class="good_com_box">
							<div class="box_picture">
								<img alt="${pro.PName}" height="350px;" width="300px;"
									src="${pro.PBigPic}">
							</div>
							<p></p>
							<div class="box_shadow"></div>
							<div id="shadoWord">
								<a id="chaKanXiangQing" href="proShow.action?PId=${pro.PId}">查看详情</a>
							</div>
						</div>
					</s:if>
				</s:iterator>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- 浮动推荐框 -->
	<div class="ad_good_single none">
		<div class="single_left">
			<div class="single_mainGood">
				<a> <img alt="" src=""> </a>
			</div>
			<div class="single_leftMore">
				<a> 更多组合推荐 </a>
			</div>
			<div class="shopBtn">
				<input type="button" value="加入购物车">
			</div>

		</div>
		<div class="single_hot">
			<div id="singleHotOne" class="single_hot_main">
				<div class="hotItem">
					<div class="hotItem_picture">
						<a> <img alt="" src=""> </a>
					</div>
					<div class="hotItem_word">
						<span class="hotItem_GoodName"></span> <span
							class="hotItem_StoreName"></span> <span
							class="hotItem_salesVolume"></span> <span class="hotItem_yuan">¥</span>
						<span class="hotItem_price"></span>
					</div>
					<div class="hotItem_right">
						<input type="button" value="加入购物车">
					</div>
				</div>
				<div class="hotItem">
					<div class="hotItem_picture">
						<a> <img alt="" src=""> </a>
					</div>
					<div class="hotItem_word">
						<span class="hotItem_GoodName"></span> <span
							class="hotItem_StoreName"></span> <span
							class="hotItem_salesVolume"></span> <span class="hotItem_yuan">¥</span>
						<span class="hotItem_price"></span>
					</div>
					<div class="hotItem_right">
						<input type="button" value="加入购物车">
					</div>
				</div>
				<div class="hotBuy">
					<input type="button" value="一键购买">
				</div>
			</div>
			<div id="singleHotTwo" class="single_hot_main">
				<div class="hotItem">
					<div class="hotItem_picture">
						<a> <img alt="" src=""> </a>
					</div>
					<div class="hotItem_word">
						<span class="hotItem_GoodName"></span> <span
							class="hotItem_StoreName"></span> <span
							class="hotItem_salesVolume"></span> <span class="hotItem_yuan">¥</span>
						<span class="hotItem_price"></span>
					</div>
					<div class="hotItem_right">
						<input type="button" value="单独购买">
					</div>
				</div>
				<div class="hotItem">
					<div class="hotItem_picture">
						<a> <img alt="" src=""> </a>
					</div>
					<div class="hotItem_word">
						<span class="hotItem_GoodName"></span> <span
							class="hotItem_StoreName"></span> <span
							class="hotItem_salesVolume"></span> <span class="hotItem_yuan">¥</span>
						<span class="hotItem_price"></span>
					</div>
					<div class="hotItem_right">
						<input type="button" value="加入购物车">
					</div>
				</div>
				<div class="hotBuy">
					<input type="button" value="一键购买">
				</div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="page/reuse/detailfooter.jsp"></jsp:include>
</body>
</html>
