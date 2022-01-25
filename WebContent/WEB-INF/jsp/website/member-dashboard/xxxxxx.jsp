<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html class="no-js" lang="en"> 

  <!-- head tag- A5 -->
<head>
<meta charset="utf-8">

<title>Karma Suites - Member Details</title>

<meta name="description"
	content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0">

<!-- Icons -->
<!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.jpg">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon57.png"
	sizes="57x57">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon72.png"
	sizes="72x72">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon76.png"
	sizes="76x76">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon114.png"
	sizes="114x114">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon120.png"
	sizes="120x120">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon144.png"
	sizes="144x144">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon152.png"
	sizes="152x152">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon180.png"
	sizes="180x180">
<!-- END Icons -->

<!-- Stylesheets -->
<!-- Bootstrap is included in its original form, unaltered -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<!-- Related styles of various icon packs and plugins -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/plugins.css">

<!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">

<!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

<!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themes.css">
<!-- END Stylesheets -->

<!-- Modernizr (browser feature detection library) -->
<script
	src="${pageContext.request.contextPath}/resources/js/vendor/modernizr.min.js"></script>
</head>
   
    <body>
    
    
        <div id="page-wrapper">
            <!-- Preloader -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Pro</strong>UI</h1>
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
                                    <i class="gi gi-user sidebar-nav-icon"></i>Member Details
                                </h1>
                            </div>
                            
                        </div>
                        <ul class="breadcrumb breadcrumb-top">
                            <li>Dashboard </li>
                            <li><a href="">Member Details</a></li>
                        </ul>
                      
                       <!-- Customer Content -->
                        <div class="row">
                            <div class="col-lg-4">
                                <!-- Customer Info Block -->
                                <div class="block">
                                   <div class="block-title" style="color: #fff;">
                                        <div class="block-options pull-right">
                                       	 	<span class="label label-success"><i class="fa fa-check"></i>${md.isActive eq '1' ? 'Active' : 'Inactive'}</span>
                                        	PLC : <span class="label label-primary"><strong>${md.statusOfPLC}</strong></span>
                                            <span class="label label-success"><strong>${md.membercode}</strong></span>
                                        </div>
                                        <h2><i class="fa fa-user"></i> <strong> Member</strong> info</h2>
                                    </div>
                                    <!-- END Products in Cart Title -->

                                    <!-- Customer Info -->
                                    <div class="block-section text-center">
                                        <a href="javascript:void(0)">
                                            <img src="${pageContext.request.contextPath}/resources/img/placeholders/avatars/avatar4@2x.jpg" alt="avatar" class="img-circle">
                                        </a>
                                        <h3>
                                            <strong>${md.preMemberName} ${md.memberName}</strong><br><small></small>
                                        </h3>
                                    </div>
                                    <table class="table table-borderless table-striped table-vcenter">
                                        <tbody>
                                         <tr>
                                            	<td colspan="2" style="text-align: center;padding-bottom: 5%;">
                                            	<button type="button" onclick="changediv(0)" class="btn btn-sm btn-warning">&nbsp;&nbsp;&nbsp;Member Details&nbsp;&nbsp;&nbsp;</button>
                                            	<button type="button" onclick="changediv(1)" class="btn btn-sm btn-info">Member Interaction</button>
                                            	</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right" style="width: 50%;"><strong>Member ID :</strong></td>
                                                <td>${md.membercode}</td>
                                            </tr>
                                            <!-- <tr>
                                                <td class="text-right"><strong>Approve At</strong></td>
                                                <td>November 20, 1984</td>
                                            </tr> -->
                                            <tr>
                                            	<c:set var = "datestr" value = "${fn:split(md.createdAt, '-')}" />
                                                <td class="text-right"><strong>Registration :</strong></td>
                                                <td>${datestr[2]}/${datestr[1]}/${datestr[0]}</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right"><strong>Mobile No :</strong></td>
                                                <td>${md.mobileNo}</td>
                                            </tr>
                                            <%-- <tr>
                                                <td class="text-right"><strong>Alt Mobile No.</strong></td>
                                                <td>${md.altMobileNo}</td>
                                            </tr> --%>
                                             <tr>
                                                <td class="text-right"><strong>Email Id :</strong></td>
                                                <td>${md.emailId}</td>
                                            </tr>
                                              <tr>
                                                <td class="text-right"><strong>Date Of Birth : </strong></td>
                                                <td><c:set var = "datestr" value = "${fn:split(md.doB, '-')}" />
                                                <c:set var = "extradata" value = "${md.doB eq null ? '' :  '/'}" />
                                               ${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</td>
                                            </tr>
                                             <tr>
                                                <td class="text-right"><strong>Member Type :</strong></td>
                                                <td>${md.memberType}</td>
                                            </tr>
                                             <tr>
                                                <td class="text-right"><strong>Product :</strong></td>
                                                <td>${md.product.title}</td>
                                            </tr>
                                           <%--   <tr>
                                                <td class="text-right"><strong>Product Sub Type :</strong></td>
                                                <td>${md.productSubType}</td>
                                            </tr> --%>
                                            <%--  <tr>
                                                <td class="text-right"><strong>Membership Offer:</strong></td>
                                                <td>${md.premiumOption}</td>
                                            </tr> --%>
                                           
                                            <tr>
                                                <td class="text-right"><strong>Membership Price :</strong></td>
                                                <td>${md.sellingprice}</td>
                                            </tr>
                                           <%--   <tr>
                                                <td class="text-right"><strong>Base Price :</strong></td>
                                                <td>${md.basePrice}</td>
                                            </tr> --%>
                                             <tr>
                                                <td class="text-right"><strong>DP Amount :</strong></td>
                                                <td>${alldet[3]}</td>
                                            </tr>
                                             <tr>
                                                <td class="text-right"><strong>Payment Plan :</strong></td>
                                                <td>${md.paymentPlan}</td>
                                            </tr>
                                             <tr>
                                                <td class="text-right"><strong>Tenure :</strong></td>
                                                <td>${md.tenure} Years</td>
                                            </tr>
                                           
                                           <%--  <tr>
                                                <td class="text-right"><strong>Status Of PLC </strong></td>
                                                <td><span class="label label-primary">${md.statusOfPLC}</span></td>
                                            </tr>
                                            <tr>
                                                <td class="text-right"><strong>Status</strong></td>
                                                <td><span class="label label-success"><i class="fa fa-check"></i>${md.isActive eq '1' ? 'Active' : 'Inactive'}</span></td>
                                            </tr> --%>
                                        </tbody>
                                    </table>
                                    <!-- END Customer Info -->
                                </div>
                                <!-- END Customer Info Block -->
                        </div>
                        
                        
                             <div id="details-div" class="col-lg-8">
                                  <!-- Interactive Block -->
                                    <div class="block">
                                        <!-- Interactive Title -->
                                        <div class="block-title">
                                            <!-- Interactive block controls (initialized in js/app.js -> interactiveBlocks()) -->
                                            <div class="block-options pull-right">
                                                <a href="javascript:void(0)" onclick="cancelmember()" class="btn btn-alt btn-sm btn-primary" ><i class="fa fa-times"></i> Cancel</a>
                                            </div>
                                            <h2><i class="fa fa-user"></i> ${md.preMemberName} ${md.memberName} | Util. Nights: ${utiNights}| Bal. Nights: ${remNights} | Pend. Amt : ${pendingamaount} | <span class="label label-danger">Prin.Realized :  <fmt:formatNumber type="number" value="${alldet[4]}" pattern="0.00" maxFractionDigits="2"/> %</span> </h2>
                                        </div>
                                        <!-- END Interactive Title -->
            
                                        <!-- Interactive Content -->
                                        <!-- The content you will put inside div.block-content, will be toggled -->
                                        <div class="block-content">
                                              <!-- Basic Form Elements Content -->
                                    <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
                                        
                                      <div class="row">
                                         <div class="col-lg-6"> 
                                         <!-- Address -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Address :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.address}</p>
                                            </div>
                                        </div>
                                         <!-- Address end -->
                                          <!-- Res City  -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Res City :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.resCity}</p>
                                            </div>
                                        </div>
                                        <!-- Res City  -->
                                         <!-- Res Pin Code -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Res Pin Code :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.pinCode}</p>
                                            </div>
                                        </div>
                                        <!-- Res Pin Code end -->
                                       
                                        <!-- Alt Mobile No. -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Alt Mobile No.</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.altMobileNo}</p>
                                            </div>
                                        </div>
                                        <!-- Alt Mobile No. end -->
                                         <%--  <!-- DOB -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">DOB :</label>
                                            <div class="col-md-8">
                                                <c:set var = "datestr" value = "${fn:split(md.doB, '-')}" />
                                                <c:set var = "extradata" value = "${md.doB eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                        <!-- DOB end--> --%>
                                        <!-- Anniversary Date -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Anniversary Date :</label>
                                            <div class="col-md-8">
                                                <c:set var = "datestr" value = "${fn:split(md.anniversaryDate, '-')}" />
                                                <c:set var = "extradata" value = "${md.anniversaryDate eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                       <!-- Anniversary Date end-->
                                      
                                           <!-- Co App DOB -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Co App DOB :</label>
                                            <div class="col-md-8">
                                                 <c:set var = "datestr" value = "${fn:split(md.coAppDOB, '-')}" />
                                                <c:set var = "extradata" value = "${md.coAppDOB eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                        <!-- Co App DOB end-->
                                          <!-- Co Applicant Details -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Co Applicant Details :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.coAppDetails}</p>
                                            </div>
                                        </div>
                                         <!-- Co Applicant Details end -->
                                        <!--Child DOB -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Child DOB :</label>
                                            <div class="col-md-8">
                                            	<c:set var = "datestr" value = "${fn:split(md.childDOB, '-')}" />
                                                <c:set var = "extradata" value = "${md.childDOB eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                          <!--Child DOB end-->
                                          <!-- Holiday Start Date -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Holiday Start Date :</label>
                                            <div class="col-md-8">
                                            	<c:set var = "datestr" value = "${fn:split(md.startDate, '-')}" />
                                                <c:set var = "extradata" value = "${md.startDate eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                        <!-- Holiday Start Date end -->
                                       
                                   
                                      <!-- Sales Agent end-->
                                     <%--  <!-- Product Sub Type  -->
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Product Sub Type :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.productSubType}</p>
                                            </div>
                                        </div>
                                        <!-- Product Sub Type End --> --%>
                                   <%--    <!-- Base Price -->
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Base Price :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.basePrice}</p>
                                            </div>
                                        </div>
                                       <!-- Base Price end--> --%>
                                        
                                       
                                         <!-- Enrollment Campaign  -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Enrollment Campaign :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.enrollCamp}</p>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Cancallation Reason :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.cancellationReason}</p>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Membership Offer:</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.premiumOption}</p>
                                            </div>
                                        </div>
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Payment Plan :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.paymentPlan}</p>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Product Sub Type :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.productSubType}</p>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">CARD No :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.chequeNo}</p>
                                            </div>
                                        </div>
                                        <!-- Cancellation To Be Posted On End -->
                                        
                                          <!-- requieredment is removed  -->
                                        <%--  <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">DP Discount :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.dpDiscount}</p>
                                            </div>
                                        </div> --%>
                                         <!-- requieredment is removed end -->
                                         
                                        
                                       <%--   <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Utilized Nights :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${utiNights}</p>
                                            </div>
                                        </div> --%>
                                        
                                        <!-- OTHERES No. -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">OTHERES No. :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static"></p>
                                            </div>
                                        </div>
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Receipt No :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.receiptNo}</p>
                                            </div>
                                        </div>
                                     
                                        
                                        <!-- OTHERES No. -->
                                      
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Remarks :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.remarks}</p>
                                            </div>
                                        </div>
                                        
                                      </div>
                                      
                                      <div class="col-lg-6"> 
                                      
                                      <!-- new Add On end  -->
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Approved At :</label>
                                            <div class="col-md-8">
                                                <c:set var = "datestr" value = "${fn:split(md.approvalDate, '-')}" />
                                                <c:set var = "extradata" value = "${md.approvalDate eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div><div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Created At :</label>
                                            <div class="col-md-8">
                                                <c:set var = "datestr" value = "${fn:split(md.createdAt, '-')}" />
                                                <c:set var = "extradata" value = "${md.createdAt eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                           <!-- new Add On end  -->
                                             <!-- Reporting Manager  -->
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Reporting Manager :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.reportingManager}</p>
                                            </div>
                                        </div>
                                          <!-- Reporting Manager end  -->
                                        <!-- TME Name -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">TME Name :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.tmEName}</p>
                                            </div>
                                        </div>
                                        <!-- TME Name. -->
                                        <!-- Sales Agent Name  -->
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Sales Agent Name :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.salesAgentName}</p>
                                            </div>
                                        </div>
                                      <!-- Sales Agent Name End -->
                                      <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Sales Channel :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.salesChannel}</p>
                                            </div>
                                        </div>
                                           
                                         <!-- Sales Branch -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Sales Branch :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.salesBranch}</p>
                                            </div>
                                        </div>
                                         <!-- Sales Branch end -->
                                         <!-- moved here -->
                                           <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">MAF Signed Date :</label>
                                            <div class="col-md-8">
                                            	<c:set var = "datestr" value = "${fn:split(md.mAFSignedDate, '-')}" />
                                                <c:set var = "extradata" value = "${md.mAFSignedDate eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                         <!-- moved here end -->
                                         <!-- Location  -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Location :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.locationname}</p>
                                            </div>
                                        </div>
                                         <!-- Location  -->
                                       
                                       
                                      <!-- Holiday End Date -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Holiday End Date :</label>
                                            <div class="col-md-8">
                                            	<c:set var = "datestr" value = "${fn:split(md.endDate, '-')}" />
                                                	<c:set var = "extradata" value = "${md.endDate eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                        <!-- Holiday End Date end -->
                                         <!-- Enrollment Campaign end -->
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Organization Unit :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.organizationUnit}</p>
                                            </div>
                                        </div>
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Cancellation To Be Posted On :</label>
                                            <div class="col-md-8">
                                            	<c:set var = "datestr" value = "${fn:split(md.cancellationPostedOn, '-')}" />
                                                <c:set var = "extradata" value = "${md.cancellationPostedOn eq null ? '' :  '/'}" />
                                                <p class="form-control-static">${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}</p>
                                            </div>
                                        </div>
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Prin. Realized % :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static"><fmt:formatNumber type="number" value="${alldet[4]}" pattern="0.00" maxFractionDigits="2"/>%</p>
                                            </div>
                                        </div>
                                        
                                      <%-- 
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Payment Plan :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.paymentPlan}</p>
                                            </div>
                                        </div> --%>
                                       
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Payment Mode :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.paymentMode}</p>
                                            </div>
                                        </div>
                                      <%--   <div class="form-g	roup" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Tenure :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.tenure}</p>
                                            </div>
                                        </div> --%>
                                        <!-- ASF -->
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">ASF :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">ASF ${md.asF} Free</p>
                                            </div>
                                        </div>
                                        <!-- ASF -->
                                          <!-- EMI Amount -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">EMI Amount :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.emIAmount}</p>
                                            </div>
                                        </div>
                                           <!-- EMI Amount -->
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Base Price :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.basePrice}</p>
                                            </div>
                                        </div>
                                       
                                      
                                      </div>
                                      
                                      
                                              <div class="col-lg-12"> 
                                                <div class="form-group" style="padding: 20px;">
                                                    <h4 class="txt-dark capitalize-font"><i class="gi gi-credit_card"></i> <strong>KYC's </strong> Info</h4>
                                                    <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                                 </div>
                                                 
                                                   <div class="form-group" style="padding: 1px;">
                                                    <label class="col-md-2 control-label">KYC :</label>
                                                    <div class="col-md-3">
                                                        <p class="form-control-static">${md.kyC}</p>
                                                    </div>
                                                </div>
                                                 <div class="form-group" style="padding: 1px;">
                                                    <label class="col-md-2 control-label">KYC No. : </label>
                                                    <div class="col-md-3">
                                                        <p class="form-control-static">${md.kyCNo}</p>
                                                    </div>
                                                </div>
                                                 <div class="form-group" style="padding: 1px;">
                                                    <label class="col-md-2 control-label">Document :</label>
                                                    <div class="col-md-3">
                                                        <p class="form-control-static"> <a href="javascript:void(0)" onclick="${filename eq '' ? 'downloadDocument(0);' : 'downloadDocument(1);'}" class="btn btn-alt btn-sm btn-primary" style="${filename eq '' ? '' : 'border-color:green;'}"  data-toggle="tooltip" title="KYC document download"><i class="fa fa-download" style="${filename eq '' ? '' : 'color:green;'}"></i></a></p>
                                                    </div>
                                                </div> 
                                              
                                               </div>
                                               </div>
                                            </form>
                                            <!-- END Basic Form Elements Content -->     
                                        </div>
                                    </div>
                                <!-- END Orders Block -->
                                
                                 <!-- Payment Detail -->
                                      <div class="block">
                                        <!-- Interactive Title -->
                                        <div class="block-title">
                                            <!-- Interactive block controls (initialized in js/app.js -> interactiveBlocks()) -->
                                            <div class="block-options pull-right">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-content"><i class="fa fa-arrows-v"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                            </div>
                                            <h2><i class="fa fa-user"></i><strong> Payment details |  </strong> Pending Amount : ${pendingamaount}</h2>
                                        </div>
                                        <!-- END Interactive Title -->
            
                                        <!-- Interactive Content -->
                                        <div class="block-content">
                                             
                                             <!-- Basic Form Elements Content -->
                                    <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
                                        
                                      <div class="row">
                                         <div class="col-lg-6"> 
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Product Price. : </label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.price}</p>
                                            </div>
                                        </div>
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Base Price. : </label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.basePrice}</p>
                                            </div>
                                        </div>
                                     
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">DP Discount :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.dpDiscount}</p>
                                            </div>
                                        </div>
                                      
                                      </div>
                                      
                                      <div class="col-lg-6"> 
                                         <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Membership Price. :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.sellingprice}</p>
                                            </div>
                                        </div>
                                       
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">DP Amount :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${alldet[3]}</p>
                                            </div>
                                        </div>
                                      
                                        <div class="form-group" style="padding: 1px;">
                                            <label class="col-md-4 control-label">Payment Plan :</label>
                                            <div class="col-md-8">
                                                <p class="form-control-static">${md.paymentPlan}</p>
                                            </div>
                                        </div>
                                      
                                      </div>
                                      
                                      <div class="col-lg-12"> 
                                                <div class="form-group" style="padding: 20px;">
                                                    <h4 class="txt-dark capitalize-font"><i class="gi gi-credit_card"></i> <strong>Down Payment </strong> Details </h4>
                                                    <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                                 </div>
                                                 <table id="" class="table table-vcenter table-condensed table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="font-size: 14px;">PAYMENT MODE</th>
                                                        <th class="text-center" style="font-size: 14px;">AMOUNT</th>
                                                        <th class="text-center" style="font-size: 14px;">PAY DETL.</th>
                                                        <th class="text-center" style="font-size: 14px;">DATE</th>
                                                        <th class="text-center" style="font-size: 14px;">REMARKS</th>
                                                        <th class="text-center" style="font-size: 14px;">STATUS</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="emiDetPay" items="${emiDetPay}" >
                                                    <tr>
                                                         <td class="text-center">${emiDetPay[5]}</td>
                                                         <td class="text-center">${emiDetPay[2]}</td>
                                                         <td class="text-center">${emiDetPay[6]}</td>
                                                         <td class="text-center">${emiDetPay[3]}</td>
                                                         <td class="text-center">${emiDetPay[4]}</td>
                                                         <td class="text-center">${emiDetPay[7]}</td>
                                                    </tr>
                                                   </c:forEach>
                                                </tbody>
                                            </table>
                                               </div>
                                      
                                              <div class="col-lg-12"> 
                                                <div class="form-group" style="padding: 20px;">
                                                    <h4 class="txt-dark capitalize-font"><i class="gi gi-credit_card"></i> <strong>EMI </strong> Option </h4>
                                                    <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                                 </div>
                                                 <table id="" class="table table-vcenter table-condensed table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="font-size: 14px;">AMOUNT</th>
                                                        <th class="text-center" style="font-size: 14px;">PAY MODE</th>
                                                        <th class="text-center" style="font-size: 14px;">PAY NUMBER</th>
                                                        <th class="text-center" style="font-size: 14px;">DATE</th>
                                                        <th class="text-center" style="font-size: 14px;">STATUS</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="emiDet" items="${emiDet}" >
                                                    <tr>
                                                         <td class="text-center">${emiDet[2]}</td>
                                                         <td class="text-center">${emiDet[5]}</td>
                                                         <td class="text-center">${emiDet[6]}</td>
                                                         <td class="text-center">${emiDet[3]}</td>
                                                         <td class="text-center">${emiDet[4]}</td>
                                                    </tr>
                                                   </c:forEach>
                                                </tbody>
                                            </table>
                                               </div>
                                               
                                               
                                                <div class="col-lg-12"> 
                                                <div class="form-group" style="padding: 20px;">
                                                    <h4 class="txt-dark capitalize-font"><i class="gi gi-credit_card"></i> <strong>Payment </strong> Receipt </h4>
                                                    <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                                 </div>
                                                 
                                                  <div class="table-responsive" style="padding: 20px;">
                                                        <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th class="text-center" style="font-size: 14px;">RECEIPT NO.</th>
                                                                    <th class="text-center" style="font-size: 14px;">NAME</th>
                                                                    <th style="font-size: 14px;">LOCATION</th>
                                                                    <th style="font-size: 14px;">PAYMENT TO WARDS</th>
                                                                    <th style="font-size: 14px;">PAYMENT MODE</th>
                                                                    <th style="font-size: 14px;">AMOUNT</th>
                                                                    <th style="font-size: 14px;">MOBILE NO.</th>
                                                                    <th style="font-size: 14px;">EMAIL ID</th>
                                                                    <th style="font-size: 14px;">RECEIVED BY</th>
                                                                    <th style="font-size: 14px;">CREATED DATE</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach var="payrecDet" items="${payrecDet}">
                                                                <tr>
                                                                     <td class="text-center">${payrecDet[1]}</td>
                                                                     <td class="text-center">${payrecDet[2]}</td>
                                                                     <td class="text-center">${payrecDet[3]}</td>
                                                                     <td class="text-center">${payrecDet[4]}</td>
                                                                     <td class="text-center">${payrecDet[5]}</td>
                                                                     <td class="text-center">${payrecDet[6]}</td>
                                                                     <td class="text-center">${payrecDet[7]}</td>
                                                                     <td class="text-center">${payrecDet[8]}</td>
                                                                     <td class="text-center">${payrecDet[9]}</td>
                                                                     <td class="text-center">${payrecDet[10]}</td>
                                                                </tr>
                                                                </c:forEach>
                                                            
                                                            </tbody>
                                                        </table>
                                                </div>
                                                <!-- END Datatables Content -->
                                                             
                                                 
                                                 
                                                 
                                               </div>
                                               
                                               
                                               
                                               
                                               
                                               </div>
                                            </form>
                                            <!-- END Basic Form Elements Content --> 
                                                 
                        
                                                 
                                        </div>
                                    </div>
                                <!-- END Payment Detail Block -->
                                
                                <!-- ASF  -->
                                   <div class="block">
                                        <!-- Interactive Title -->
                                        <div class="block-title">
                                            <!-- Interactive block controls (initialized in js/app.js -> interactiveBlocks()) -->
                                            <div class="block-options pull-right">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-content"><i class="fa fa-arrows-v"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                            </div>
                                            <h2><i class="fa fa-user"></i><strong> ASF</strong> Details</h2>
                                        </div>
                                        <!-- END Interactive Title -->
            
                                        <!-- Interactive Content -->
                                        <!-- The content you will put inside div.block-content, will be toggled -->
                                        <div class="block-content">
                                             
                                    <div class="table-responsive">
                                            <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="font-size: 14px;">AMOUNT</th>
                                                        <th class="text-center" style="font-size: 14px;">ASF DATE</th>
                                                        <th class="text-center" style="font-size: 14px;">REC. AMOUNT</th>
                                                        <th class="text-center" style="font-size: 14px;">REC. DATE</th>
                                                        <th class="text-center" style="font-size: 14px;">STATUS</th>
                                                        <th class="text-center" style="font-size: 14px;">CREATED DATE</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<c:forEach var="asfDet" items="${asfDet}" >
                                                    <tr>
                                                         <td class="text-center">${asfDet[2]}</td>
                                                         <td class="text-center">${asfDet[3]}</td>
                                                         <td class="text-center">${asfDet[5]}</td>
                                                         <td class="text-center">${asfDet[6]}</td>
                                                         <td class="text-center">${asfDet[7]}</td>
                                                         <td class="text-center">${asfDet[4]}</td>
                                                    </tr>
                                                   </c:forEach>
                                                    
                                                  
                                                </tbody>
                                            </table>
                                    </div>
                                    <!-- END Datatables Content -->
                                                 
                                        </div>
                                    </div>
                              <!-- ASF End --> 
                                
                                
                                <!-- Reservation  -->
                                <div class="block">
                                        <!-- Interactive Title -->
                                        <div class="block-title">
                                            <!-- Interactive block controls (initialized in js/app.js -> interactiveBlocks()) -->
                                            <div class="block-options pull-right">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-content"><i class="fa fa-arrows-v"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                            </div>
                                            <h2><i class="fa fa-user"></i><strong> Reservation</strong> Details</h2>
                                        </div>
                                        <!-- END Interactive Title -->
            
                                        <!-- Interactive Content -->
                                        <!-- The content you will put inside div.block-content, will be toggled -->
                                        <div class="block-content">
                                             
                                    <div class="table-responsive" >
                                            <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="font-size: 12px;">HOLIDAY BOOKED</th>
			                                            <th class="text-center" style="font-size: 12px;">DURATION</th>
			                                            <th class="text-center" style="font-size: 12px;">PERSON TRAVELLING</th>
			                                            <th class="text-center" style="font-size: 12px;">APP. BOOKED</th>
			                                            <th class="text-center" style="font-size: 12px;">CHECK IN</th>
			                                            <th class="text-center" style="font-size: 12px;">CHECK OUT</th>
			                                            <th class="text-center" style="font-size: 12px;">RES TYPE</th>
			                                            <th class="text-center" style="font-size: 12px;">ACTUALCOST</th>
			                                            <th class="text-center" style="font-size: 12px;">CREATED DATE</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="bookingDet" items="${bookingDet}">
		                                        	<tr>
		                                        		<td>${bookingDet[0]}</td>
		                                        		<td>${bookingDet[1]}</td>
		                                        		<td>${bookingDet[2]}</td>
		                                        		<td>${bookingDet[3]} App</td>
		                                        		<td>${bookingDet[4]}</td>
		                                        		<td>${bookingDet[5]}</td>
		                                        		<td>${bookingDet[6]}</td>
		                                        		<td>${bookingDet[7]}</td>
		                                        		<td>${bookingDet[8]}</td>
		                                        	</tr>
		                                        </c:forEach>
                                                </tbody>
                                            </table>
                                    </div>
                                    <!-- END Datatables Content -->
                                                 
                                        </div>
                                    </div>
                                <!-- END Reservation  Block -->
                                
                                
                                
                                
                              <!-- Courier -->
                                <div class="block">
                                        <!-- Interactive Title -->
                                        <div class="block-title">
                                            <!-- Interactive block controls (initialized in js/app.js -> interactiveBlocks()) -->
                                            <div class="block-options pull-right">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-content"><i class="fa fa-arrows-v"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                            </div>
                                            <h2><i class="fa fa-user"></i><strong> Courier </strong> Details</h2>
                                        </div>
                                        <!-- END Interactive Title -->
            
                                        <!-- Interactive Content -->
                                        <!-- The content you will put inside div.block-content, will be toggled -->
                                        <div class="block-content">
                                             
                                    <div class="table-responsive">
                                            <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="font-size: 14px;">TYPE</th>
                                                        <th class="text-center" style="font-size: 14px;">WELCOME KIT</th>
                                                        <th class="text-center" style="font-size: 14px;">DOCKET NO</th>
                                                        <th class="text-center" style="font-size: 14px;">DATE</th>
                                                        <th class="text-center" style="font-size: 14px;">CREATED DATE</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                         <td class="text-center">${courDet[2]}</td>
                                                         <td class="text-center">${courDet[3]}</td>
                                                         <td class="text-center">${courDet[4]}</td>
                                                         <td class="text-center">${courDet[5]}</td>
                                                         <td class="text-center">${courDet[6]}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                    <!-- END Datatables Content -->
                                                 
                                        </div>
                                    </div>
                                <!-- Courier END-->
                                
                                 <div class="block">
                                        <!-- Interactive Title -->
                                        <div class="block-title">
                                            <!-- Interactive block controls (initialized in js/app.js -> interactiveBlocks()) -->
                                            <div class="block-options pull-right">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-content"><i class="fa fa-arrows-v"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                            </div>
                                            <h2><i class="fa fa-user"></i><strong> ECS </strong> Details</h2>
                                        </div>
                                        <!-- END Interactive Title -->
            
                                        <!-- Interactive Content -->
                                        <!-- The content you will put inside div.block-content, will be toggled -->
                                        <div class="block-content">
                                             
                                    <div class="table-responsive">
                                            <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="font-size: 14px;">REF NO.</th>
                                                        <th class="text-center" style="font-size: 14px;">DATE</th>
                                                        <th class="text-center" style="font-size: 14px;">CREATED DATE</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                         <td class="text-center"></td>
                                                         <td class="text-center"></td>
                                                         <td class="text-center"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                    <!-- END Datatables Content -->
                                                 
                                        </div>
                                    </div>
                                <!-- END Orders Block -->
                                
                               
                              
                           </div>
                           <div id="inter-div" class="col-lg-8" style="display: none;">
                           		<div class="block">
                                        <!-- Interactive Title -->
                                        <div class="block-title">
                                            <!-- Interactive block controls (initialized in js/app.js -> interactiveBlocks()) -->
                                            <div class="block-options pull-right">
                                            	<a href="javascript:void(0)" onclick="addnewticket(-1)" class="btn btn-alt btn-sm btn-primary" ><i class="gi gi-plus"></i> Ticket</a>
                                                <a href="javascript:void(0)" onclick="cancelmember()" class="btn btn-alt btn-sm btn-primary" ><i class="fa fa-times"></i> Cancel</a>
                                            </div>
                                            <h2><i class="fa fa-user"></i> ${md.preMemberName} ${md.memberName} | Util. Nights: ${utiNights}| Bal. Nights: ${remNights} | Pend. Amt : ${pendingamaount} | <span class="label label-danger">Prin.Realized :  <fmt:formatNumber type="number" value="${alldet[4]}" pattern="0.00" maxFractionDigits="2"/> %</span> </h2>
                                        </div>
                                        <div class="block-content">
                                              <!-- Basic Form Elements Content -->
                                    			
            					</div>
                           </div>
                           <form:form id="interaction-form">
                           
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


        
        <!-- Load and execute javascript code used only in this page -->
        <script src="js/pages/tablesDatatables.js"></script>
        <script>$(function(){ TablesDatatables.init(); });</script>
        
        <script type="text/javascript">
        function changediv(id){
        	if(id == "0"){
        		$("#details-div").show();
        		$("#inter-div").hide();
        	}else{
        		$("#inter-div").show();
        		$("#details-div").hide();
        	}
        }
        var ticketcnt = 1;
        function addnewticket(newticketcnt){
        	var innerHtml = '<div class="block">'
	            		  + '<div class="block-title">'
	            		  + '<div class="block-options pull-right"><input type="hidden" value="'+(newticketcnt == "-1" ? 'new_'+newticketcnt : 'old_'+newticketcnt)+'" id="isnewticket_'+ticketcnt+'" name="isnewticket_'+ticketcnt+'" />'
	            		  + '<a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-content"><i class="fa fa-arrows-v"></i></a>'
	            		  + '<a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>'
	            		  + '</div>'
	            		  + '<h2><strong>Ticket</strong> No.</h2>'
	            		  + '</div>'
	            		  + '<div class="block-content">'
	            		  + '<div class="row">'
	            		  + '<div class="form-group">'
	            		  + '<label class="col-md-2 control-label" for="example-text-input" style="margin-top: 5px;">Interaction:</label>'
	            		  + '<div class="col-md-3">'
	            		  + '<select id="interid_'+ticketcnt+'" name="interid_'+ticketcnt+'" class="form-control" size="1" onchange="changeinte(0,this.id)" data-toggle="tooltip" data-placement="top" title="Interaction">'
	            		  + '<option value="">-- Select Interaction --</option>'
                             <c:forEach var="interactionList" items="${interactionList}">
                             + '<option value="${interactionList[0]}">${interactionList[1]}</option>'
                              </c:forEach>
                         + '</select>'
                         + '</div>'
                         + '</div>'
                         + '</div>'
                         + '<div class="row" style="margin-top:1%;">'
                         + '<div class="form-group">'
                         + '<label class="col-md-2 control-label" for="example-text-input" style="margin-top: 5px;">Interaction Type:</label>'
                         + '<div class="col-md-3">'
                         + '<select id="intertypeid_'+ticketcnt+'" name="intertypeid_'+ticketcnt+'" class="form-control" size="1" onchange="changeinte(1,this.id)" data-toggle="tooltip" data-placement="top" title="Interaction type">'
                         + '<option value="">-- Select Interaction --</option>'
                         + '</select>'
                         + '</div>'
                         + '<label class="col-md-3 control-label" for="example-text-input" style="margin-top: 5px;">Interaction Sub Type:</label>'
                         + '<div class="col-md-3">'
                         + '<select id="intertypesubid_'+ticketcnt+'" name="intertypesubid_'+ticketcnt+'" class="form-control" size="1" data-toggle="tooltip" data-placement="top" title="Interaction sub type">'
                         + '<option value="">-- Select Interaction --</option>'
                         + '</select>'
                         + '</div>'
                         + '</div>'
                         + '</div>'
                         + '<div class="row" style="margin-top:1%;">'
                         + '<div class="form-group">'
                         + '<label class="col-md-2 control-label" for="example-text-input" style="margin-top: 5px;">Expected close date:</label>'
                         + '<div class="col-md-3">'
                         + '<div class="input-group input-daterange" data-date-format="dd/mm/yyyy">'
                         + '<input type="text" id="approxresolveddate_'+ticketcnt+'" name="approxresolveddate_'+ticketcnt+'" class="form-control" placeholder="Expected Date" autocomplete="off">'
                         + '<span class="input-group-addon"><i class="gi gi-calendar"></i></span>'
                         + '</div>'
                         + '</div>'
                         + '<label class="col-md-3 control-label" for="example-text-input" style="margin-top: 5px;">Actual close date:</label>'
                         + '<div class="col-md-3">'
                         + '<div class="input-group input-daterange" data-date-format="dd/mm/yyyy">'
                         	
                         + '<input type="text" id="actualresolveddate_'+ticketcnt+'" name="actualresolveddate_'+ticketcnt+'" class="form-control" placeholder="Actual Date" autocomplete="off">'
                         + '<span class="input-group-addon"><i class="gi gi-calendar"></i></span>'
                         + '</div>'
                         + '</div>'
                         + '</div>'
                         + '</div>'
                         + '<div class="row" style="margin-top:1%;">'
                         + '<label class="col-md-2 control-label" for="example-text-input" style="margin-top: 5px;">User Message:</label>'
                         + '<div class="col-md-9">'
                         + '<textarea id="usercomment_'+ticketcnt+'" name="usercomment_'+ticketcnt+'" rows="4" class="form-control" cols=""></textarea>'
                         + '</div>'
                         + '</div>'
                         + '<div class="row" style="margin-top:1%;">'
                         + '<label class="col-md-2 control-label" for="example-text-input" style="margin-top: 5px;">Member Message:</label>'
                         + '<div class="col-md-9">'
                         + '<textarea id="membercomment_'+ticketcnt+'" name="membercomment_'+ticketcnt+'" rows="4" class="form-control" cols=""></textarea>'
                         + '</div>'
                         + '</div>'
                         + '<div class="row" style="margin-top:1%;">'
                         + '<div class="form-group">'
                         + '<label class="col-md-2 control-label" for="example-text-input" style="margin-top: 5px;">Assign To:</label>'
                         + '<div class="col-md-3">'
                         + '<select id="employeeId_'+ticketcnt+'" name="employeeId_'+ticketcnt+'" class="form-control" size="1" data-toggle="tooltip" data-placement="top" title="Interaction">'
                         + '<option value="">-- Assign Employee --</option>'
                         <c:forEach var="empList" items="${empList}">
                         + '<option value="${empList[0]}">${empList[2]} - ${empList[1]}</option>'
                       	 </c:forEach>
                         + '</select>'
                         + '</div>'
                         + '<label class="col-md-3 control-label" for="example-text-input" style="margin-top: 5px;">Status :</label>'
                         + '<div class="col-md-3">'
                         + '<select id="status_'+ticketcnt+'" name="status_'+ticketcnt+'" class="form-control" size="1" data-toggle="tooltip" data-placement="top" title="Interaction">'
                         + '<option value="0">Created</option>'
                         + '<option value="1">In progress</option>'
                         + '<option value="2">Completed</option>'
                         + '</select>'
                         + '</div>'
                         + '</div>'
                         + '</div>'
                         + '<div class="row" style="margin-top:1%;float:right;margin-right:9%;">'
                         + '<div class="form-group">'
                         + '<button type="button" class="btn btn-sm btn-info" onclick="">SAVE</button>'
                         + '</div>'
                         + '</div>'
                         + '</div>'
                         + '<p class="text-muted" style="margin-bottom:4%">&nbsp;</p>'
                         + '</div>'
                         + '<ul class="media-list push">'
                         + '<li class="media">'
                         + '<a href="page_ready_user_profile.html" class="pull-left">'
                         + '<img src="img/placeholders/avatars/avatar15.jpg" alt="Avatar" class="img-circle">'
                         + '</a>'
                         + '<div class="media-body">'
                         + '<a href="page_ready_user_profile.html"><strong>User</strong></a>'
                         + '<span class="text-muted"><small><em>1 hour ago</em></small></span>'
                         + '<p>Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum.</p>'
                         + '</div>'
                         + '</li>'
                         + '<li class="media">'
                         + '<a href="page_ready_user_profile.html" class="pull-left">'
                         + '<img src="img/placeholders/avatars/avatar.jpg" alt="Avatar" class="img-circle">'
                         + '</a>'
                         + '<div class="media-body">'
                         + '<form action="page_ready_user_profile.html" method="post" onsubmit="return false;">'
                         + '<textarea id="profile-newsfeed-comment" name="profile-newsfeed-comment" class="form-control" rows="2" placeholder="Your comment.."></textarea>'
                         + '<button type="submit" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Post Comment</button>'
                         + '</form>'
                         + '</div>'
                         + '</li>'
                         + '</ul>';
                  $("#interaction-form").append(innerHtml);
        }
        function changeinte(where,id){
        	if($("#"+id).val() != ""){
        		var ids = id.split("_")[1];
            	if(where == "0"){
            		$("#intertypeid_"+ids).html('-- Select Interaction --');
            	}else{
            		$("#intertypesubid_"+ids).html('-- Select Interaction --');
            	}
            	$.ajax({
            		type:"POST",
            		url:"${pageContext.servletContext.contextPath}/ticket/getinteractionData",
            		data:$("#interaction-form").serialize()+"&sqlquery="+(where == "0" ? "SELECT intertype_id,typename FROM tbl_interactiontype WHERE interaction_id = "+$("#"+id).val() : "SELECT subtype_id,subtypename FROM tbl_interactionsubtype WHERE intertype_id = "+$("#"+id).val()),
            		dataType: 'json',
            		async:false,
            		success: function(response){
            				var innerHTML = '<option value="">-- Select Interaction --</option>';
    	        			for(var i=0;i<response.length;i++){
    	        				innerHTML = innerHTML + '<option value="'+response[i][0]+'">'+response[i][1]+'</option>';
    	        			}
    	        			$((where == "0" ? "#intertypeid_"+ids : "#intertypesubid_"+ids)).html(innerHTML);
            			}
            	});
        	}
        	
        }
        function cancelmember(){
        	window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/0/-1/0";
        }
        function downloadDocument(isfileexistes){
        	if(isfileexistes == '1')
        		window.location.href = "${pageContext.servletContext.contextPath}/masters/downloadDocument?doctype=KYC"+"&mem_id="+'${member_id}';
        		else
        			alert("Kyc file not found !!");
        	/* $.ajax({
        		type:"GET",
        		url:"${pageContext.servletContext.contextPath}/masters/downloadDocument",
        		data:$("#member-form").serialize()+"&doctype=KYC"+"&mem_id="+'${member_id}',
        		dataType: 'json',
        		async:false,
        		success: function(response){
        			
        			
        			}
        	}); */
        }
        </script>
    </body>
</html>