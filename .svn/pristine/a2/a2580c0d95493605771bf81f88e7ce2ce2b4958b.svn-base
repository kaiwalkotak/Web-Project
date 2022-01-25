function validateData(className,validateType){
	var numericReg = /^\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$/;
	var flag = false;
	if(validateType == "number"){
		$(className).each(function(index) {
			if(!$(this).next().hasClass("error_required")){
				$(this).next().html('');
			}
			if($(this).val() != ""){
				if(!numericReg.test($(this).val())) {
					flag = true;
			        $(this).after('<span class="error_numeric" style="color:red;">Numeric characters only.</span>');
			    }
			}
		});
	}
	if(validateType == "required"){
		$(className).each(function(index) {
			$(this).next().html('');
			if($(this).val() == ""){
				flag = true;
				$(this).after('<span class="error_required" style="color:red;">This field is required.</span>');
			}
		});
	}
	return flag;
	
}
function validateOptionData(className,validateType){
	var flag = false;
	if(validateType == "required"){
		$(className).each(function(index) {
			if($(this).prev().hasClass("error_required")){
				$(this).prev().remove();
			}
			if($(this).val() == "" || $(this).prev().val() == ""){
				flag = true;
				$(this).val('');
				$(this).before('<span class="error_required" style="color:red;">This field is required.</span>');
			}
		});
	}
	return flag;
}
function validateOptionDataNormal(className,validateType){
	var flag = false;
	if(validateType == "required"){
		$(className).each(function(index) {
			if($(this).next().hasClass("error_required")){
				$(this).next().remove();
			}
			if($(this).val() == "" || $(this).next().val() == ""){
				flag = true;
				$(this).val('');
				$(this).after('<span class="error_required" style="color:red;">This field is required.</span>');
			}
		});
	}
	return flag;
	
}
function setCheckedValue(id,idForset){
	if($("#"+id). prop("checked") == true){
		$("#"+idForset).val("1");
	}else{
		$("#"+idForset).val("0");
	}
}
function alertDiv(className,content){
	$("#alertDiv").addClass(className);
	$("#alertDiv").html(content);
	$("#alertDiv").show();
	setTimeout(function(){ $("#alertDiv").fadeOut(); }, 3000);
}
function alertDivAjax(className,content){
	$("#alertDivAjax").addClass(className);
	$("#alertDivAjax").html(content);
	$("#alertDivAjax").show();
	setTimeout(function(){ $("#alertDivAjax").fadeOut(); }, 3000);
}
function showErrorLabel(labelId,lebelText){
	$("#"+labelId).show();
	$("#"+labelId).html(lebelText);
	setTimeout(function(){ $("#"+labelId).fadeOut(); }, 6000);
}
function getEMI(principal,rate,timeinmonth){
	rate=rate/(12*100); 
	var emi= (principal*rate*Math.pow(1+rate,timeinmonth))/(Math.pow(1+rate,timeinmonth)-1);
	return emi;
}
function checkmobileandemail(classname){
	var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var flag = false;
	if(classname == ".mobile-class"){
		$(classname).each(function(index) {
			$(this).next().html('');
			if($(this).val() != ""){
				if(($(this).val()).length != 10){
					flag = true;
			        $(this).after('<span class="error_mobile" style="color:red;">Mobile no must be 10 digit.</span>');
				}
			}
		});
	}else if(classname == ".email-class"){
		$(classname).each(function(index) {
			$(this).next().html('');
			if($(this).val() != ""){
				if(!regex.test($(this).val())) {
					flag = true;
			        $(this).after('<span class="error_email" style="color:red;">Email address is not valid.</span>');
			    }
			}
		});
	}
	return flag;
}
function getRandomString() {
	var length = 6;
    var randomChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var result = '';
    for ( var i = 0; i < length; i++ ) {
        result += randomChars.charAt(Math.floor(Math.random() * randomChars.length));
    }
    return result;
}
function generatenumber(){
	var arr = Math.floor(1000000 + Math.random() * 9000000);
	return arr;
}
function addBusinessDays(originalDate, numDaysToAdd) {
	  const Sunday = 0;
	  const Saturday = 6;
	  let daysRemaining = numDaysToAdd;

	  const newDate = originalDate.clone();

	  while (daysRemaining > 0) {
	    newDate.add(1, 'days');
	    if (newDate.day() !== Sunday) {
	      daysRemaining--;
	    }
	  }

	  return newDate;
	}
$(".fill-zero").change(function(){
	if($(this).val().trim() == '' || isNaN($(this).val().trim())){
		$(this).val("0");
	}
});