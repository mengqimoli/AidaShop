$(document).ready(function() {
	/*二级菜单显示隐藏*/
	MenuFix();
	$("#target").on("mouseover",ComponentShow);
	$("#target").on("mouseout",ComponentHide);
	$("#controller").on("mouseover",ComponentShow);
	$("#controller").on("mouseout",ComponentHide);
	$(".slide_bg").on("mouseover",ComponentShow);
	$(".slide_bg").on("mouseout",ComponentHide);
	$("#prev").on("mouseover",ComponentShow);
	$("#prev").on("mouseout",ComponentHide);
	$("#next").on("mouseover",ComponentShow);
	$("#next").on("mouseout",ComponentHide);
	/*阴影显示隐藏*/
	ShadowFix();
});
function ShadowFix() {
	var shaEles = $(".good_com_box");
	for(var i=0; i<shaEles.length ; i++) {
		shaEles[i].onmouseover = function() {
				this.className += " shadowShow";
		};
		shaEles[i].onmouseout = function() {
			this.className = this.className.replace("good_com_box shadowShow" , "good_com_box");
		};
	}
}
function ComponentShow() {
	$("#controller").css("display","block");
	$(".slide_bg").css("display","block");
	$("#prev").css("display","block");
	$("#next").css("display","block");
}
function ComponentHide() {
	$("#controller").css("display","none");
	$(".slide_bg").css("display","none");
	$("#prev").css("display","none");
	$("#next").css("display","none");
}
function MenuFix() {
	var sfEles = $(".firstMenuItem");
	for(var i=0; i<sfEles.length ; i++) {
		sfEles[i].onmouseover = function() {
				this.className += " listshow";
		};
		sfEles[i].onmouseout = function() {
			this.className = this.className.replace("firstMenuItem listshow" , "firstMenuItem");
		};
	}
}