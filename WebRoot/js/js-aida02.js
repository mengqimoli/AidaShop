/**
 *create by Liu Shuangbo,2016/12/1
 */
var count=0;
$(function() {
	$.post("loginInfo",function(data) {
		if (data.cusId!=null) {
			$("#login_top").show();
			$("#unlogin_top").hide();
			$("#userCheck").val(data.cusId);
			$("#login_name").text(data.cusNickName);
			console.log("已登录");
			count=1;
		}else {
			count=0;
			console.log("未登录");
		}
	});
});
//头部信息栏，显示，隐藏
var loginWrap = document.getElementsByClassName("login_wrap");
var adUserCenter = document.getElementsByClassName("ad_user_center");
var loginArrow = document.getElementsByClassName("login_arrow");
var i;
for(i=0;i< loginWrap.length;i++) {
	loginWrap[i].onmouseover = function() {
		this.className += " " + "login_wrap_hover";
		adUserCenter[count].style.display = "block";
		loginArrow[count].style.display = "none";
	};
	loginWrap[i].onmouseout = function() {
		this.className = this.className.replace("login_wrap login_wrap_hover","login_wrap");
		adUserCenter[count].style.display = "none";
		loginArrow[count].style.display = "block";
	};
}

var currProvince = document.getElementsByClassName("currProvince");
var headerAllProvince = document.getElementById("headerAllProvince");
currProvince[0].onmouseover = function() {
	this.className += " " + "currProvince_hover";
	headerAllProvince.style.display = "block";
};
currProvince[0].onmouseout = function() {
	this.className =  this.className.replace("currProvince currProvince_hover","currProvince");
	headerAllProvince.style.display = "none";
};
headerAllProvince.onmouseover = function() {
	currProvince[0].className += " " + "currProvince_hover";
	headerAllProvince.style.display = "block";
};
headerAllProvince.onmouseout = function() {
	currProvince[0].className =  currProvince[0].className.replace("currProvince currProvince_hover","currProvince");
	headerAllProvince.style.display = "none";
};

var	menuTit = document.getElementsByClassName("menu_tit");
var menuList = document.getElementsByClassName("menu_list");
for(i=0;i<menuTit.length;i++) {
	menuTit[i].onmouseover = function() {
		this.className += " " + "menu_tit_hover";
		if(this.id=="glMyAdiaShop") {
			document.getElementById("glMyAdiaShop").getElementsByTagName("div")[0].style.display="block";
		}else if(this.id=="glShouCang") {
			document.getElementById("glShouCang").getElementsByTagName("div")[0].style.display="block";
		}else if(this.id=="glKeHuDuan") {
			document.getElementById("glKeHuDuan").getElementsByTagName("div")[0].style.display="block";
		}else if(this.id=="glWangZhanDaoHang") {
			document.getElementById("glWangZhanDaoHang").getElementsByTagName("div")[0].style.display="block";	
		}else if(this.id=="glKeHuFuWu") {
			document.getElementById("glKeHuFuWu").getElementsByTagName("div")[0].style.display="block";
		}
	};
	menuTit[i].onmouseout = function() {
		this.className = this.className.replace("menu_tit menu_tit_hover","menu_tit");
		if(this.id=="glMyAdiaShop") {
			document.getElementById("glMyAdiaShop").getElementsByTagName("div")[0].style.display="none";
		}else if(this.id=="glShouCang") {
			document.getElementById("glShouCang").getElementsByTagName("div")[0].style.display="none";
		}else if(this.id=="glKeHuDuan") {
			document.getElementById("glKeHuDuan").getElementsByTagName("div")[0].style.display="none";
		}else if(this.id=="glWangZhanDaoHang") {
			document.getElementById("glWangZhanDaoHang").getElementsByTagName("div")[0].style.display="none";	
		}else if(this.id=="glKeHuFuWu") {
			document.getElementById("glKeHuFuWu").getElementsByTagName("div")[0].style.display="none";
		}
	};
}
//首部搜索框
var searchTab = document.getElementById("searchTab");
var a1 = document.getElementById("type1");
var i=2;
searchTab.onmouseover = function () {
	this.className += " " + "search_tab_hover"; 
	this.style.height = "56px";
};
searchTab.onmouseout = function () {
	this.className = this.className.replace("search_tab left search_tab_hover","search_tab left");
	this.style.height = "28px";
};
function changeTab() {
	if(i==2){
		searchTab.innerHTML = "<i></i>"+
			"<a id='type0' data-type='2' style='outline: medium none;'>店铺</a>"+
			"<a id='type1' data-type='1' style='outline: medium none;' onclick='changeTab();'>商品</a>";
		i = 1;
	}else{
		searchTab.innerHTML = "<i></i>"+
			"<a id='type0' data-type='1' style='outline: medium none;'>商品</a>"+
			"<a id='type1' data-type='2' style='outline: medium none;' onclick='changeTab();'>店铺</a>";
		i = 2;
	}
}
//首部购物车
var miniCart = document.getElementById("miniCart");
var showMiniCartDetail = document.getElementById("showMiniCartDetail");
var carLog = document.getElementById("miniCarLog");
miniCart.onmouseover = function() {
	this.className += " " + "mini_cart_hover";
	if(count==0) {
		showMiniCartDetail.style.display = "block";
	}else {
		carLog.style.display = "block";
	}
};
miniCart.onmouseout = function() {
	this.className = this.className.replace("mini_cart mini_cart_hover", "mini_cart");
	if(count==0){
		showMiniCartDetail.style.display = "none";
	}else {
		carLog.style.display = "none";
	}
};
