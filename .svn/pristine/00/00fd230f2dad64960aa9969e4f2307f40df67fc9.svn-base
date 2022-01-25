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

        <title>Karma Suites - Members</title>

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
                <h1 class="push-top-bottom text-light text-center"><strong>Member </strong> loading ...</h1>
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
                                    <i class="gi gi-user sidebar-nav-icon"></i>Members
                                </h1>
                            </div>
                            
                        </div>
                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
				       ${successMsg}
				    </div>
                        <!-- Datatables Content -->
                        <div class="block full mainclass">
                          
                            <div class="block-title">
                                <h2><strong>Members </strong></h2>
                                 <div class="block-options pull-right">
                                 <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
                                 	<a href="javascript:void(0)" onclick="openreport(this.id)" id="memberReport" class="btn btn-alt btn-sm btn-primary">Export Members</a>
                                 	<a href="javascript:void(0)" onclick="openreport(this.id)" id="emiReport" class="btn btn-alt btn-sm btn-primary">Export EMI</a>
                                 	<a href="javascript:void(0)" onclick="openreport(this.id)" id="asfReport" class="btn btn-alt btn-sm btn-primary">Export ASF</a>
                                 	<a href="javascript:void(0)" onclick="openreport(this.id)" id="resReport" class="btn btn-alt btn-sm btn-primary">Export Reservation</a>
                                 </c:if>
                                    <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" onclick="newForm(0)">Create</a>
                                    <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                </div>
                            </div>
                             <script type="text/javascript">$('#page-wrapper').addClass('page-loading');</script>
							<form:form id="member-form">	
                            <div class="table-responsive">
                                <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                    
                                </table>
                            </div>
                            </form:form>
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

       <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/full_numbers_no_ellipses.js"></script>
<script type="text/javascript">
function openreport(id){
	$("#reportId").val(id);
	$("#reports-member").modal('show');
	if(id == "emiReport"){
		$("#status-div").show();
	}else{
		$("#status-div").hide();
	}
}
var dataSet = [];
var ColumnData=[{"targets": [0], "visible": false,"searchable": false },
				{ title: "MEMBER",render: function ( data, type, row ) {
                    if ( type === 'display' ) {
                        return '<a href="javascript:void(0);" onclick=callmemberdetails(this.id)>'+data+'</a>';
                    }
                    return data;
                },"orderDataType": "dom-checkbox"},
	                { title: "NAME"},
	                { title: "MOBILE"},
	                { title: "EMAIL"},
	                { title: "PRODUCT"},
	                { title: "CRE.DATE"},
	                { title: "CALL FILE","bSortable": false,render: function ( data, type, row ) {
                        if ( type === 'display' ) {
                            return '<a href="javascript:void(0)" data-toggle="tooltip" title="Call File" onclick="addcallfile('+data+')" class="btn btn-sm btn-primary">Call File</a>';
                        }
                        return data;
                    },"orderDataType": "dom-checkbox"},
	                { title: "BOOKING","bSortable": false,render: function ( data, type, row ) {
                        if ( type === 'display' ) {
                            return '<a href="javascript:void(0)" data-toggle="tooltip" title="Book" onclick="bookingholidays('+data+')" class="btn btn-sm btn-primary">Book</a>';
                        }
                        return data;
                    },"orderDataType": "dom-checkbox"},
                    { title: "APPROVE","bSortable": false,render: function ( data, type, row ) {
                        if ( type === 'display' ) {
                        	if(data.split("_")[0] == '0')
                        		return '<div class="btn-group"><a href="javascript:void(0)" data-toggle="tooltip" onclick="approvemember(this.id,0)" title="Approve Now" class="btn btn-sm btn-danger"><i class="gi gi-ban" style="color:white;"></i></a></div>';
                        	else
                        		return '<span class="label label-success">Approve</span>';
                            
                        }
                        return data;
                    },"orderDataType": "dom-checkbox"},
                    { title: "ACTION","bSortable": false,render: function ( data, type, row ) {
                        if ( type === 'display' ) {
                        	if("${sessionBeanF.role.rname}" == 'ADMIN'){
                        		return '<div class="btn-group"><a href="javascript:void(0)" data-toggle="tooltip" title="Edit" class="btn btn-xs btn-default" onclick="newForm('+(data.split("_")[0])+')"><i class="fa fa-pencil"></i></a><a href="javascript:void(0)" onclick="makeactive('+(data.split("_")[0])+','+(data.split("_")[1] == '1' ? '0' : '1')+')" data-toggle="tooltip" title="Make '+(data.split("_")[1] == '1' ? ' In' : '')+'active" class="btn btn-xs btn-'+(data.split("_")[1] == '1' ? 'success' : 'danger')+'"><i class="'+(data.split("_")[1] == '1' ? 'gi gi-ok_2' : 'fa fa-times')+'"></i></a></div>';
                        	}else{
                        		return '<div class="btn-group"><a href="javascript:void(0)" data-toggle="tooltip" title="Edit" class="btn btn-xs btn-default" onclick="newForm('+(data.split("_")[0])+')"><i class="fa fa-pencil"></i></a></div>';
                        	}
                            
                        }
                        return data;
                    },"orderDataType": "dom-checkbox"},
                    
                ];
getmemberdata();
var tableKM;
function lookupBodyDataKM(ColumnData,dataSet){
	 tableKM=$('#example-datatable').DataTable({
		 	"iDisplayLength":dataSet.length,
			 data: dataSet,
			 "bDestroy" : true,
			 scrollX:true,
			 autoWidth:false,
			 "bPaginate":true,
		     "sPaginationType":"full_numbers_no_ellipses",
		     'pageLength': 10,
		     scrollCollapse: true,
		     deferRender:    true,
			 "bJQueryUI": true,
			 "bAutoWidth": false,
			 "searching":true,
			 "aaSorting"  : [[ 1, "desc" ]],
		 	'fnCreatedRow': function (nRow, aData, iDataIndex) {
		        $(nRow).attr('id',dataSet[iDataIndex][0]);
		        $(nRow).find("td:eq(0) a").attr("id","cd_"+dataSet[iDataIndex][0]);$(nRow).find("td:eq(0)").css("text-align","center");$(nRow).find("td:eq(6)").css("text-align","center");
		        $(nRow).find("td:eq(8) div a").attr("id","toapp_"+dataSet[iDataIndex][0]+"_"+((dataSet[iDataIndex][9])).split("_")[1]);$(nRow).find("td:eq(8)").css("text-align","center");
		        $(nRow).find("td:eq(8)").attr("id","isapprovetd-"+dataSet[iDataIndex][0]); $(nRow).find("td:eq(9)").attr("id","isactivated-"+dataSet[iDataIndex][0]);$(nRow).find("td:eq(9)").css("text-align","center");
		    }, 
		    "fnInitComplete": function() {
             this.css("visibility", "visible");},
           "bLengthChange": false,
	        columns: ColumnData,
	 } );
	 //searchTableM($("#searchTblKickM").val());
	 
	 /* $('.dataTables_scrollBody').addClass('scroll');
	 $("div.dataTables_scrollHeadInner table.dataTable thead tr").removeAttr("style").css("height","25px"); */

	/*  $("#example-datatable thead tr").on("click", "th", function(event){
	 	columnNo1=$("#example-datatable").dataTable().fnSettings().aaSorting[0][0];
	 	sortOrder1=$("#example-datatable").dataTable().fnSettings().aaSorting[0][1];
	 }); */
}
function callmemberdetails(id){
	window.location.href="${pageContext.request.contextPath}/masters/member/viewmember/ClRBDWPeZ13vW9l8qQ9zTw==/0/-1/"+id.split("_")[1];
}
function cancelForm(){
	$(".mainclass").show();
	$(".subclass").hide();
}
function approvemember(idall,activefield){
	if(idall.split("_")[2] == '1'){
		var id = idall.split("_")[1];
		$('#page-wrapper').addClass('page-loading');
		setTimeout(function () {
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/changememberstatus",
			data:$("#member-form").serialize()+"&memberid="+id+"&whichfield="+(activefield == '0' ? 'status' : 'isActive')+"&fieldvalue="+(activefield == '0' ? '1' : '0'),
			dataType: 'json',
			async:false,
			success: function(response){
				if(response == "true"){
					if(activefield == '0'){
						sendMailnotification(id);
						$("#isapprovetd-"+id).html('<span class="label label-success">Approve</span>');
					}
				}else{ 
					alert("Please try again later !!");
				}
			}
		});
		$('#page-wrapper').removeClass('page-loading');
		},10);
	}else{
		alert("PLC of this member is pending !!");
	}
	
}
function makeactive(idall,isactive){
	$('#page-wrapper').addClass('page-loading');
	setTimeout(function () {
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/masters/changeactiveinactive",
		data:$("#member-form").serialize()+"&memberid="+idall+"&fieldvalue="+isactive,
		dataType: 'json',
		async:false,
		success: function(response){
			if(response == "true"){
				$('#page-wrapper').addClass('page-loading');
				var htmlinner = '';
				if(isactive == '1'){
					htmlinner = '<div class="btn-group"><a href="javascript:void(0)" data-toggle="tooltip" title="" class="btn btn-xs btn-default" onclick="newForm('+idall+')" data-original-title="Edit">'
						 +  '<i class="fa fa-pencil"></i></a><a href="javascript:void(0)" onclick="makeactive('+idall+',0)" data-toggle="tooltip" title="" class="btn btn-xs btn-success" data-original-title="Make  Inactive"><i class="gi gi-ok_2"></i></a></div>';
				}else{
					htmlinner = '<div class="btn-group"><a href="javascript:void(0)" data-toggle="tooltip" title="" class="btn btn-xs btn-default" onclick="newForm('+idall+')" data-original-title="Edit">'
					 +  '<i class="fa fa-pencil"></i></a><a href="javascript:void(0)" onclick="makeactive('+idall+',1)" data-toggle="tooltip" title="" class="btn btn-xs btn-danger" data-original-title="Make active"><i class="fa fa-times"></i></a></div>';
				}
				$("#isactivated-"+idall).html(htmlinner);
				$('#page-wrapper').removeClass('page-loading');
			}else{ 
				alert("Please try again later !!");
			}
		}
	});
	$('#page-wrapper').removeClass('page-loading');
	},10);
}

function getmemberdata(){
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/masters/getmemberdata",
		data:$("#member-form").serialize(),
		dataType: 'json',
		async:false,
		success: function(response){
			dataSet=[];
			var g=1;
			for (var i in response){
				dataSet.push([response[i][0],response[i][1],response[i][2],response[i][3],response[i][4],response[i][5],response[i][8],response[i][0],response[i][0],response[i][9]+"_"+response[i][10],response[i][0]+"_"+response[i][11]]);	
				g++;
			}
			lookupBodyDataKM(ColumnData,dataSet); 
		}
	});
}

function sendMailnotification(id){
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath}/sendEMAIL",
				data:$("#member-form").serialize()+"&template=1"+"&memberId="+id,
				dataType: 'json',
				async:false,
				success: function(response){
				}
			});
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath}/WS/sendSMS",
				data:$("#member-form").serialize()+"&templatename=newloginusernamepassword"+"&memberId="+id,
				dataType: 'json',
				async:false,
				success: function(response){
				}
			});
}

function bookingholidays(id){
	window.location.href="${pageContext.request.contextPath}/masters/member/booking/9ClwmrIG1Bx7gZjjkOvWOw==/0/-1/"+id;
}
function addcallfile(id){
	window.location.href="${pageContext.request.contextPath}/masters/member/callfile/nnhWwT56mPk63WySrmK58Q==/0/-1/"+id;
}
function newForm(id){
	window.location.href="${pageContext.request.contextPath}/masters/member/newmember/5DnuqFsOKryPMa5olL2yXg==/0/-1/"+id;
}
</script>
        <style>
        .dataTables_wrapper .dataTables_paginate{
	display:block;
	padding-top: 1.25px;
	padding: 12px 35px 18px 0;
}
.fg-button {
	  display: block;
	  float: left;
	  text-decoration: none;
	  padding: 6px 11px;
	  margin-right: 6px;
	  border-radius: 3px;
	  border: 1px solid #ddd;
	 
	  cursor: pointer;
	  font-weight: bold;
}

.fg-button:hover {
   background-color: #6ad2eb;
	  color:white;
	  border-color: #1bbae1;
}
.ellipsis{
	display: none;
}
.DataTables_sort_wrapper{
	height: 20px;
}
/* .dataTables_wrapper .dataTables_filter {
    margin-top: -24px;
    margin-right: 45px;
} */
.ui-state-disabled{
	  background-color: #6ad2eb;
	  color:white;
	  border-color: #1bbae1;
}

input[type="search"]{
   padding: 2%;
    border-color: #d4d1d1;    
}
        </style>
        <div id="reports-member" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header text-center">
                        <h2 class="modal-title"><i class="fa fa-pencil"></i> Reports</h2>
                    </div>
                    <!-- END Modal Header -->

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form action="index.html" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
                            <fieldset>
                                <legend>Select Date :</legend>
                                <div class="form-group">
                                                <label class="col-md-4 control-label" for="">Created Date Range</label>
                                                <div class="col-md-4">
                                                        <input type="date" id="member-fromdate" name="member-fromdate" class="form-control text-center" placeholder="From">
                                                 </div>
                                                 <div class="col-md-4">
                                                        <input type="date" id="member-todate" name="member-todate" class="form-control text-center" placeholder="To">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                             <label class="col-md-4 control-label" for="">Sales Branch :</label>
                            				<div class="col-md-6">
                                                <select id="salesBranch" name="salesBranch" class="form-control required-validate" size="1">
                                                    <option value="-1">-- All Branch --</option>
                                                    <c:forEach var="branchList" items="${branchList}">
	                                               		<option value="${branchList[1]}">${branchList[1]}</option>
	                                               	</c:forEach>
                                                </select>
                                            </div>
                                </div>
                                <div class="form-group" id="status-div">
                                             <label class="col-md-4 control-label" for="">Status :</label>
                            				<div class="col-md-6">
                                                <select id="statusop" name="statusop" class="form-control required-validate" size="1">
                                                    <option value="-1">All</option>
	                                               <option value="Pending">Pending</option>
	                                               <option value="RZ">RZ</option>
	                                               <option value="RT">RT</option>
                                                </select>
                                            </div>
                                </div>
                            </fieldset>
                            
                            <div class="form-group form-actions">
                                <div class="col-xs-12 text-right">
                                    <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    <input type="hidden" id="reportId" value="" />
                                    <button type="button" class="btn btn-sm btn-primary" onclick="generateReport()">Export</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- END Modal Body -->
                </div>
            </div>
        </div> 
 
        <script type="text/javascript">
        	function generateReport(){
        		var reportId = $("#reportId").val();
        			window.location.href = "${pageContext.servletContext.contextPath}/report/exportreport/"+reportId+"?fromdate="+($("#member-fromdate").val() != "" ? $("#member-fromdate").val() : "-1")+"&todate="+($("#member-todate").val() != "" ? $("#member-todate").val() : "-1")+"&sb="+$("#salesBranch").val()+"&st="+$("#statusop").val();
        	}
        </script>
        
    </body>
</html>