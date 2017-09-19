$(function() {
	$("#brandbtnscsxx").click(function() {
		if (confirm("你想要删除这些数据吗?")) {
			$("input[name='fxk']:checked").each(function() { // 遍历选中的checkbox
				var brId = $(this).val();
				$.ajax({
					url : "brand_delete.action?brId=" + brId,
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