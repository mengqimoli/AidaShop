var listItem;
var setClickNum = 0;
$(document).ready(function(){
	/*侧边栏*/
	$("#list_home").on("click",selected1);
	$("#list_good").on("click",selected2);
	$("#list_order").on("click",selected3);
	$("#list_comment").on("click",selected4);
	$("#list_ad").on("click",selected5);
	$("#list_fiance").on("click",selected6);
	$("#list_refund").on("click",selected7);
	$("#list_set").on("click",selected8);
	$("#list_brand").on("click",selected9);
	$(document).on("scroll",scrollTOLeft);
	loadLeft();
	/*设置栏，标题栏*/
	$(".edit_bar").on("mouseover",editOver);
	$(".edit_bar").on("mouseout",editOut);
	$(".add_bar").on("mouseover",addOver);
	$(".add_bar").on("mouseout",addOut);
	/*编辑*/
	$("#set_edit").on("click",setClick);
	$("#setFinishBtn").on("click",finishClick);
	$("#addStoreTag").on("click",addStoreTag);
	$(".storeTagBox i").on("click",closeStoreTag);
});
function closeStoreTag(){
	if($(".storeTagBox").length==1){
		alert("标签数必须大于等于1！");
	}else {
		this.remove();
		var k = $(".storeTagBox").length;
		for(var i=0;i<k;i++) {
			if($(".storeTagBox").eq(i).children().length==1) {
				$(".storeTagBox").eq(i).remove();
			}
		}
	}
}
function addStoreTag() {
	$("#addStoreTag").before($(".storeTagBox").eq(0).clone(true));
	var last = $(".storeTagBox").length -1;
	$(".storeTag_edit").eq(last).val("");
}
function setClick() {
	setInfornation();
	$("#manage_set_dl").hide();
	$("#manage_set_dlSet").show();
}
//编辑完成发送信息
function finishClick() {
	var storeName = $.trim($("#storeName_edit").val());
	var StoreTag = "";
	for(var i=0;i<$(".storeTagBox").length;i++) {
		if($.trim($(".storeTag_edit").eq(i).val())==null || $.trim($(".storeTag_edit").eq(i).val())=="") {
			StoreTag = StoreTag;
		} else {
			if($.trim(StoreTag)==null||$.trim(StoreTag)==""){
				StoreTag = $.trim($(".storeTag_edit").eq(i).val());
			} else {
				StoreTag = StoreTag + "/" + $.trim($(".storeTag_edit").eq(i).val());
			}
		}
	}
	$.post("editStore",{storeName:storeName,StoreTag:StoreTag} ,function() {
		$("#storeName").empty();
		$("#storeName").append($("<p></p>").text(storeName));
		$("#storeTag").empty();
		$("#storeTag").append($("<p></p>").text(StoreTag));
	});
	$("#storeName_value").val("");
	$("#storeName_edit").val("");
	$("#storeTag_value").val("");
	$(".storeTagBox").eq(0).nextAll(".storeTagBox").remove();
	$("#storeName_value").val(storeName);
	$("#storeName_edit").val(storeName);
	$("#storeTag_value").val(StoreTag);
	$("#manage_set_dlSet").hide();
	$("#manage_set_dl").show();
	setInfornation();
}
function loadLeft() {
	var scrNum = $(window).scrollLeft();
	var scrNumFu = 0 - scrNum;
	$(".list_wrap").css("left",scrNumFu);
}
function scrollTOLeft() {
	var scrNum = $(window).scrollLeft();
	var scrNumFu = 0 - scrNum;
	$(".list_wrap").css("left",scrNumFu);
}
function addOut() {
	$(".add_bar").removeClass("addOver");
}
function addOver() {
	$(".add_bar").addClass("addOver");
}
function editOut() {
	$(".edit_bar").removeClass("editOver");
}
function editOver() {
	$(".edit_bar").addClass("editOver");
}
function selected1() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_home").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".home_show").show();
}
function selected2() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_good").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_good").show();
}
function selected3() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_order").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_order").show();
}
function selected4() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_comment").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_comment").show();
}
function selected5() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_ad").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_ad").show();
}
function selected6() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_fiance").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_finance").show();
}
function selected7() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_refund").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_refund").show();
}
function selected8() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_set").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_set").show();
	if($("#manage_set_dl").css("display")=="none") {
		$("#manage_set_dlSet").hide();
		$("#manage_set_dl").show();
		setInfornation();
	} else {
		setInfornation();
	}
}
function setInfornation () {
	$.post("selectStore", function (data){
		console.log(data);
		var text = $("<p></p>").text(data.store.stName);
		$("#storeName").empty();
		$("#storeName").append(text);
		$("#storeTag").empty();
		$("#storeTag").append($("<p></p>").text(data.store.stTag));
		$("#storeStart").empty();
		$("#storeStart").append($("<p></p>").text(data.store.stCreateTime.substr(0,10)));
		$("#storeEnd").empty();
		$("#storeEnd").append($("<p></p>").text(data.store.stEndTime.substr(0,10)));
		$("#storeName_value").val("");
		$("#storeName_edit").val("");
		$("#storeTag_value").val("");
		$("#storeStart_value").val("");
		$("#storeEnd_value").val("");
		$("#storeName_value").val(data.store.stName);
		$("#storeName_edit").val(data.store.stName);
		$("#storeTag_value").val(data.store.stTag);
		$("#storeStart_value").val(data.store.stCreateTime.substr(0,10));
		$("#storeEnd_value").val(data.store.stEndTime.substr(0,10));
		tagShow();
	});
}
//店铺标签显示
function tagShow() {
	var arr = new Array();
	arr = $("#storeTag_value").val().split("/");
	$("#countStoreTag").val(arr.length);
	var n = $(".storeTagBox").length;
	for (var i=0;i<arr.length;i++) {
		$("#addStoreTag").before($(".storeTagBox").eq(0).clone(true));
		var last = $(".storeTagBox").length -1;
		$(".storeTag_edit").eq(last).val(arr[i]);
	}
	$(".storeTagBox").eq(n).prevAll().remove();
}
function selected9() {
	$(".list_item").removeClass("mer_list_selected");
	$("#list_brand").addClass("mer_list_selected");
	$(".mer_left_wrap").hide();
	$(".manage_brand").show();
}