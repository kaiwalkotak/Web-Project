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
                                    <i class="gi gi-user sidebar-nav-icon"></i>${sidePanelName eq 'lockdown' ? 'Lockdown ' : 'Member'} Agreement
                                </h1>
                            </div>
                            
                        </div>
                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
				       ${successMsg}
				    </div>
                        <!-- Datatables Content -->
                        <div class="block full mainclass">
                          
                            <div class="block-title">
                                <h2><strong>${sidePanelName eq 'lockdown' ? 'Lockdown ' : 'Member'} Agreement </strong></h2>
                                <div class="block-options pull-right">
                                 <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
                                 	<a href="javascript:void(0)" onclick="generateReport()" id="memberReport" class="btn btn-alt btn-sm btn-primary">Export</a>
                                 </c:if>
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
	
}
function generateReport(){
	var reportId = "${sidePanelName}";
		window.location.href = "${pageContext.servletContext.contextPath}/report/exportreport/"+reportId+"?fromdate=-1&todate=-1";
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
	                { title: "Print","bSortable": false,render: function ( data, type, row ) {
                        if ( type === 'display' ) {
                            return '<i class="hi hi-print" style="color:green;" onclick="generatecard('+data+')"></i>';
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
function generatecard(id){
	window.location.href="${pageContext.request.contextPath}/masters/generatecard/"+id
}
function callmemberdetails(id){
	window.location.href="${pageContext.request.contextPath}/masters/member/viewmember/ClRBDWPeZ13vW9l8qQ9zTw==/0/-1/"+id.split("_")[1];
}
function cancelForm(){
	$(".mainclass").show();
	$(".subclass").hide();
}

function getmemberdata(){
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/masters/getagreements",
		data:$("#member-form").serialize()+"&sidepanel="+"${sidePanelName}",
		dataType: 'json',
		async:false,
		success: function(response){
			dataSet=[];
			var g=1;
			for (var i in response){
				dataSet.push([response[i][0],response[i][1],response[i][2],response[i][3],response[i][4],response[i][5],response[i][8],response[i][0]]);	
				g++;
			}
			lookupBodyDataKM(ColumnData,dataSet); 
		}
	});
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
        
 
    </body>
</html>