//$(document).ready(function() {
//	$(".subEdit").on("click",postCust);
//}); 
//function postCust() {
//	var record = $("#record").attr("value");
//	console.log("record:"+record);
//	var tr = $(".bhover").eq(record);
//	var uid= tr.find("#UId").attr("value");
//	var UNickName = tr.find("#UNickName").text();
//	var UName = tr.find("#UName").attr("value");
//	var USex = tr.find("#USex").text();
//	var URelaname = tr.find("#URelaname").text();
//	var UPassword = tr.find("#UPassword").attr("value");
//	var UBirthday = tr.find("#UBirthday").attr("value");
//	console.log("UBirthday:"+UBirthday);
//	var UAddress = tr.find("#UAddress").attr("value");
//	var UCardId = tr.find("#UCardId").attr("value");
//	var UEmail = tr.find("#UEmail").attr("value");
//	var UMobile = tr.find("#UMobile").attr("value");
//	var stId = tr.find("#stId").attr("value");
//	var styleDes = tr.find("#UStylingDesigner").val();
//	var uadmin = tr.find("#UAdmin").val();
//	var ustate = tr.find("#UState").val();
//	console.log("postCust:"+uid+","+styleDes+","+uadmin+","+ustate);
//	window.location.href="editCustomerAction?UId="+uid+"&UStylingDesigner="+styleDes+"&UState="+ustate+"&UAdmin="+uadmin;
//}
//$(function() {
//	$("#btnscsxx").click(function() {
//		var tableId = document.getElementById("brandListTAb");
//		for ( var i = 1; i < tableId.rows.length; i++) {
//			// alert(tableId.rows[i].cells[0].innerHTML);
//			if (tableId.rows[i].cells[0].checked) {
//				alert(i + "2");
//			}
// $
// .ajax({
// url : "score_save.action?couName=" + couName
// + "&stuNum=" + stuNum + "&stuScore="
// + stuScore,
// type : "post",
// dataType : "json",
// success : function(data) {
// }
// });
//		}
//		alert("保存成功");
//	});
//});
$(function() {
	$("#btnscsxx").click(function() {
		if (confirm("你想要删除这些数据吗?")) {
			$("input[name='fxk']:checked").each(function() { // 遍历选中的checkbox
				var UId = $(this).val();
				// alert($(this).val());
				$.ajax({
					url : "user_delete.action?UId=" + UId,
					type : "post",
					dataType : "json",
					success : function(data) {
						if (data) {

						} else {
							alert("删除失败");
						}
					}
				});
			});
			alert("删除成功");
			$("#domainForm").submit();
		}
	});
});