<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Karma Suites - CallFile</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <jsp:include page="AllCss.jsp"></jsp:include>  
         
         <style>
			#modelNotyTree3,#modelNotyTree2,#modelNotyTree93,#mProdNoty,#mProdCatNoty{background-color: #AE3E9A; color: white ! important; font-size: 14px; margin-bottom: 20px; margin-top: 10px; position: absolute; width: 100%;margin-left: 0px; border-radius: 5px 5px 5px 5px; padding-left: 6px; text-align: center; box-shadow: 0px 0px 3px 1px rgba(255, 255, 253, 0.15);z-index:10000;}
			#preview_div{display:none;position:absolute;z-index:110;left:400;top:100;width:15;height:15;}
			#removeTr:hover{cursor:pointer;}
			a.navbar-brand > h2{
			font-size:26px;
			}
			div.ui-dialog, #dialogueBoxAddItem{
			
			
			
			
				width : '20.3% important';				
			}
			a.codeimg:hover{cursor: move;}
			#prv{
			  	border: 1px solid;
			  	background: #b8e1fc; /* Old browsers */
				background: -moz-linear-gradient(top,  #b8e1fc 0%, #a9d2f3 10%, #90bae4 25%, #90bcea 37%, #90bff0 50%, #6ba8e5 51%, #a2daf5 83%, #bdf3fd 100%); /* FF3.6+ */
				background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#b8e1fc), color-stop(10%,#a9d2f3), color-stop(25%,#90bae4), color-stop(37%,#90bcea), color-stop(50%,#90bff0), color-stop(51%,#6ba8e5), color-stop(83%,#a2daf5), color-stop(100%,#bdf3fd)); /* Chrome,Safari4+ */
				background: -webkit-linear-gradient(top,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* Chrome10+,Safari5.1+ */
				background: -o-linear-gradient(top,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* Opera 11.10+ */
				background: -ms-linear-gradient(top,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* IE10+ */
				background: linear-gradient(to bottom,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* W3C */
				filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b8e1fc', endColorstr='#bdf3fd',GradientType=0 ); /* IE6-9 */
			    border: 0.001em solid #7B96B8;
			    float: left;
			    padding: 10px;
			    width: 222px;
			}
			#prv span{float: left; width: 100%; text-align: center;}
			.form-horizontal .control-label{
				text-align: left;
			}
		</style>

    </head>
  <body class="page-loading">
        <!-- Page Wrapper -->
        <div id="page-wrapper" >
        
            <!-- Preloader -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Uploading...</strong></h1>
                <div class="inner">
                    <h3 class="text-light visible-lt-ie10"><strong>Loading..</strong></h3>
                    <div class="preloader-spinner hidden-lt-ie10"></div>
                </div>
            </div>
            <!-- END Preloader -->

            <!-- Page Container -->
            <div id="page-container" class="sidebar-mini sidebar-visible-lg-mini sidebar-no-animations">
                <jsp:include page="SidePanel.jsp"></jsp:include>

                <!-- Main Container -->
                <div id="main-container">
                   <jsp:include page="HeadPanel.jsp"></jsp:include>
                   
                   <!-- Page content -->
                    <div id="page-content">
                        <!-- Tasks Header -->
                        <div class="content-header">
                            <div class="header-section">
                                <h1>
                                    <i class="fa fa-tasks"></i>Member Call Files
                                </h1>
                            </div>
                        </div>
                        <!-- END Tasks Header -->

                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
				       ${successMsg}
				    </div>
                        
                       <div class="block full subclass" style="">
                          
                            <div class="block-title" id="det-show">
                                <h2><strong>Call Files</strong></h2>
                                 
                            </div>
                            
                            

                                    <!-- Basic Form Elements Content -->
                                    <form:form id="member-form" class="form-horizontal form-bordered">
                                        <div class="form-group">
                                         	<div class="col-md-2">
                                               <label>Upload Call File</label>
                                            </div>
                                            <div class="col-md-3">
                                            	
                                            	<jsp:include page="uploadDocumentFilenamerename.jsp"></jsp:include>
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                          </div>
                                        
                                        
                                         <div class="form-group">
                                            <div class="col-md-3">
                                              
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-4">
                                            	
                                            </div>
                                            <div class="col-md-2">
                                            	<input type="hidden" name="memberId" id="memberId" value="${member_id}">
                                            	<input type="hidden" name="membercode" id="membercode" value="${memberDet[1]}">
                                           		<button type="button" class="btn btn-sm btn-info" id="savebtn" onclick="savememberbooking()">SUBMIT</button>
                                            	<button type="button" class="btn btn-sm btn-default" onclick="cancelmembers()">CANCEL</button>
                                             
                                            </div>
                                            <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-show_thumbnails"></i> <strong>BOOKING </strong> DETAILS</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                         
                                           
                           <div id="asfRow" style="margin-left: 20px;">
                                  <table class="table table-vcenter table-condensed table-bordered" style="min-width: 70em;max-width: 70em;">
                            	<thead>
                               	<tr>
                                   <th class="text-center" style="width: 60%;">File Name</th>
                                   <th class="text-center">Created Date</th>
                                   <th class="text-center">Download</th>
                                   <th class="text-center">Delete</th>
                                   </tr>
                              			</thead>
                              			<tbody>
                              				<c:forEach var="callFileList" items="${callFileList}" varStatus="loopCount">
                              					<tr id="maintr-${callFileList[0]}">
                              						<td class="text-center"><a href="javascript:void(0)" > ${callFileList[1]} </a></td><td class="text-center">${callFileList[2]}</td>
                              						<td class="text-center">
                              							<a
																href="javascript:void(0)"
																class="fa fa-download btn btn-alt btn-sm btn-primary" data-toggle="tooltip" style=""
																data-toggle="lightbox-image" onclick="downloadDocument(${callFileList[0]})" ></a>
                              						</td>
                              						<td class="text-center" onclick="deletecallfile(${callFileList[0]})"><i class="gi gi-bin"></i></td>
                              					</tr>
                              				</c:forEach>
                              			</tbody>
                            			</table>
                                        </div>
                                        </div>
                                    </form:form>
                                    <!-- END Basic Form Elements Content -->
                                </div>
                       
                    </div>
                    <!-- END Page Content -->

                    
                    <jsp:include page="Footer.jsp"></jsp:include>

                </div>
                <!-- END Main Container -->
            </div>
            <!-- END Page Container -->
        </div>
        <!-- END Page Wrapper -->

        <!-- Scroll to top link, initialized in js/app.js - scrollToTop() -->
        <a href="#" id="to-top"><i class="fa fa-angle-double-up"></i></a>

		<jsp:include page="AllJs.jsp"></jsp:include>  
						<script src="${pageContext.request.contextPath}/resources/js/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
	
	
<script type="text/javascript">         
App.datatables();
$('#example-datatable').dataTable({
    //columnDefs: [ { orderable: false, targets: [ 1, 2 ] } ],
    pageLength: 10,
    lengthMenu: [[10, 20, 30, -1], [10, 20, 30, 'All']]
});
function downloadDocument(id){
		window.location.href = "${pageContext.servletContext.contextPath}/masters/downloadDocument?doctype=CALL"+"&mem_id="+id;
		
}
function deletecallfile(id){
	var r = confirm("Are you sure you want to delete ?");
	if (r == true) {
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/deletecallfile",
			data:$("#member-form").serialize()+"&newids="+id,
			dataType: 'json',
			async:false,
			success: function(response){
				$("#maintr-"+id).remove();
			}
		});
		
	}
}
function savememberbooking(){
	var image =document.getElementById("docUploadBtn").value;
	if(image != ''){
		$('#page-wrapper').addClass('page-loading');
		setTimeout(function () {
		uploadDocument(generatenumber(),"CALL");
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/updatecallfile",
			data:$("#member-form").serialize()+"&newids="+'${member_id}'+"&isup1="+$("#saveFullPath").val()+"&onlyfname="+$("#onlyFileName").val(),
			dataType: 'json',
			async:false,
			success: function(response){
				window.location.href="${pageContext.request.contextPath}/masters/member/callfile/nnhWwT56mPk63WySrmK58Q==/0/-1/"+'${member_id}';
			}
		});
	$('#page-wrapper').removeClass('page-loading');
},10);
	}else{
		alert("Please select call file !!");
	}
	
			
		}
	

function cancelmembers(){
	window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/0/-1/0";
}


  
</script>
</body>
</html>