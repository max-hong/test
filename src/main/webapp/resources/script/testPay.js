function verify(){
	var expMonth= $("#expMonth").val();
	if(expMonth==""){
		alert('月份必选');
		return false;
	}
	var expYear= $("#expYear").val();
	if(expYear==""){
	 alert('年份必选');
	 return false;
	}
}
