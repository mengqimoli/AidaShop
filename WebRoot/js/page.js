//table分页        
var pageSize = 8; // 每页显示的记录条数
var curPage = 0; // 显示第curPage页
var len; // 总行数
var page; // 总页数
var checkname;//checkbox name

$(function() {
	checkname = $("input:checkbox").attr("name");
	var checknameHid = checkname+"_no";
	len = $(".bhover").length; // 去掉表头
	page = len % pageSize == 0 ? len / pageSize : Math.floor(len / pageSize) + 1;// 根据记录条数，计算页数
	console.log("len:" + len + "page:" + page);
	document.getElementById("page").innerHTML = page;
	curPage = 1;
	displayPage(checkname,checknameHid);// 显示第一页
	$("#firstpage").click(function() {//首页
		curPage = 1;
		displayPage(checkname,checknameHid);
	});
	$("#nextpage").click(function() {// 下一页
		if (curPage < page) {
			curPage += 1;
		} else {
			alert("已是最后一页");
		}
		displayPage(checkname,checknameHid);
	});
	$("#lastpage").click(function() {// 上一页
		if (curPage > 1) {
			curPage -= 1;
		} else {
			alert("已是第一页");
		}
		displayPage(checkname,checknameHid);
	});
	$("#endpage").click(function() {//末页
		curPage = page;
		displayPage(checkname,checknameHid);
	});
	$("#npage").click(function() {// 跳到固定某一页
		var npage = parseInt(document.getElementById("curPage").value);
		if (npage > page || npage < 1) {
			alert("该页不存在");
		} else {
			curPage = npage;
		}
		displayPage(checkname,checknameHid);
	});
	
});

function displayPage(checkname,checknameHid) {
	var begin = (curPage - 1) * pageSize;// 起始记录号
	var end = begin + pageSize-1;
	if (end > len){
		end = len;
	}
	console.log("  begin:" + len + "   end:" + end);
	$(".bhover").hide();
	$('input:checkbox').attr('name',checknameHid);
	$(".bhover").each(function(i) {
		if (i >= begin && i - 1 < end)// 显示第page页的记录
		{
			$(this).show();
			$(this).find("input").attr("name",checkname);
			//$(this.input:checkbox).attr('name','delid');
			document.getElementById("curPage").value = curPage;
			document.getElementById("cpage").innerHTML = curPage;
			
			//本行数据提交
			var nochage = $(this).find(".nochage");
			var chage = $(this).find(".chage");
			$(this).find(".listEdit").click(function(){
				$("#record").remove();
				$(".nochage").show();
				$(".chage").hide();
				$(this).append('<input id="record" type="hidden" value="'+i+'"/>');
				nochage.hide();
				chage.show();
			});
			$(this).find(".cancelEdit").click(function(){
				$("#record").remove();
				nochage.show();
				chage.hide();
			});
		}
	});
}

//改变每页显示条数
function pageSize2() {
	curPage = 0; // 显示第curPage页
	pageSize = parseInt(document.getElementById("pageSize").value);
	len = $("#show_shenpi tr").length - 1; // 去掉表头
	page = len % pageSize == 0 ? len / pageSize
			: Math.floor(len / pageSize) + 1;// 根据记录条数，计算页数
	console.log("len:" + len + "   page:" + page);
	document.getElementById("page").innerHTML = page;
	curPage = 1;
	displayPage();// 显示第一页
}

