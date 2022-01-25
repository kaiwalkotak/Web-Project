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
        <jsp:include page="AllJs.jsp"></jsp:include> 
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
                                    <i class="gi gi-user sidebar-nav-icon"></i>Payments
                                </h1>
                            </div>
                            
                        </div>
                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
				       ${successMsg}
				    </div>
                        <!-- Datatables Content -->
                        <div class="block full mainclass">
                          
                            <div class="block-title">
                                <h2><strong>Payments </strong></h2>
                            </div>
                              <script type="text/javascript">$('#page-wrapper').addClass('page-loading');</script>
									
                            <div class="table-responsive">
                                <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="text-center">PAY ID #</th>
                                            <th class="text-center">NAME</th>
                                            <th class="text-center">EMAIL</th>
                                            <th class="text-center">CONTACT</th>
                                            <th class="text-center">METHOD</th>
                                            <th class="text-center">AMOUNT</th>
                                            <th class="text-center">SALES PERSON</th>
                                            <th class="text-center" style="width: 150px;">CREATED DATE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="tableHeader" items="${dataTableList}" varStatus="loopCount">
                                        <tr ondblclick="showmodal(${tableHeader[0]})">
                                            <td class="text-center"><a href="javascript:void(0)">${tableHeader[1]}</a></td>
                                            <td >${tableHeader[2]}</td>
                                            <td class="text-center">${tableHeader[3]}</td>
                                            <td>${tableHeader[4]}</td>
                                            <td>${tableHeader[6]}</td>
                                            <td class="text-center">${tableHeader[5]}</td>
                                            <td class="text-center">${tableHeader[7]}</td>
                                            <td class="text-center">${tableHeader[8]}</td>
                                            <!-- <td class="text-center">
                                                <div class="btn-group">
                                                    <a href="javascript:void(0)" data-toggle="tooltip" title="Files" class="btn btn-sm btn-default">Files</a>
                                                </div>
                                            </td> -->
                                             <!--  <td class="text-center">  <label class="switch switch-success"><input type="checkbox"><span></span></label></td> -->
                                        </tr>
                                        </c:forEach>
                                        
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END Datatables Content -->
                        
                        
                                <!-- END Basic Form Elements Block -->
                            </div>
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

        <div id="modal-customer" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog" style="min-width: 80%;">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h3 id="cust-name" class="modal-title"></h3>
                                                </div>
                                                <div class="modal-body">
                                                    <form:form id="addCustomerForm" class="form-horizontal form-bordered">
				                                        <div class="form-group">
				                                            <label class="col-xs-9 control-label" for="">Pay ID # :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="razor_payment_id" name="razor_payment_id" class="form-control" readonly="readonly">
				                                            </div>
				                                        </div>
				                                        <div class="form-group">
				                                            <label class="col-xs-1 control-label" for="">Full Name :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="custname" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Email :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="payemail" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Mobile :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="contact" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                        </div>
				                                        <div class="form-group">
				                                            <label class="col-xs-1 control-label" for="">Amount :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="amount" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Method :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="method" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Sales Person :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="salesexname" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                        </div>
				                                        <div class="form-group">
				                                            <label class="col-xs-1 control-label" for="">Entity :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="entity" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Currency :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="currency" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Card ID :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="card_id" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                        </div>
				                                        <div class="form-group">
				                                            <label class="col-xs-1 control-label" for="">Bank :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="bank" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Status :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="status" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                            <label class="col-xs-1 control-label" for="">Created At :</label>
				                                            <div class="col-xs-3">
				                                                 <input type="text" id="createdat" name="" class="form-control" readonly="readonly">
				                                            </div>
				                                        </div>
														<div class="form-group form-actions">
				                                            <div class="col-xs-9 col-xs-offset-3" style="text-align: right;">
				                                                <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Back To List</button>
				                                            </div>
				                                        </div>
				                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                                <script src="${pageContext.request.contextPath}/resources/js/date-eu.js" type="text/javascript"></script>
<script type="text/javascript">
/* App.datatables();
$('#example-datatable').dataTable({
    //columnDefs: [ { orderable: false, targets: [ 1, 2 ] } ],
    pageLength: 10,
    lengthMenu: [[10, 20, 30, -1], [10, 20, 30, 'All']]
}); */

var TablesDatatables = function() {

    return {
        init: function() {
            /* Initialize Bootstrap Datatables Integration */
            App.datatables();

            /* Initialize Datatables */
            $('#example-datatable').dataTable({
            	"order": [[ 7, "desc" ]],
                columnDefs: [ { orderable: false, targets: 0 },{ 'type': 'date-eu', 'targets': 7 } ],
                pageLength: 10,
                lengthMenu: [[10, 20, 30, -1], [10, 20, 30, 'All']]
            });

            /* Add placeholder attribute to the search input */
            $('.dataTables_filter input').attr('placeholder', 'Search');
        }
    };
}();
function cancelForm(){
	$(".mainclass").show();
	$(".subclass").hide();
	
}
function showmodal(id){
	
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/masters/getcustpaydetails",
		data:$("#addCustomerForm").serialize()+"&custpay="+id,
		dataType: 'json',
		async:false,
		success: function(response){
			$("#razor_payment_id").val(response[1]);$("#custname").val(response[2]);$("#payemail").val(response[3]);
			$("#contact").val(response[4]);$("#amount").val(response[5]);$("#method").val(response[6]);
			$("#salesexname").val(response[7]);$("#entity").val(response[8]);$("#currency").val(response[9]);
			$("#card_id").val(response[10]);$("#bank").val(response[11]);$("#status").val(response[12]);
			$("#createdat").val(response[13]);
			$("#cust-name").html(response[2]);
		}
	});
		$("#modal-customer").modal("show");
		$(".addNewCust").show();
		$(".addUpdateCust").hide();
		
}
function bookingholidays(id){
	window.location.href="${pageContext.request.contextPath}/masters/member/booking/9ClwmrIG1Bx7gZjjkOvWOw==/0/-1/"+id;
}
function newForm(id){
	window.location.href="${pageContext.request.contextPath}/masters/member/newmember/5DnuqFsOKryPMa5olL2yXg==/0/-1/"+id;
}
</script>
        
    </body>
</html>