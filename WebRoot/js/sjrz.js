$(function() {
	$("#creatStore").on("click",tabOne);
	$("#preBtn1").on("click",tabTwo);
	$("#blueBtn1").on("click",tabTwo1);
	$("#baseCompNo").on("click",formShow);
	$(".back").on("click",formHide);
	$(".closeIcon").on("click",formHide);
	$("#checkBtn").on("click",infoPost);
	$("#existCheck").on("click",existCheck);
});
//检查是否已经信息完整和是否申请过一个店铺
function existCheck() {
	var res = $("#baseCompRes").val();
	if(res=="no") {
		alert("请先去补全个人信息或查看个人信息确认！");
		return false;
	}else {
		$.post("isExistStoreAuthAction",function(data){
			if(data.msg=="0") {
				alert("您的账户已经申请过店铺，请不要再次申请！");
				return false;
			}
		},"json");
	}
}
function tabOne() {
	$("#cs_1").hide();
	$("#cs_2").show();
	$("#cs_tit ul li").removeClass("active");
	$("#cs_tit ul li").eq(1).addClass("active");
	$("#cs_tit ul li").eq(0).addClass("actived");
}
function tabTwo() {
	$("#cs_1").show();
	$("#cs_2").hide();
	$("#cs_tit ul li").removeClass("active");
	$("#cs_tit ul li").removeClass("actived");
	$("#cs_tit ul li").eq(0).addClass("active");
}
function tabTwo1() {
	$("#cs_3").show();
	$("#cs_2").hide();
	$("#cs_tit ul li").removeClass("active");
	$("#cs_tit ul li").removeClass("actived");
	$("#cs_tit ul li").eq(2).addClass("active");
	$("#cs_tit ul li").eq(1).addClass("actived");
	$("#cs_tit ul li").eq(0).addClass("actived");
}
//String转Date
//var time1 = new Date().format("yyyy-MM-dd HH:mm:ss");     
//var time2 = new Date().format("yyyy-MM-dd");   
Date.prototype.Format = function(fmt)   
{ //author: meizz   
  var o = {   
    "M+" : this.getMonth()+1,                 //月份   
    "d+" : this.getDate(),                    //日   
    "h+" : this.getHours(),                   //小时   
    "m+" : this.getMinutes(),                 //分   
    "s+" : this.getSeconds(),                 //秒   
    "q+" : Math.floor((this.getMonth()+3)/3), //季度   
    "S"  : this.getMilliseconds()             //毫秒   
  };   
  if(/(y+)/.test(fmt))   
    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
  for(var k in o)   
    if(new RegExp("("+ k +")").test(fmt))   
  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
  return fmt;   
};
function formShow() {
	$(".shadow").addClass("shadowShow");
	$(".back").show();
	$.post("fcCustomerAction.action",function(data) {
		console.log(data.msg+data.obj.uName+data);
		//设置所查看的显示信息
		$("#infoName").text(data.obj.uName);
		$("#iptName").val(data.obj.uName);
		$("#infoUNickName").val(data.obj.uNickName);
		$("#infoURelaname").val(data.obj.uRelaname);
		if(data.obj.uRelaname=="男") {
			$("input[name='USex']").get(0).checked=true; 
		}else {
			$("input[name='USex']").get(1).checked=true; 
		}
		var time = new Date(data.obj.uBirthday).Format("yyyy-MM-dd");
		$("#demo").val(time);
		$("#birthday").val(time);
		$("#infoUAddress").val(data.obj.uAddress);
		$("#infoUCardId").val(data.obj.uCardId);
		$("#infoUEmail").val(data.obj.uEmail);
		$("#infoUMobile").val(data.obj.uMobile);
		//设置是否满足信息完整的值
		$("#baseCompRes").val(data.msg);
	},"json");
}
function formHide() {
	$(".shadow").removeClass("shadowShow");
	$(".back").hide();
}
function infoPost() {
	var UName = $("#iptName").val().trim();
	var UNickName = $("#infoUNickName").val().trim();
	var URelaname = $("#infoURelaname").val().trim();
	var USex = $("input[type='radio']:checked").val();
	var UBirthday = $("#demo").val();
	var UAddress = $("#infoUAddress").val().trim();
	var UCardId = $("#infoUCardId").val().trim();
	var UEmail = $("#infoUEmail").val().trim();
	var UMobile = $("#infoUMobile").val().trim();
	
	if (UName==""||UNickName==""||URelaname==""||USex==""||UBirthday==""||UAddress==""||UCardId==""||UEmail==""||UMobile=="") {
		$("#viewBtn p").text("信息必须完整，不能为空或仅为空格！");
		return false;
	} else {
		$.post("upSACustomerAction.action",{UName:UName,UNickName:UNickName,URelaname:URelaname,USex:USex,UBirthday:UBirthday,UAddress:UAddress,UCardId:UCardId,UEmail:UEmail,UMobile:UMobile},function() {
			$("#baseCompRes").val("yes");
			$("#viewBtn p").text("修改成功！");
			formHide();
		});
	}
}