<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Weltmeister CRM</title>

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
		</style>

    </head>
  <body class="page-loading">
        <!-- Page Wrapper -->
        <div id="page-wrapper">
        
            <!-- Preloader -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Weltmeister</strong> CRM</h1>
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
                                    <i class="fa fa-tasks"></i>Cars
                                </h1>
                            </div>
                        </div>
                        <!-- END Tasks Header -->
					<div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
				       ${successMsg}
				    </div>
                        <!-- Tasks Row -->
                        <div class="row">
                            <div class="col-sm-12 col-lg-12">
                               <div class="block full">
                                    <!-- Task Lists Title -->
                                    <!-- Newsfeed Title -->
                                    <div class="block-title">
                                        <h2><i class="fa fa-tasks"></i><strong> Car </strong> List</h2>
		                                <div class="block-options pull-right">
		                                    <a href="#add-templatetype" class="btn btn-alt btn-sm btn-primary" data-toggle="tooltip" title="Add New" onclick="newForm()"><i class="fa fa-plus"></i></a>
		                                    <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
		                                    
		                                </div>
                                        
                                    </div>
                                    <!-- END Newsfeed Title -->

                                     <div class="block-content">
                            <!-- Responsive Full Content -->
                            <div class="table-responsive">
                                <table id="example-datatable" class="table table-vcenter table-condensed table-bordered table-hover">
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
						                    <tr id="mainCatTr_${tableDetails[0]}">
						                    	<td>${cnt.index+1}</td>
						                        <c:forEach begin="0" end="${fn:length(tableDetails)-1}" varStatus="dataIndex">
						                        	<c:if test="${dataIndex.index ne 0}"><td>${fn:toUpperCase(tableDetails[dataIndex.index])}</td></c:if> 
						                        </c:forEach>
												<td>
													<button type="button" id="cat2_${tableDetails[0]}" class="btn btn-primary"  onclick="viewCategory(this.id)" ><i class="fa fa-eye"></i></button>							
													<button type="button" id="cat_${tableDetails[0]}" class="btn btn-warning"  onclick="createNewCategory(this.id)" ><i class="fa fa-pencil"></i></button>
													<button type="button" id="cat1_${tableDetails[0]}" class="btn btn-danger" onclick="deleteCategory(this.id)" ><i class="fa fa-trash"></i></button> 
												</td>
						                      </tr>
				                    	</c:forEach>
										
										  
									</tbody>
								</table>
                            </div>
                            <!-- END Responsive Full Content -->
                            </div>
                                </div>
                                <!-- END Task Lists Block -->
                                
                            </div>
                        </div>
                        <!-- END Tasks Row -->
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

        <div id="add-templatetype" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		     <div class="modal-dialog">
		     	<div class="modal-content">
				    <!-- Add Contact Block -->
                                <div class="block" style="margin-bottom: 0px;padding-bottom: 0px;">
                                    <!-- Add Contact Title -->
                                    <div class="block-title">
                                        <h2><i class="fa fa-plus"></i> Add New Car </h2>
                                    </div>
                                    <!-- END Add Contact Title -->

                                    <!-- Add Contact Content -->
                                    <form:form id="addCarForm" modelAttribute="addCar" method="POST" class="form-horizontal form-bordered">
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label" for="add-contact-name">Car Name :</label>
                                            <div class="col-xs-9">
                                                <input type="text" id="carname" name="carname" class="form-control" placeholder="Enter carname">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label" for="chassisno">VIN/Chassis No. :</label>
                                            <div class="col-xs-9">
                                                <input type="text" id="chassisno" name="chassisno" class="form-control" placeholder="Enter VIN/Chassis No.">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label" for="engineno">Engine Number :</label>
                                            <div class="col-xs-9">
                                                <input type="text" id="engineno" name="engineno" class="form-control" placeholder="Enter Engine Number">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label" for="color">Colour :</label>
                                            <div class="col-xs-9">
                                                <input type="text" id="color" name="color" class="form-control" placeholder="Enter Colour">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label" for="makecar">Make :</label>
                                            <div class="col-xs-9">
                                                <input type="text" id="makecar" name="makecar" class="form-control" placeholder="Enter Make">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label" for="modelcar">Model :</label>
                                            <div class="col-xs-9">
                                                <input type="text" id="modelcar" name="modelcar" class="form-control" placeholder="Enter Model">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-3 control-label" for="regocar">REGO :</label>
                                            <div class="col-xs-9">
                                                <input type="text" id="regocar" name="regocar" class="form-control" placeholder="Enter REGO">
                                            </div>
                                        </div>
	                                        <div class="form-group">
	                                            <label class="col-xs-3 control-label" for="notes">Notes :</label>
	                                            <div class="col-xs-9">
	                                                <textarea id="notes" name="notes" rows="3" class="form-control" placeholder="Content.."></textarea>
	                                            </div>
	                                        </div>
										<div class="form-group form-actions">
                                            <div class="col-xs-9 col-xs-offset-3" style="text-align: right;">
                                            	<input type="hidden" value="0" id="cars_id" name="cars_id">
                                                <button data-dismiss="modal" type="submit" class="btn btn-sm btn-danger"><i class="fa fa-times"></i>Close</button>
                                                <button type="button" class="btn btn-sm btn-primary addNew" id="saveCategorybtn" onclick="saveCategory();" style="display: none;"><i class="fa fa-plus"></i> Add</button>
                        						<button type="button" class="btn btn-sm btn-primary addUpdate" id="saveCategorybtn" onclick="saveCategory();" style="display: none;"><i class="fa fa-pencil"></i> Update</button>
                                            </div>
                                        </div>
                                    </form:form>
                                    <!-- END Add Contact Content -->
                                </div>
                                <!-- END Add Contact Block -->
							</div>
						</div>
					</div>
					<!-- END User Settings -->
					<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
<script type="text/javascript">         
App.datatables();
$('#example-datatable').dataTable({
    //columnDefs: [ { orderable: false, targets: [ 1, 2 ] } ],
    pageLength: 10,
    lengthMenu: [[10, 20, 30, -1], [10, 20, 30, 'All']]
});

  function newForm(){
	$('#add-templatetype').modal({
		'show':true
	});
	$(".addNew").show();
	$(".addUpdate").hide();
	
	$("#engineno").val("");
	$("#chassisno").val("");
	$("#color").val("");
	$("#makecar").val("");
	$("#modelcar").val("");
	$("#regocar").val("");
	$("#notes").val("");
	$("#carname").val("");
	$("#cars_id").val("0");
}
  function createNewCategory(id){
		$('#add-templatetype').modal({
			'show':true
		});
		
		$(".addNew").hide();
		$(".addUpdate").show();
		if(id!="0"){
		 $.ajax({
	   			type:"POST",
	   			url:"${pageContext.servletContext.contextPath}/masters/getCarsdetails",
	   			data:$("#addCarForm").serialize()+"&mainCatId="+id.split("_")[1],
	   			dataType: 'json',
	   			async:false,
	   			success: function(response){
	   				
	   				$("#engineno").val(response.engineno);
	   				$("#chassisno").val(response.chassisno);
	   				$("#color").val(response.color);
	   				$("#makecar").val(response.makecar);
	   				$("#modelcar").val(response.modelcar);
	   				$("#regocar").val(response.regocar);
	   				$("#notes").val(response.notes);
	   				$("#cars_id").val(response.id);
	   				
	   				$("#carname").val(response.carname);
	   			}
				});
		} 
		
	}
  function deleteCategory(id){
		$("#top-loading-start").click();
		$.ajax({
			type:"GET",
			url:"${pageContext.servletContext.contextPath}/masters/deleteCars",
			data:"&carId="+id.split("_")[1],
			dataType: 'json',
			async:false,
			success: function(response){
				$('#confirm-model').modal('hide');
				if(response == "false"){
					alertDiv("alert-danger","This car has some data in system, so you can not delete this car !!");
				}else{
					$("#top-loading-stop").click();
					$("#mainCatTr_"+id.split("_")[1]).remove();
					alertDiv("alert-success","Car deleted successfully!!");
				}
			}
		});
		
	}
  function saveCategory(){
		//var isValid = '${isInnerCall}' == "1" ? false : validateCategory();
		$('#addCarForm').validate().element("#chassisno");
		if($("#chassisno").val() != "" && $("#carname").val() != ""){
			$("#top-loading-start").click();
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath}/masters/addCars",
				data:$("#addCarForm").serialize(),
				dataType: 'json',
				async:false,
				success: function(response){
				if(response.split("~")[0] == "y"){
						var msgText  = $("#cars_id").val() == 0 ? "redirect_success_common" : "redirect_success_common_update";
						$("#top-loading-stop").click();			
						window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/cars/LEP6at8N7xdGSS5Ax+wgnA==/1/"+msgText+"/0";
					}else{
						alertDiv("alert-danger",response.split("~")[1]);
					}
				}
			});
		}
		
	}
  $('#addCarForm').validate({
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
	    	chassisno: {
	            required: true
	        }
	    },
	    messages: {
	    	chassisno: 'Please enter chassis no !'
	    }
	});

  if('${successMsg}' != "-1"){
		setTimeout(function(){ $("#alertDiv").fadeOut(); }, 2000);
	}
</script>
</body>
</html>