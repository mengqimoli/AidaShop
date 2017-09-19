$(function() {
	$("#storebtnscsxx").click(function() {
		if (confirm("你想要删除这些数据吗?")) {
			$("input[name='fxk']:checked").each(function() { // 遍历选中的checkbox
				var stId = $(this).val();
				$.ajax({
					url : "store_delete.action?stId=" + stId,
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
$(document).ready(function() {
	$(".subEdit").on("click", postCust);
});
function postCust() {
	var record = $("#record").attr("value");
	console.log("record:" + record);
	var tr = $(".bhover").eq(record);
	var stId = tr.find("#stId").attr("value");
	var stLevel = tr.find("#stLevel").val();
	var stState = tr.find("#stState").val();
	console.log("postCust:" + stId + "," + stLevel + "," + stState);
	window.location.href = "updateStoreAction?stId=" + stId + "&stLevel="
			+ stLevel + "&stState=" + stState;
}