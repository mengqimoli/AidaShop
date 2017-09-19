$(document).ready(function() {
	$(".subEdit").on("click",postCust);
}); 
function postCust() {
	var record = $("#record").attr("value");
	console.log("record:"+record);
	var tr = $(".bhover").eq(record);
	var saId= tr.find("#saId").attr("value");
	var saStatu = tr.find("#saStatu").val();
	console.log("stId:"+saId+",saState:"+saStatu);
	window.location.href="upsaStoreAuthAction.action?saId="+saId+"&saStatu="+saStatu;
}