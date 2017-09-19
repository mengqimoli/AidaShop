$(document).ready(function() {
	GetId();
	ListShow();
	ListFix();
	SetTitle();
	ShoWarp();
	$(".bh_leftli ul li").on("click", frameShow);
});

// iframe自适应
function dyniframesize() {
	var browserVersion = window.navigator.userAgent.toUpperCase();
	var isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
	var isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
	var isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
	var isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
	var isIE = (!!window.ActiveXObject || "ActiveXObject" in window);
	var isIE9More = (!-[ 1, ] == false);
	var iframeids = $(".iframeBH");
	// 如果用户的浏览器不支持iframe是否将iframe隐藏 yes 表示隐藏，no表示不隐藏
	for ( var i = 0; i < iframeids.length; i++) {
		var bHeight = 0;
		if (isChrome == false && isSafari == false)
			bHeight = iframeids[i].contentWindow.document.body.scrollHeight;

		var dHeight = 0;
		if (isFireFox == true)
			dHeight = iframeids[i].contentWindow.document.documentElement.offsetHeight + 2;
		else if (isIE == false && isOpera == false)
			dHeight = iframeids[i].contentWindow.document.documentElement.scrollHeight;
		else if (isIE == true && isIE9More) {// ie9+
			var heightDeviation = bHeight
					- eval("window.IE9MoreRealHeight" + iframeIds[i].attr("id"));
			if (heightDeviation == 0) {
				bHeight += 3;
			} else if (heightDeviation != 3) {
				eval("window.IE9MoreRealHeight" + iframeIds[i].attr("id") + "="
						+ bHeight);
				bHeight += 3;
			}
		} else
			// ie[6-8]、OPERA
			bHeight += 3;

		var height = Math.max(bHeight, dHeight);
		iframeids[i].height = height;

	}
}
function GetId() {
	$.post("loginInfo", function(data) {
		console.log(data);
		var idname = $("#bh_idname");
		var id = $("#bh_id");
		idname.text(data.cusNickName);
		id.val(data.cusId);
	});
}
function HBLogout() {
	window.location = ("loginout");
}
function ListShow() {
	var liList = $(".bh_leftli");
	for ( var i = 0; i < liList.length; i++) {
		liList[i].onclick = function() {
			if (this.className == "bh_leftli") {
				$(".bh_leftli").removeClass("bh_ulshow");
				this.className += (this.className.length > 0 ? " " : "")
						+ "bh_ulshow";
			}
		};
	}
}
function frameShow() {
	var name = $(".bh_listShow").text();
	console.log(name);
	if (name == "管理主页") {
		$("#backHFrame").attr("src", "page/backstage/guanlizhuye.jsp");
	} else if (name == "首页导航菜单设置") {

	} else if (name == "品牌列表") {
		$("#backHFrame").attr("src", "brand.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "品牌添加") {
		$("#backHFrame").attr("src", "page/backstage/pinpaitianjia.jsp");
	} else if (name == "用户列表") {
		$("#backHFrame").attr("src", "user.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "VIP管理") {
		$("#backHFrame").attr("src", "vipCustomerAction.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "造型师列表") {
		$("#backHFrame").attr("src", "styleCustomerAction.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "认定审核") {
		$("#backHFrame").attr("src", "authCustomerAction.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "管理员列表") {
		$("#backHFrame").attr("src", "adminCustomerAction.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "店铺管理员") {
		$("#backHFrame").attr("src", "storeCustomerAction.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "超级管理员") {
		$("#backHFrame").attr("src", "supCustomerAction.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "个人中心") {
		$("#backHFrame").attr("src",
				"personalCustomerAction.action?messageCenter=" + "");
		$("#backHFrame").css("height", "550px");
	} else if (name == "店铺列表") {
		$("#backHFrame").attr("src", "store.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "店铺开通申请") {
		$("#backHFrame").attr("src", "store_applylist.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "商品列表") {
		$("#backHFrame").attr("src", "productInfo.action");
		$("#backHFrame").css("height", "550px");
	} else if (name == "商品类别管理") {
		$("#backHFrame").attr("src", "productCate.action");
		$("#backHFrame").css("height", "550px");
	}else if (name == "商品评论管理") {
		$("#backHFrame").attr("src", "comment.action");
		$("#backHFrame").css("height", "550px");
	}else if (name == "订单管理") {
		$("#backHFrame").attr("src", "order.action");
		$("#backHFrame").css("height", "550px");
	}
	document.getElementById("backHFrame").onload = dyniframesize;
}
function ListFix() {
	var lifix = $(".bh_leftli ul li");
	for ( var i = 0; i < lifix.length; i++) {
		lifix[i].onclick = function() {
			if (this.className == "") {
				lifix.removeClass("bh_listShow");
				this.className += (this.className.length > 0 ? " " : "")
						+ "bh_listShow";
				var name = $(".bh_listShow").text();
				$("#righTit").text(name);
			}
		};
	}
}
function SetTitle() {
	var text1 = $(".bh_listShow").text();
	$("#righTit").text(text1);
}
function ShoWarp() {
	var name = $(".bh_listShow").text();
	if (name == "管理主页") {
		$("#backHFrame").attr("src", "page/backstage/guanlizhuye.jsp");
	}
	document.getElementById("backHFrame").onload = dyniframesize;
}