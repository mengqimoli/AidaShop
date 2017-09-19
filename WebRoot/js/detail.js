$(document).ready(function() {
	deatilMenuFix();
});
function deatilMenuFix() {
	var dMenu = $(".title_wrap li");
	for(var i=0; i<dMenu.length; i++) {
		dMenu[i].onclick = function() {
			dMenu.removeClass("current");
			this.className += (this.className.length>0?" ":"") + "current";
			if(this.id=="title1") {
				$(".speci_package").css("display","none");
				$(".good_introduce").css("display","block");
			}else if(this.id=="title2") {
				$(".good_introduce").css("display","none");
				$(".speci_package").css("display","block");
			}else if(this.id=="title3") {
				$(".good_introduce").css("display","none");
				$(".speci_package").css("display","none");
			}else {
				$(".good_introduce").css("display","none");
				$(".speci_package").css("display","none");
			}
		};
	}
}