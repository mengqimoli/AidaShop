$(document).ready(function() {
	setTrBg();
});
function setTrBg() {
	//表格背景设置
    var brandTh =
    	$(".bhover");
    for(var i=0;i<brandTh.length;i=i+2) {
    	brandTh.eq(i).css("background","#f8fbfc");
    }
}