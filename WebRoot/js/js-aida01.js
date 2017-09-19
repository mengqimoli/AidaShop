/**
 * Created by Liu Shuangbo on 2016/11/21.
 */
var regidinp = document.getElementById("regidinp");
var pwdInput1 = document.getElementById("pwd_input1");
var count = 0;

window.onload = logcheck;
regidinp.onpropertychange = regidinp.oninput = regidinp.onchange = logcheck;
pwdInput1.onpropertychange = pwdInput1.oninput = pwdInput1.onchange = pwdcheck;
/*------register.jsp 注册提交参数------------*/
function register() {
	var regidinp1 = document.getElementById("regidinp");
	var pwdInput = document.getElementById("pwd_input").value;
	var pwdInput1Val = pwdInput1.value;
	if(pwdInput!=pwdInput1Val){
		alert("两次密码不相同");
		return false;
	}else{
		if(count==0){
			//input输入满足要求，提交添加申请
			count = count + 1;
			var value = regidinp1.value;
			var nameInput = document.getElementById("name_input").value;
			var xhr;
			if (window.ActiveXObject) {
				//测试ActiveX是否存在
				try {
					xhr = new ActiveXObject("Microsoft.XMLHTTP");//低版本IE
				} catch (e) {
					xhr = new ActiveXObiect("Msxml2.XMLHTTP");//高版本IE
				}
				
			} 
			else if (window.XMLHttpRequest) {
				//测试XHR是否已经被定义
				xhr = new XMLHttpRequest();
			}
			else {
				//如果不支持AJAX则抛出错误
				throw new Error("Ajax is not supported by this browser");
			}
			xhr.open("GET", "addCustomerAction?UName=" + value+"&UNickName="+encodeURI(encodeURI(nameInput))+"&UPassword="+encodeURI(encodeURI(pwdInput)),true);
			xhr.send(null);
			//就绪状态处理器
			xhr.onreadystatechange = function() {
				if(this.readyState == 4) {			//忽略除DONE状态之外的所有状态
					if (this.status >= 200 && this.status <300) {
						//成功
						console.log("data:"+xhr.responseText);
						var regbox = document.getElementById("reg_box");
						var data = xhr.responseText;
						location.href="page/register/registeresult.jsp?data="+data;
					}
					else {
						//出错
						location.href="test.jsp";
					}
				}
			};
		}else {
			console.log("count:"+count);
			return false;
		}
	}
}
/* register.jsp 相同密码判断*/
function pwdcheck() {
	var pwdInput = document.getElementById("pwd_input").value;
	var pwdInput1Val = pwdInput1.value;
	var errorPwd = document.getElementById("errorPwd");
	if(pwdInput!=pwdInput1Val){
		errorPwd.innerHTML = "两次密码不相同";
	}else{
		errorPwd.innerHTML = "密码相同";
	}
}
/*register.jsp 邮箱、电话号码正则判断*/
function logcheck () {
	var patt0 = /^\w+@\w+(\.\w+)+$/;	//邮箱正则判断
	var patt1 = /^1[3|4|5|7|8]\d{9}$/;	//手机号正则判断
	var patt2 = /^[0-9]*$/;				//包含非数字符号
	var regidinp1 = document.getElementById("regidinp");
	var span0 = document.getElementById("span0");
	var regphone = document.getElementById("regphone");
	var regbox = document.getElementById("reg_box");
	var infoBox = document.getElementById("infoBox");
	
	if(!patt2.test(regidinp1.value)) {
		if(!patt0.test(regidinp1.value)) {
			//包含非数字字符，且不是邮箱格式
			span0.innerHTML = "<span>请输入正确的邮箱格式</span>";
			regbox.style.height = "300px";
			regphone.style.display = "none";
			infoBox.style.display = "none";
			if(regidinp1.value.length == 0) {
				span0.innerHTML = "<span>请您输入QQ、163、126、gmail等常用邮箱，或者11位手机号。</span>";
			}
		}else {
			//包含非数字字符，且满足邮箱格式,向服务器发起验证请求
			var url = "isSaveNameCustomerAction";
			var value = regidinp1.value;
			var xhr;
			if (window.ActiveXObject) {
				//测试ActiveX是否存在
				try {
					xhr = new ActiveXObject("Microsoft.XMLHTTP");//低版本IE
				} catch (e) {
					xhr = new ActiveXObiect("Msxml2.XMLHTTP");//高版本IE
				}
				
			} 
			else if (window.XMLHttpRequest) {
				//测试XHR是否已经被定义
				xhr = new XMLHttpRequest();
			}
			else {
				//如果不支持AJAX则抛出错误
				throw new Error("Ajax is not supported by this browser");
			}
			xhr.open("GET", "isSaveNameCustomerAction?UName=" + value,true);
			xhr.send(null);
			//就绪状态处理器
			xhr.onreadystatechange = function() {
				if(this.readyState == 4) {			//忽略除DONE状态之外的所有状态
					if (this.status >= 200 && this.status <300) {
						//成功
						console.log("data:"+xhr.responseText);
						var data = xhr.responseText;
						if(data==0){
							span0.innerHTML = "<span>邮箱可以使用</span>";
							regbox.style.height = "550px";
							regphone.style.display = "none";
							infoBox.style.display = "block";
						}else {
							span0.innerHTML = "<span>该邮箱已注册</span>";
							regbox.style.height = "300px";
							regphone.style.display = "none";
							infoBox.style.display = "none";
						}
					}
					else {
						//出错
						location.href="test.jsp";
					}
				}
			};
		}
	} else {
		if(!patt1.test(regidinp1.value)) {
			//不包含非数字字符，且不是手机号格式
			span0.innerHTML = "<span>请输入正确的11位手机号码</span>";
			regbox.style.height = "300px";
			regphone.style.display = "none";
			infoBox.style.display = "none";
			if(regidinp1.value.length == 0) {
				span0.innerHTML = "<span>请您输入QQ、163、126、gmail等常用邮箱，或者11位手机号。</span>";
			}
		} else {
			//不包含非数字字符，且是手机号格式
			span0.innerHTML = "<span>当前手机号码可以使用</span>";
			regbox.style.height = "600px";
			regphone.style.display = "block";
			infoBox.style.display = "block";
		}
	}
};
