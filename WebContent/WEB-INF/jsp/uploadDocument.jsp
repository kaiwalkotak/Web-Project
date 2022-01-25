<input type="file" id="docUploadBtn" class="form-control-file" id="exampleFormControlFile1">
<input type="hidden" id="docUploadPath" name="docUploadPath" value="${docUploadPath}" >
<input type="hidden" id="savePath" name="savePath" value="${savePath}">
<input type="hidden" id="saveFullPath" name="saveFullPath" value="" >
<input type="hidden" id="onlyFileName" name="onlyFileName" value="" >
<script type="text/javascript">
function uploadDocument(masterId){
		if(masterId == "0"){
			masterId = generatenumber();
		}
		var uploadDoc = new FormData();
		uploadDoc.append("file", docUploadBtn.files[0]);
		var text = $("#docUploadBtn").val();
		text = text.substring(text.lastIndexOf("\\") + 1, text.length);
		var updatedFile = text.substring(0,text.indexOf("."))+"_"+masterId+"."+text.substring(text.indexOf(".")+1,text.length);
		uploadDoc.append("name", updatedFile.trim());
		uploadDoc.append("docUploadPath",$('#docUploadPath').val());
		uploadDoc.append("savePath",$('#savePath').val());
		uploadDoc.append("masterId",masterId);
		$("#onlyFileName").val(updatedFile);
		$("#saveFullPath").val($("#savePath").val()+updatedFile);
		$.ajax({
			type: "POST",
			url: "${pageContext.servletContext.contextPath}/documentUpload.html?${_csrf.parameterName}=${_csrf.token}",
	        data : uploadDoc ,
	        dataType: 'text',
	        processData : false,
	        contentType : false,
	        async:false,
	        success : function(data) {
	        
	        },
	        error : function(err) {}
	    });
		$('.overlay').hide();
}
function generatenumber(){
	var arr = Math.floor(1000000 + Math.random() * 9000000);
	return arr;
}
</script>