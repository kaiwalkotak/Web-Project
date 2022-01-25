<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Karma Suites - PLC Status</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.png">
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
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Karma</strong> Suites</h1>
                <div class="inner">
                    <h3 class="text-light visible-lt-ie10"><strong>Loading..</strong></h3>
                    <div class="preloader-spinner hidden-lt-ie10"></div>
                </div>
            </div>
            <!-- END Preloader -->

            <div id="page-container" class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
                <jsp:include page="SidePanel.jsp"></jsp:include>
                <!-- Main Container -->
                <div id="main-container">
                    
                    <jsp:include page="HeadPanel.jsp"></jsp:include>
                    <!-- Page content -->
                    <div id="page-content">
                        <!-- Forum Header -->
                        <div class="content-header">
                            <div class="header-section">
                                <h1>
                                    <i class="gi gi-user sidebar-nav-icon"></i>PLC Status
                                </h1>
                            </div>
                            
                        </div>
                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
					       ${successMsg}
					    </div>
                        <!-- END Forum Header -->

                        <!-- Forum Block -->
                        <div class="block">
                            <!-- Forum Tabs Title -->
                            <div class="block-title">
                                <ul class="nav nav-tabs" data-toggle="tabs">
                                    <li class="active"><a href="#forum-categories">PLC Status</a></li>
                                    <li></li>
                                    
                                </ul>
                            </div>
                            <!-- END Forum Tabs -->

                            <!-- Tab Content -->
                            <div class="tab-content">
                            	<form:form id="member-form" class="form-horizontal form-bordered">
                                <!-- Forum -->
                                <div class="tab-pane active" id="forum-categories">
                                    <!-- Intro Category -->
                                    <table class="table table-borderless table-striped table-vcenter">
                                        <thead>
                                            <tr>
                                                <th colspan="3">Member Details</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Member Name</strong></a><br>
                                                        ${md.memberName}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="namest" name="namest" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="" >-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.namest == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.namest == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.namest == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Co-applicant Name</strong></a><br>
                                                        ${md.coAppDetails}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="coappnamest" name="coappnamest" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.coappnamest == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.coappnamest == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.coappnamest == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Member Address</strong></a><br>
                                                        ${md.address}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="membeeraddressst" name="membeeraddressst" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.membeeraddressst == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.membeeraddressst == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.membeeraddressst == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Member email ID</strong></a><br>
                                                        ${md.emailId}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="emailidst" name="emailidst" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.emailidst == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.emailidst == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.emailidst == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Member Contact No.</strong></a><br>
                                                        ${md.mobileNo}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="mobilenost" name="mobilenost" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.mobilenost == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.mobilenost == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.mobilenost == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Product Purchased</strong></a><br>
                                                        ${md.productName}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="productpurchase" name="productpurchase" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.productpurchase == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.productpurchase == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.productpurchase == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Product Price</strong></a><br>
                                                        ${md.sellingprice}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="productprice" name="productprice" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.productprice == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.productprice == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.productprice == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>DP Amount</strong></a><br>
                                                        ${md.dpAmount}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="dpamount" name="dpamount" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.dpamount == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.dpamount == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.dpamount == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>DP Instrument</strong></a><br>
                                                        <c:forEach var="dpList" items="${dpList}" varStatus="pro2">
                                                        ${dpList}
                                                        </c:forEach>
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="dpinstallment" name="dpinstallment" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.dpinstallment == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.dpinstallment == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.dpinstallment == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>EMI Amount</strong></a><br>
                                                        ${md.emIAmount}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="emiamount" name="emiamount" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.emiamount == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.emiamount == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.emiamount == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>EMI Instrument</strong></a><br>
                                                        <c:forEach var="emiList" items="${emiList}" varStatus="pro1">
                                                        ${emiList}
                                                        </c:forEach> 
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="emiinstallment" name="emiinstallment" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.emiinstallment == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.emiinstallment == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.emiinstallment == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Offers</strong></a><br>
                                                        ${md.premiumOption}
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="offers" name="offers" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.offers == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.offers == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.offers == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Reservation Rules</strong></a><br>
                                                        <textarea id="reservation_rule" name="reservation_rule" rows="2" class="form-control" placeholder="Reservation Rule" style="font-size: 15px;">${ps.reservation_rule}</textarea>
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="reservationrules" name="reservationrules" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.reservationrules == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.reservationrules == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.reservationrules == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>MEM Contact Info</strong></a><br>
                                                        <textarea id="mem_cont_info" name="mem_cont_info" rows="2" class="form-control" placeholder="MEM Contact Info" style="font-size: 15px;">${ps.mem_cont_info}</textarea>
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="memcontactinfo" name="memcontactinfo" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Verified" ${ps.memcontactinfo == 'Verified'? 'selected' : ''}>Verified</option>
                                                    <option value="Error" ${ps.memcontactinfo == 'Error'? 'selected' : ''}>Error</option>
                                                    <option value="Rectified" ${ps.memcontactinfo == 'Rectified'? 'selected' : ''}>Rectified</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Remark</strong></a><br>
                                                        
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<textarea id="remarks" name="remarks" rows="2" class="form-control" placeholder="Remarks..." style="font-size: 15px;">${md.remarks}</textarea>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>PLC Status</strong></a><br>
                                                        
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="statusOfPLC" name="statusOfPLC" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="">-- Select Checklist --</option>
                                                    <option value="Cleared" ${md.statusOfPLC == 'Cleared'? 'selected' : ''}>Cleared</option>
                                                    <option value="Failed" ${md.statusOfPLC == 'Failed'? 'selected' : ''}>Failed</option>
                                                    <option value="Cancellation of Membership" ${md.statusOfPLC == 'Cancellation of Membership'? 'selected' : ''}>Cancellation of Membership</option> 
                                                    <option value="Non Contactable" ${md.statusOfPLC == 'Non Contactable'? 'selected' : ''}>Non Contactable</option>
                                                    <option value="Pending" ${md.statusOfPLC == 'Pending'? 'selected' : ''}>Pending</option>
                                                    <option value="Call Back" ${md.statusOfPLC == 'Call Back'? 'selected' : ''}>Call Back</option>
                                                    <option value="PLC Discrepency - Payment Related" ${md.statusOfPLC == 'PLC Discrepency - Payment Related'? 'selected' : ''}>PLC Discrepency - Payment Related</option>
                                                    <option value="PLC Discrepency - Product Related" ${md.statusOfPLC == 'PLC Discrepency - Product Related'? 'selected' : ''}>PLC Discrepency - Product Related</option>
                                                    <option value="PLC Discrepency - Product (ASF) Related" ${md.statusOfPLC == 'PLC Discrepency - Product (ASF) Related'? 'selected' : ''}>PLC Discrepency - Product (ASF) Related</option>
                                                    <option value="PLC Discrepency - Offer Related" ${md.statusOfPLC == 'PLC Discrepency - Offer Related'? 'selected' : ''}>PLC Discrepency - Offer Related</option>
                                                    <option value="PLC Discrepency - Holiday Related" ${md.statusOfPLC == 'PLC Discrepency - Holiday Related'? 'selected' : ''}>PLC Discrepency - Holiday Related</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>PLC Call Back Date</strong></a><br>
                                                        
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<div class="input-group input-daterange col-md-6" data-date-format="dd/mm/yyyy">
                                                     <c:set var = "datestr" value = "${fn:split(ps.callbackdate, '-')}" />
                                                     <c:set var = "extradata" value = "${member_id eq '0' ? '' : ps.callbackdate eq null ? '' : '/'}" />
                                                         <input type="text" style="font-size: 15px;" id="callbackdate" name="callbackdate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Call Back Date" autocomplete="off">
                                                         <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                     </div> 
                                                      <!-- <input type="datetime-local" id="demo" name="demo">  --> 
                                                     <!-- <input type="text" name="funcend" value="" id="funcend" class="span2 default_datetimepicker1" /> --> 
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>PLC Initiated Date</strong></a><br>
                                                         
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<div class="input-group input-daterange col-md-6" data-date-format="dd/mm/yyyy">
                                                     <%-- <c:set var = "datestr1" value = "${fn:substring(ps.plcinitiateddate,0,10)}" /> --%>
                                                     <c:set var = "datestr" value = "${fn:split(ps.plcinitiateddate, '-')}" />
                                                     <c:set var = "extradata" value = "${member_id eq '0' ? '' : ps.plcinitiateddate eq null ? '' : '/'}" />
                                                         <input type="datetime"  style="font-size: 15px;" id="plcinitiateddate" name="plcinitiateddate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="PLC Initiated Date" autocomplete="off" readonly="readonly" disabled="disabled">
                                                         <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                     </div> 
                                                      <!-- <input type="datetime-local">  -->
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>PLC Completion Date</strong></a><br>
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<div class="input-group input-daterange col-md-6" data-date-format="dd/mm/yyyy">
                                                     <c:set var = "datestr" value = "${fn:split(ps.plccompleteddate, '-')}" />
                                                     <c:set var = "extradata" value = "${member_id eq '0' ? '' : ps.plccompleteddate eq null ? '' : '/'}" />
                                                         <input type="text"  style="font-size: 15px;" id="plccompleteddate" name="plccompleteddate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="PLC Completion Date" autocomplete="off" readonly="readonly" disabled="disabled">
                                                         <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                     </div>
                                                     
                                                </td>
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- END Intro Category -->

                                    <!-- END Support Category -->
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-3">
                                      
                                    </div>
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-4">
                                    	
                                    </div>
                                    <div class="col-md-2">
                                    	<%-- <input type="hidden" id="docUploadPathNew" name="docUploadPathNew" value="${docUploadPathNew}" >
										<input type="hidden" id="savePathNew" name="savePathNew" value="${savePathNew}">
										<input type="hidden" id="saveFullPathNew" name="saveFullPathNew" value="" >
										<input type="hidden" id="saveFilename" name="saveFilename" value="" >
                                    	<input type="hidden" name="encmemberId" id="encmemberId" value="${encmember_id}"> --%>
                                    	<input type="hidden" name="memberId" id="memberId" value="${member_id}">
                                    	<input type="hidden" name="plc_id" id="plc_id" value="${ps.plc_id gt '0' ? ps.plc_id : ps.plc_id ne null ? ps.plc_id : '0'}">
                                    	<button type="button" class="btn btn-sm btn-info" id="savebtn" onclick="saveplcmember()">${ps.plc_id gt 0 ? 'UPDATE' : 'SAVE' }</button>
                                    	<button type="button" class="btn btn-sm btn-default" onclick="cancelplcmember()">CANCEL</button>
                                     
                                    </div>
                                </div>
                                
                                <!-- END Forum -->
								</form:form>
                                <!-- END Discussion -->
                            </div>
                            <!-- END Tab Content -->
                        </div>
                        <!-- END Forum Block -->
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
						
	<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
	 <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.datetimepicker.js"></script> --%>
	 <script type="text/javascript" >
	 /* $(function() {
			$( "#funcend" ).datepicker({ dateFormat: "dd-mm-yy" });
			var dateFormat = $( "#funcend" ).datepicker( "option", "dateFormat" );
			$( "#funcend" ).datepicker( "option", "dateFormat", "dd.mm.yy" );
			
			$('.default_datetimepicker1').datetimepicker({
				timepicker:true,
				formatDate:	'd.m.Y',
				formatTime:	'h:i A',
				format:'d.m.Y h:i A',
				closeOnDateSelect:true,
				scrollInput : false
			});
			

	}); */
	function saveplcmember(){
		if($("#statusOfPLC").val() != ""){
			var a = 0;
			if($("#statusOfPLC").val()=="Call Back"){
				if($("#callbackdate").val()==""){
					a = 1;
				}
			}
			if(a==0){
				$("#plcinitiateddate").removeAttr('disabled');
				$.ajax({
					type:"POST",
					url:"${pageContext.servletContext.contextPath}/masters/saveplcmember",
					data:$("#member-form").serialize(),
					dataType: 'json',
					async:false,
					success: function(response){
						if(response.split("~")[0] == "y"){
							var msgText  = $("#cat_id").val() == 0 ? "redirect_success_common" : "redirect_success_common_update";
							if('${isInnerCall}' == "1"){
								var ulEl = $("#venueEDIT").next().next();
								$(ulEl).append('<li data-cc="'+response.split("~")[2]+'" class="es-visible">'+$("#venuename").val()+'</li>');
								$('#general-model').modal('hide');
							}else{
								$("#top-loading-stop").click();			
								window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/plcmembers/X6qqgKmWz+ollIIF4yTCAg==/1/"+msgText+"/0";
										 
							}
							
						}else{
							alertDiv("alert-danger",response.split("~")[1]);
						}
					}
				});
			}else{
				alert("Please select Call Back date !!");
			}
		}else{
			alert("Please select PLC Status !!");
		}
	}
	
	function cancelplcmember(){
		window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/plcmembers/X6qqgKmWz+ollIIF4yTCAg==/0/-1/0";
	}
	 
	 </script>
    </body>
</html>