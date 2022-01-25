<input type="file" id="docUploadBtnM" name="multipleFiles[]" class="form-control-file" multiple="multiple">
<input type="hidden" id="docUploadPath" name="docUploadPath" value="${docUploadPath}" >
<input type="hidden" id="savePath" name="savePath" value="${savePath}">
<input type="hidden" id="saveFullPath" name="saveFullPath" value="" >
<input type="hidden" id="onlyFileName" name="onlyFileName" value="" >
<%-- <div class="overlay">
   	<img alt="" src="${pageContext.request.contextPath}/resources/image/loading.gif" style="width: 6%;height: 6rem;margin-top: 29rem;margin-left: 49%;">
</div> --%>
<script type="text/javascript">
function uploadDocumentMultiple(masterId,fileName,cnt){
		$("#top-loading-start").click();
	
		var uploadDoc = new FormData();
		uploadDoc.append("file", docUploadBtnM.files[cnt]);
		var text = fileName;
		/* text = text.substring(text.lastIndexOf("\\") + 1, text.length); */
		//var updatedFile = text.substring(0,text.indexOf("."))+"_"+masterId+"."+text.substring(text.indexOf(".")+1,text.length);
		var updatedFile = text;
		uploadDoc.append("name", updatedFile);
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
		/* $('#video-display-div').modal('hide'); */
		$("#top-loading-stop").click();
		$(".btn-growl").click();
}

</script>