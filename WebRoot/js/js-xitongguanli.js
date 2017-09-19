$(document).ready(function() {
	setInfo();
});
//格式化Timestamp，转化为Date类型
Date.prototype.Format = function (fmt) { //
    var o = {
        "M+": this.getMonth() + 1, //Month
        "d+": this.getDate(), //Day
        "h+": this.getHours(), //Hour
        "m+": this.getMinutes(), //Minute
        "s+": this.getSeconds(), //Second
        "q+": Math.floor((this.getMonth() + 3) / 3), //Season
        "S": this.getMilliseconds() //millesecond
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + 

"").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, 

(RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};
function setInfo() {
	//获取用户权限
	$.post("loginInfo",function(data){
		var idname = $("#zygl_infoQuanxian");
		idname.text(data.adminSino);
	});
	//获取用户最近登录时间和地点
	$.post("getnearLogAction",  function(data){
		var idtime = $("#zygl_infoTime");
		var idaddress = $("#zygl_infoPlace");
		if(data==null) {
			idtime.text("第一次登录");
			idaddress.text("第一次登录");
		}else {
			var time = new Date(data.obj.logTime).Format("yyyy-MM-dd hh:mm");
			idtime.text(time);
			idaddress.text(data.obj.logAdress);
		}
	},"json");
	
	$.post("findSevenLogAction", function(data) {
		console.log("findSevenLogAction:"+data.obj.length);
		var length = data.obj.length;
		for(var i=0;i<length;i++){
			var textName = $("<p></p>").text(data.obj[i].uId);
			$("#nameItem").append(textName);
			var norTime =  new Date(data.obj[i].logTime).Format("yyyy-MM-dd hh:mm");
			var texTime = $("<p></p>").text(norTime);
			$("#timeItem").append(texTime);
			var textIP = $("<p></p>").text(data.obj[i].logIp);
			$("#addressItem").append(textIP);
			var textAddress = $("<p></p>").text(data.obj[i].logAdress);
			$("#siteItem").append(textAddress);
		}
	},"json"); 
}