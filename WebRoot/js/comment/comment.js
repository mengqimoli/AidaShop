$(function() {
	$("#combtnscsxx").click(function() {
		if (confirm("你想要删除这些数据吗?")) {
			$("input[name='fxk']:checked").each(function() { // 遍历选中的checkbox
				var PId = $(this).val();
				$.ajax({
					url : "comment_delete.action?comId=" + comId,
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
	$("#btncomment").click(
			function() {
				var PId = $("#PId").val();
				var comContent = $("#comContent").val();
				//alert(PId+comContent);
				window.location.href = "comment_save.action?PId=" + PId
						+ "&comContent=" + comContent;
			})
});