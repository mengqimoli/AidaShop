$(function() {
	$(".frameH3").click(function(){
		$(".frameH3").removeClass("spanHover");
		this.className += " spanHover";
		var text = $(this).text();
		if(text=="基本信息") {
			$("#base_info").show();
			$("#setPwd").hide();
		}else {
			$("#base_info").hide();
			$("#setPwd").show();
		}
	});
	$("#subPwd").on("click",changePwd);
});

function changePwd() {
	var uid = $("#uidHide").val();
	var oldPwd = $("#oldPwd").val();
	var newPwd = $("#newPwd").val();
	var newPwd1 = $("#newPwd1").val();
	var msgPwd = $("#msgPwd");
	
	if(oldPwd!=""&&newPwd!=""&&newPwd1!=""){
		if(newPwd==newPwd1) {
			$.post("chagePwdCustomerAction.action",{UId:uid,UPassword:oldPwd,newPwd:newPwd} ,function(data){
				console.log("res:"+data);
				if(data==1) {
					msgPwd.text("旧密码验证错误！");
				}else {
					msgPwd.text("修改成功！");
				}
			});
		}else {
			msgPwd.text("两次密码不相同！");
			return false;
		}
	}else {
		msgPwd.text("输入不能为空！");
	}
	
}