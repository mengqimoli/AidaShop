<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AidaLife</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="网上超市，网上商城，网络购物，进口食品，美容护理，母婴玩具，厨房清洁用品，家用电器，手机数码，电脑软件办公用品，家居生活，服饰内衣，营养保健，钟表珠宝，饰品箱包，汽车生活，图书音像，礼品卡，药品，医疗器械，隐形眼镜等，AidaLShop">
	<meta http-equiv="description" content="AidaLShop，在线搭配平台，在搭配中改变为更好的我">
	<link rel="shortcut icon" href="images/icon/favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/style-aida-detail.css">
	<link rel="stylesheet" type="text/css" href="css/style-clear.css">
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  </head>	
  
  <body>
  	<!-- 头部 -->
    <jsp:include page="../reuse/detailheader.jsp"></jsp:include>
    <div class="detail_header_wrap">
	    <div id="shop_header">
	  		<div id="module_103484694">
		  		<div class="shop_con">
			  		<img usemap="#shop-sign_103484694" alt="KOOL" src="images/store/ChEi1lgpT3yAU019AAAfbkO0yGk13000.jpg">
			  		<map name="shop-sign_103484694">
			  			<area target="_blank" href="###" coords="867,7,1047,102">
			  		</map>
			  	</div>	
	  		</div>
		  	<div id="module_103484695">
		  		<div id="inshopMat-nav">
		  			<ul class="inshopMat-navFir">
		  				<li class="firstnac">
		  					<a href="###" target="_blank">秋冬上新</a>
		  				</li>
		  				<li>
		  					<a href="###" target="_blank">首页</a>
		  				</li>
		  				<li>
		  					<a href="###" target="_blank">棉衣</a>
		  				</li>
		  				<li>
		  					<a href="###" target="_blank">羽绒服</a>
		  				</li>
		  				<li>
		  					<a href="###" target="_blank">针织衫</a>
		  				</li>
		  				<li>
		  					<a href="###" target="_blank">呢大衣</a>
		  				</li>
		  			</ul>
		  		</div>
		  	</div>
	  	</div>	
    </div>
  	<div class="mod_detail_crumb"></div>
  	<div class="fm_detail_one fashionStore">
  		<div class="l">
  			<div class="mod_detail_preview">
	  			<!-- 左侧主图区域 -->
	  			<div id="jsproCrumb" class="proCrumb left">
	  				<a class="cBtn prev" title="上一个"></a>
	  				<div class="hideBox">
	  					<div class="mBox">
	  						<b>
	  							<img alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/mini/CgMBmVKMJ_uAZVGFAAWPQhUaQ1w78000_58 82.jpg">
	  						</b>
	  						<b>
	  							<img alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/mini/CgQCrVI34-SAALw1AAOX9Ho4BYg02000_58 82.jpg">
	  						</b>
	  						<b>
	  							<img alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/mini/CgQCsFI34_CAE1uDAALOYtmHZYE13700_58 82.jpg">
	  						</b>
	  						<b>
	  							<img alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/mini/CgQCsFI34-iAFNOwAADzqOzR1w409800_58 82.jpg">
	  						</b>
	  						<b>
	  							<img alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/mini/CgQCtlI34-aAf_ohAANwheaYxt051600_58 82.jpg">
	  						</b>
	  						<b>
	  							<img alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/mini/CgQCtlI34-yAI_d8AAKnTkGrNyE30600_58 82.jpg">
	  						</b>
	  						<b>
	  							<img alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/mini/CgQDrVI34_KAH72JAAGuwRWmqzY79800_58 82.jpg">
	  						</b>
	  					</div>
	  				</div>
	  				<a class="cBtn next" title="下一个"></a>
	  			</div>
	  			<div class="proImg left">
	  				<img id="J_proImg" alt="KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021" src="images/shopDetail/large/CgMBmVKMJ_uAZVGFAAWPQhUaQ1w78000_332 464.jpg" >
	  			</div>
	  			<div class="clear"></div>
	  		</div>
	  		<div class="product_rel">
	  			<div class="prod_1">
	  				<p id="pro_code" class="product_id">
	  					<span>商品编号</span>
	  					0133122722
	  				</p>
	  			</div>
	  			<p class="collect">
	  				<a class="collect" href="javascript:;">
		  				<i class="iconDetail"></i>
		  				<span>收藏</span>
		  				<span id="detailFavnums">0</span>
	  				</a>
	  			</p>
	  		</div>
  		</div>
  		<div class="main_content ">
  			<div id="name">
  				<h1>KOOL 男装 时尚修身纯色牛仔裤 水洗 135207021蓝色33</h1>
  				<div id="p-ad">【赠】：手提袋！【惠】：关注+分享可抵价！晒图领返现！</div>
  			</div>
  			<div id="summary">
  				<div id="summary-price" class="clearfix">
  					<div class="dt">价格</div>
  					<div class="dd">
  						<strong>
  							<span id="ad-price">
  								<em>¥</em>
  								359
  							</span>
  						</strong>
  					</div>
  				</div>
  				<div id="summary-top">
	  				<div id="ad-summary-top">
		  				<div class="dt">优惠</div>
		  				<div class="dd ad-prom-wrap">
		  					<div class="p-promotions">
		  						<ins id="prom-gift">
		  							<div class="ad-prom-gift">
		  								<span class="prom-gift-label">
		  									<em>赠品</em>
		  								</span>
		  								<div class="prom-gift-list">
		  									<div class="prom-gift-item">
		  										<a target="_blank" href="###" >
		  											<img class="gift-img" src="images/shopDetail/gift/5833d2feN92529561.jpg">
		  										</a>
		  										<em class="gift-number">x 1</em>
		  									</div>
		  									<div class="prom-gift-item">
		  										<a target="_blank" href="###" >
		  											<img class="gift-img" src="images/shopDetail/gift/5833d2feN92529561.jpg">
		  										</a>
		  										<em class="gift-number">x 1</em>
		  									</div>
		  									<div class="ad-gift-limit">（条件：购买1件及以上，赠完即止）</div>
		  								</div>
		  							</div>
		  							<div class="clear"></div>
		  						</ins>
								<ins id="prom">
									<div class="ad-prom">
										<div class="prom-item">
											<em class="hl_red_bg">限购</em>
											<em class="hl_red">购买不超过5件时享受优惠，超出数量以结算价为准</em>
										</div>
										<div class="prom-item">
											<em class="hl_red_bg">限制</em>
											<em class="hl_red">此价格不与套装优惠同时享受</em>
										</div>
									</div>
								</ins>
								<ins id="prom-phone"></ins>
								<ins id="prom-phone-jjg"></ins>
								<ins id="prom-tips"></ins>
								<ins id="prom-quan"></ins>
		  					</div>
		  				</div>
		  			</div>
  				</div>
	  			<div class="line clear"></div>
	  			<div id="summary-stock">
	  				<div class="dt">配送</div>
	  				<div class="dd">
	  					<div class="stock-form">
	  						香港
	  						<span>至</span>
	  					</div>
	  					<div id="store-selector" class="stock-selector">
	  						<div class="text">
	  							<div title="北京朝阳区管庄">北京朝阳区管庄</div>
	  							<b></b>
	  						</div>
	  						<div class="content"></div>
	  						<div class="close" onclick="$('#store-selector').removeClass=('hover')"></div>
	  						<div class="f1">
	  							<span id="stock-state">有货</span>
	  							<span class="d-tip">
	  								配送时间
	  								<a href="javascript:void(0);" data-tips="3个工作日内保税区清关发货或海外直发，5-20个工作日到货"></a>	
	  							</span>
	  						</div>
	  					</div>
	  				</div>
	  			</div>
	  			<div class="clear"></div>
	  			<div id="summary-dcash clearfix">
	  				<div class="dt">运费</div>
	  				<div class="dd">店铺单笔订单不满99元，收运费8元</div>
	  			</div>
	  			<div class="clear"></div>
  			</div>
  			<div class="line"></div>
  			<div id="choose" class="p-choose-wrap">
  				<div id="choose-color" class="choose-color">
  					<div class="dt">颜色</div>
  					<div class="dd">
  						<div class="item selected">
  							<b class="bg-icons"></b>
  							<a href="#none" title=" 蓝色磨白款">
  								<img alt="蓝色磨白款" src="images/shopDetail/minichoose/CgQCs1I4FwSAKbz2AADwU1wUPBQ84300_40x40.jpg">
  								<i>蓝色磨白款</i>
  							</a>
  						</div>
  						<div class="item">
  							<b class="bg-icons"></b>
  							<a href="#none" title=" 蓝色">
  								<img alt="蓝色" src="images/shopDetail/minichoose/CgQCs1I4FwSAKbz2AADwU1wUPBQ84300_40x40.jpg">
  								<i>蓝色</i>
  							</a>
  						</div>
  					</div>
  				</div>
  				<div class="clear"></div>
  				<div class="choose-size">
  					<div class="dt">尺码</div>
  					<div class="dd">
  						<ul class="tagsInBox">
  							<li class="tagsli selected">
  								30
  								<sub class="on">对勾</sub>
  							</li>
  							<li class="tagsli">
  								31
  								<sub class="on">对勾</sub>
  							</li>
  							<li class="tagsli">
  								32
  								<sub class="on">对勾</sub>
  							</li>
  							<li class="tagsli">
  								33
  								<sub class="on">对勾</sub>
  							</li>
  							<li class="tagsli">
  								34
  								<sub class="on">对勾</sub>
  							</li>
  							<li class="tagsli">
  								35
  								<sub class="on">对勾</sub>
  							</li>
  							<li class="tagsli">
  								36
  								<sub class="on">对勾</sub>
  							</li>
  						</ul>
  					</div>
  				</div>
  				<div class="clear"></div>
  				<div class="choose-count" class="clearfix">
  					<div class="dt">数量</div>
  					<div class="dd">
  						<div class="wrap-input">
  							<a class="btn_reduce" href="javascript:;">-</a>
  							<a class="btn_add" href="javascript:;">+</a>
  							<input id="buy-num" class="text" value="1" type="text">
  						</div>
  					</div>
  				</div>
  				<div class="clear"></div>
  				<div id="choose-btn-append" class="btn-cart">
  					<a class="p-btn" href="javascript:;">加入购物车</a>
  				</div>
  			</div>
  		</div>
  		<div id="r_mod" class="r">
  			<div class="show-btn">
  				<a href="javascript:void(0);">查看商品基因</a>
  			</div>
  			<div class="possible-match"></div>
  		</div>
  		<div class="clear"></div>
  	</div>
  	<div class="fm_detail_two laymt">
  		<div class="detail_two_l">
  			<div class="mod_box">
  				<div class="box_hd box_shop_name">
	  				<p class="shop_name">
	  					<strong title="Kool时尚男装旗舰店">
	  						<a href="###" target="_blank">Kool时尚男装旗舰店</a>
	  					</strong>
	  				</p>
	  			</div>
	  			<div class="box_hd">
	  				<div id="storeFavouriteCountDiv" class="dsr_online">
	  					<span class="dsr_online_txt">收藏店铺：</span>
	  					<div class="dsr_online_box">
	  						<span id="storeFavouriteCount">0人</span>
	  					</div>
	  				</div>
	  				<div class="clear"></div>
	  				<div class="dsr_online dsr_online_bottom">
	  					<span id="dsr_online_txt">联系卖家：</span>
	  					<div id="shopDsrOnlineService">
	  						<span id="onlineChatSpan">
	  							<a href="###" title="联系客服"></a>
	  						</span>
	  					</div>
	  				</div>
	  			</div>
	  			<p class="inshop_evaluate">
	  				店铺动态评分
	  				<span>同行业相比</span>
	  			</p>
	  			<ul class="inshopInf_sd">
	  				<li class="inshopDes">
	  					<label>描述相符：</label>
	  					<a href="###">0.00</a>
	  					<span class="inshop_leveleLower inshop_leveles">
	  						<b class="inshop_levele">
	  							<i class="iconfont">&#xe60d;</i>
	  						</b>
	  						<a target="-blank" href="###">
	  							<em class="inshop_percentage">0.00%</em>
	  						</a>
	  					</span>
	  				</li>
	  				<li class="inshopSer">
	  					<label>服务态度：</label>
	  					<a href="###">0.00</a>
	  					<span class="inshop_leveleLower inshop_leveles">
	  						<b class="inshop_levele">
	  							<i class="iconfont">&#xe60d;</i>
	  						</b>
	  						<a target="-blank" href="###">
	  							<em class="inshop_percentage">0.00%</em>
	  						</a>
	  					</span>
	  				</li>
	  				<li class="inshopShip">
	  					<label>发货速度：</label>
	  					<a href="###">0.00</a>
	  					<span class="inshop_leveleLower inshop_leveles">
	  						<b class="inshop_levele">
	  							<i class="iconfont">&#xe60e;</i>
	  						</b>
	  						<a target="-blank" href="###">
	  							<em class="inshop_percentage">0.00%</em>
	  						</a>
	  					</span>
	  				</li>
	  			</ul>
	  			<div class="inshow_btn">
	  				<a class="in_shop" href="###">进入店铺</a>
	  				<a class="keep_shop" href="javascript">收藏店铺</a>
	  			</div>
  			</div>
  			<div class="inshopSkuLeft">
  				<div id="layout_column_49414042" class="layout_column sub">
  					<div class="modules">
  						<div id="module_103903376">
  							<div class="shop_moudle">
	  							<div class="shop-title">
	  								<h2>搜索店内商品</h2>
	  							</div>
	  							<div class="shop_con_r">
	  								<form action="###">
	  									<ul class="search-list">
	  										<li class="keyword">
	  											<label for="keyword">关键字：</label>
	  											<input class="search-txt shop-border" name="keyword" placeholder="请输入关键字" type="text">
	  										</li>
	  										<li class="price">
	  											<label for="price">价格：</label>
	  											<input class="price-txt shop-border" name="priceMin" placeholder="¥" type="text">
	  											<span class="connect-line">-</span>
	  											<input class="price-txt shop-border"name="priceMax" placeholder="¥" type="text">
	  										</li>
	  										<li class="hot-key">
	  											<button id="hotkeysub" type="submit">搜索</button>
	  										</li>
	  									</ul>
	  								</form>
	  							</div>
  							</div>
  						</div>
  						<div id="module_103903377"></div>
  						<div id="module_103903378"></div>
  					</div>
  				</div>
  			</div>
  			<div class="clear"></div>
  		</div>
  		<div class="detail_two_r">
  			<div class="detail_two_title">
  				<ul class="title_wrap">
  					<li id="title1" class="current">商品介绍</li>
  					<li id="title2" class="">规格与包装</li>
  					<li id="title3" class="">售后保障</li>
  					<li id="title4" class="">商品评价</li>
  				</ul>
  				<div class="clear"></div>
  			</div>
  			<div class="good_introduce">
	  			<div class="specificatoin">
	  				<dl class="spec_form">
	  					<dt>规格参数</dt>
	  					<dd>品牌：KOOL</dd>
	  					<dd>风格：潮流/休闲</dd>
	  					<dd>适用对象：青年</dd>
	  					<dd>腰型：中腰</dd>
	  					<dd>牛仔面料：棉</dd>
	  					<dd>裤腿口：直脚</dd>
	  					<dd>工艺处理：原色/水洗</dd>
	  					<dd>季节：春/秋</dd>
	  					<dd>弹力指数：无弹</dd>
	  					<dd>厚薄：常规</dd>
	  					<dd>裤长：长裤</dd>
	  					<dd>版型：直筒型</dd>
	  				</dl>
	  				<div class="clear"></div>
	  			</div>
	  			<div class="picture_show">
	  				<table id="picture_tab" cellpadding="0" cellspacing="0" border="0">
	  					<tbody>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_01.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_02.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_03.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_04.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_05.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_06.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_07.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_08.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_09.jpg">
	  							</td>
	  						</tr>
	  						<tr>
	  							<td>
	  								<img alt="" src="images/detail_picture/13520702101_10.jpg">
	  							</td>
	  						</tr>
	  					</tbody>
	  				</table>
	  			</div>
  			</div>
  			<div class="speci_package">
  				<h4>规格参数</h4>
  				<p>基本信息</p>
  				<dl class="speci_tab">
  					<dt>适用对象</dt>
  					<dd>青年</dd>
  					<dt>风格</dt>
  					<dd>潮流/休闲</dd>
  					<dt>腰型</dt>
  					<dd>中腰</dd>
  					<dt>工艺处理</dt>
  					<dd>原色/水洗</dd>
  					<dt>厚薄</dt>
  					<dd>常规</dd>
  					<dt>牛仔面料</dt>
  					<dd>棉</dd>
  					<dt>季节</dt>
  					<dd>春/秋</dd>
  					<dt>裤长</dt>
  					<dd>长裤</dd>
  					<dt>裤脚口</dt>
  					<dd>直脚</dd>
  					<dt>弹力指数</dt>
  					<dd>无弹</dd>
  					<dt class="last_tab">版型</dt>
  					<dd class="last_tab">直筒型</dd>
  				</dl>
  				<div class="clear"></div>
  				<div class="package_mes">
  					<h4>包装清单</h4>
  					<p>由于厂商产品批次不同，具体包装清单可能各有不同，请以实物为准 ！ </p>
  				</div>
  			</div>
  		</div>
  		<script type="text/javascript" src="js/detail.js"></script>
  	</div>
  	<!-- 底部 -->
  	<jsp:include page="../reuse/detailfooter.jsp"></jsp:include>
  </body>
</html>
