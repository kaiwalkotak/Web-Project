<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<html class="no-js" lang="en"> 

  <head>
        <meta charset="utf-8">

        <title>Karma Suites - Login</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.jpg">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr.min.js"></script>
    </head>
   
    <body>
    	<div id="page-wrapper">
            <!-- Preloader -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Karma</strong> Suites</h1>
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
                    <!-- Header -->
               
                 <jsp:include page="HeadPanel.jsp"></jsp:include>

                     <!-- Page content -->
                    <div id="page-content">
                        <!-- Datatables Header -->
                        <div class="content-header">
                            <div class="header-section">
                                <h1>
                                     <i class="gi gi-comments sidebar-nav-icon"></i>Employee
                                </h1>
                            </div>
                            
                        </div>
                        
                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
					       ${successMsg}
					    </div>
                        
                        <!-- Datatables Content -->
                        <div class="block full  mainclass">
                          
                            <div class="block-title">
                                <h2><strong>Employee </strong></h2>
                                 <div class="block-options pull-right">
                                    <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" onclick="newForm()">Create</a>
                                    <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                </div>
                            </div>
                              

                            <div class="table-responsive">
                                <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                    
                                    <thead>
										 
										 <tr class="tr1">
											<th class="text-center thead-blue sorting_disabled">No.</th>
											<c:forEach var="tableHeader" items="${datatableHeader}" varStatus="loopCount">
												<c:if test="${loopCount.index ne 0}"><th class="text-center thead-blue sorting_disabled">${fn:toUpperCase(tableHeader)}</th></c:if>
											</c:forEach>
											<th class="text-center thead-blue sorting_disabled">Action</th>
										</tr>
									</thead>
                                   
                                    
                                    <tbody>
										<c:forEach var="tableDetails" items="${dataTableList}" varStatus="cnt">
						                    <tr id="mainPrdTr_${tableDetails[0]}">
						                    	<td>${cnt.index+1}</td>
						                        <%-- <c:forEach begin="0" end="${fn:length(tableDetails)-1}" varStatus="dataIndex">
						                        	<c:if test="${dataIndex.index ne 0}"><td>${fn:toUpperCase(tableDetails[dataIndex.index])}</td></c:if>
						                        	
						                        </c:forEach> --%>
						                        <c:forEach begin="0" end="${fn:length(tableDetails)-1}" varStatus="dataIndex">
						                        	<c:choose>
						                        		<c:when test="${dataIndex.index eq imageIndex}">
						                        			<c:if test="${dataIndex.index ne 0}">
						                        			<td>
						                        			<a href="${pageContext.request.contextPath}/resources/${tableDetails[dataIndex.index]}" data-toggle="lightbox-image">
						                        			<img class="img-responsive center-block" alt="" style="max-width: 110px;" src="${pageContext.request.contextPath}/resources/${tableDetails[dataIndex.index]}" />
						                        			</td>
						                        			</c:if>
						                        		</c:when>
						                        		<c:otherwise>
					                        				<c:if test="${dataIndex.index ne 0}"><td>${fn:toUpperCase(tableDetails[dataIndex.index])}</td></c:if> 
					                        			</c:otherwise>
					                        		</c:choose>
					                        		
						                        </c:forEach>
												<td>
													<button type="button" id="prd_${tableDetails[0]}" class="btn btn-warning"  onclick="createNewProduct(this.id)" ><i class="fa fa-pencil"></i></button>
													<button type="button" id="prd1_${tableDetails[0]}" class="btn btn-danger" onclick="deleteProduct(this.id)" ><i class="fa fa-trash"></i></button>
												</td>
						                      </tr>
				                    	</c:forEach>
										
										  
									</tbody>
                                    
                                </table>
                            </div>
                        </div>
                        <!-- END Datatables Content -->
                        
                        <div class="block full subclass" style="display: none;">
                        
                        			
                                    <!-- Dropzone Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                           <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" onclick="saveProduct()">Save</a>
                                    	   <a class="btn btn-alt btn-sm btn-primary" data-toggle="tooltip" title="Cancel" onclick="cancelForm()"><i class="fa fa-times"></i></a>
                                        </div>
                                        <h2><strong>Add </strong>Employee</h2>
                                    </div>
                                    
                                    <form:form id="addProductForm" modelAttribute="addProuct" method="POST" class="form-horizontal form-bordered">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                            	<label for="example-nf-password">Employee Code</label>
                                            	<input type="text" id="emp_cd" name="emp_cd" class="form-control" placeholder="Employee Code">
                                            	<input type="hidden" id="emp_id" name="emp_id" value="0">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-12">
	                                            <label for="example-nf-password">Employee Name</label>
	                                            <input type="text" id="emp_name" name="emp_name" class="form-control" placeholder="Employee Name">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group">
                                            <div class="col-md-12">
	                                            <label for="example-nf-password">Branch Name</label>
	                                            <select id="branch" name="branch" class="form-control" size="1">
	                                                <option data-cc="0">--Select Branch--</option>
											        <c:forEach var="branchList" items="${branchList}" varStatus="cnt">
											            <option data-cc="${branchList[0]}" >${branchList[1]}</option>
											        </c:forEach>
                                            	</select>
                                            	<input type="hidden" name="branch_id" id="branch_id">
                                            	 <input type="hidden" value="" id="itemimage" name="itemimage">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                             <div class="col-md-12">
                                             	<label for="example-nf-password">Address</label>
                                             	<textarea id="address" name="address" rows="1" class="form-control" placeholder="Address...""></textarea>
                                        	</div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-12">
	                                            <label for="example-nf-password">Mobile No</label>
	                                            <input type="text" id="mob_no" name="mob_no" class="form-control" placeholder="Mobile No">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-12">
	                                            <label for="example-nf-password">Email Id</label>
	                                            <input type="text" id="email_id" name="email_id" class="form-control" placeholder="Email Id">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-12">
	                                            <label for="example-nf-password">Salary</label>
	                                            <input type="text" id="salary" name="salary" class="form-control" placeholder="Salary">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-md-12">
	                                            <label for="example-nf-password">Upload Photo</label>
	                                            <%@include file="uploadDocument.jsp"%>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group form-actions" style="text-align: center;">
                                              <a href="#" class="btn btn-primary" onclick="saveProduct()"><i class="fa fa-check"></i> Save</a>
                                        </div>
                                        
                                        </form:form>
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
<script type="text/javascript">
function cancelForm(){
	$(".mainclass").show();
	$(".subclass").hide();
	
}

if('${successMsg}' != "-1"){
	setTimeout(function(){ $("#alertDiv").fadeOut(); }, 2000);
}

function newForm(){
	$(".mainclass").hide();
	$(".subclass").show(); 
	
	$("#emp_cd").val("");
	$("#emp_name").val("");
	$("#address").val("");
	$("#email_id").val("");
	$("#mob_no").val("");
	$("#salary").val("0");
	$("#branch_id").val("0");
	$("#branch").val("--Select Branch--");
	$("#emp_id").val("0");
	$("#itemimage").val("");
	
}

function createNewProduct(id){
	$(".mainclass").hide();
	$(".subclass").show();
	if(id!="0"){
	 $.ajax({
   			type:"POST",
   			url:"${pageContext.servletContext.contextPath}/masters/getEmployee",
   			data:$("#addProductForm").serialize()+"&mainPrdId="+id.split("_")[1],
   			dataType: 'json',
   			async:false,
   			success: function(response){
   				$("#emp_cd").focus().val(response.emp_cd);
   				$("#emp_name").val(response.emp_name);
   				$("#address").val(response.address);
   				$("#mob_no").val(response.mob_no);
   				$("#email_id").val(response.email_id);
   				$("#salary").val(response.salary);
   				$("#branch_id").val(response.branch.id);
   				$("#branch").val(response.branch.branch_name);
   				$("#emp_id").val(response.id);
   				$("#itemimage").val(response.imagepath);
   			}
			});
	} 
	
}

function deleteProduct(id){
	$("#top-loading-start").click();
	$.ajax({
		type:"GET",
		url:"${pageContext.servletContext.contextPath}/masters/deleteEmployee",
		data:"&prdId="+id.split("_")[1],
		dataType: 'json',
		async:false,
		success: function(response){
			$('#confirm-model').modal('hide');
			if(response == "false"){
				alertDiv("alert-danger","This Event has some data in system, so you can not delete this event!!");
			}else{
				$("#top-loading-stop").click();
				$("#mainPrdTr_"+id.split("_")[1]).remove();
				alertDiv("alert-success","Event deleted successfully!!");
			}
		}
	});
	
}


function saveProduct(){
	$("#branch_id").val($("#branch option:selected").attr('data-cc'));
	$('#addProductForm').validate().element("#emp_cd");
	$('#addProductForm').validate().element("#emp_name");
	
	$("#top-loading-start").click();
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/masters/addEmployee",
		data:$("#addProductForm").serialize(),
		dataType: 'json',
		async:false,
		success: function(response){
			var image =document.getElementById("docUploadBtn").value;
				if(image != ''){
					uploadDocument(response.split("~")[2]);
				}
				saveDataMsg = response;
			}
	}); 
	
	if(document.getElementById("docUploadBtn").value != ''){
		$.ajax({
   			type:"POST",
   			url:"${pageContext.servletContext.contextPath}/masters/updateImagepath",
   			data:$("#addProductForm").serialize()+"&fileMasterPath="+encodeURIComponent($("#saveFullPath").val())+"&productMasterId="+saveDataMsg.split("~")[2]+"&updateTable=EMPLOYEE",
   			dataType: 'json',
   			async:false,
   			success: function(response){
   				
   			}
			});
	 }
	 if(saveDataMsg.split("~")[0] == "y"){
		 $("#top-loading-stop").click();	
		 var msgText  = $("#prd_id").val() == 0 ? "redirect_success_common" : "redirect_success_common_update";
		//window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/product/148Os0edAeOcY1hytCUyTQ==/1/"+msgText;
		 window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/employeemaster/XYOr+J3V++xqdnTX7hYM6w==/1/"+msgText+"/0";
	}else{
		enableDisableButton("button",true);
		alertDiv("alert-danger",saveDataMsg.split("~")[1]);
	}
	
}

$.validator.addMethod("valueNotEquals", function(value, element, arg){
	  return arg !== value;
	}, "Value must not equal arg."); 

$('#addProductForm').validate({
    errorClass: 'help-block animation-slideDown', // You can change the animation class for a different entrance animation - check animations page
    errorElement: 'div',
    errorPlacement: function(error, e) {
        e.parents('.form-group > div').append(error);
    },
    highlight: function(e) {
        $(e).closest('.form-group').removeClass('has-success has-error').addClass('has-error');
        $(e).closest('.help-block').remove();
    },
    success: function(e) {
        // You can use the following if you would like to highlight with green color the input after successful validation!
        e.closest('.form-group').removeClass('has-success has-error'); // e.closest('.form-group').removeClass('has-success has-error').addClass('has-success');
        e.closest('.help-block').remove();
    },
    rules: {
    	emp_cd: {
            required: true
        },emp_name: {
            required: true
        },branch: {
            valueNotEquals: "--Select Branch--"
        }
    },
    messages: {
    	emp_cd: 'Please enter Employee Code!',
    	emp_name: 'Please enter Employee Name!',
    	branch: {valueNotEquals: 'Please Select Branch!'}
    }
});

</script>
    </body>
</html>