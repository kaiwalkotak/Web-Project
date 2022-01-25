<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Dashboard | Karma Resorts and Hospitality</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/website/images/logo1.png">
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/website/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--Custom CSS-->
    <link href="${pageContext.request.contextPath}/resources/website/css/style.css" rel="stylesheet" type="text/css">
    <!--Flaticons CSS-->
    <link href="${pageContext.request.contextPath}/resources/website/font/flaticon.css" rel="stylesheet" type="text/css">
    <!--Plugin CSS-->
    <link href="${pageContext.request.contextPath}/resources/website/css/plugin.css" rel="stylesheet" type="text/css">
    <!--Dashboard CSS-->
    <link href="${pageContext.request.contextPath}/resources/website/css/dashboard.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/website/css/icons.css" rel="stylesheet" type="text/css">
    <!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
<body>
    <!-- Preloader -->
    <!-- <div id="preloader">
        <div id="status"></div>
    </div> -->
    <!-- Preloader Ends -->

    <!-- start Container Wrapper -->
    <div id="container-wrapper">
        <!-- Dashboard -->
        <div id="dashboard">

            <!-- Responsive Navigation Trigger -->
            <a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>  

            <!--   <?php include 'dashboard-header.php'; ?>-->
            <div class="dashboard-sticky-nav">
                <div class="content-left pull-left">
                    <a href="dashboard.php"><img src="${pageContext.request.contextPath}/resources/website/images/logo-white.png" alt="logo"></a>
                </div>
                <div class="content-right pull-right">
                    <div class="search-bar">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" id="search" placeholder="Search Now">
                                <a href="#"><span class="search_btn"><i class="fa fa-search" aria-hidden="true"></i></span></a>
                            </div>
                        </form>
                    </div>
                    <div class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            <div class="profile-sec">
                                <div class="dash-image">
                                    <img src="${pageContext.request.contextPath}/resources/website/images/comment.jpg" alt="">
                                </div>
                                <div class="dash-content">
                                    <h4>${sessionBean.cname}</h4>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <c:url var="logoutURL" value="/logout" />
                            <li><a href="${logoutURL}"><i class="sl sl-icon-power"></i>Logout</a></li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            <!-- end deshbord-header -->
            
          <!--  <?php include 'dashboard-sidebar.php'; ?> -->  
             <div class="dashboard-nav">
                <div class="dashboard-nav-inner">
                    <ul>
                        <li class="active"><a href="javascript:void(0)"><i class="sl sl-icon-list"></i>Payment Receipt</a></li>
                    </ul>
                </div>
            </div>
            
            <!-- end dashboard-sidebar -->
            
            <div class="dashboard-content" >
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12" style="border: 2px solid #eceaea;">
                     <form:form id="customer-payform">
                        <div class="dashboard-list-box" >
                            <h4 class="gray">Payment Receipt</h4>
                           
                             <div class="row with-forms" style="margin-top: 2%;">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"> Payment Type:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select id="paymentType" name="paymentType" class="form-control" style="padding: 10px 10px;">
                                        	<option value="K~Karma Hospitality">Karma Hospitality</option>
                                        	<option value="S~Karma Suites and Villas">Karma Suites and Villas</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;">Member Code:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="memberCode" name="memberCode" class="form-control" />
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;">Member Name*:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="memberName" name="memberName" class="form-control required-validate" />
                                    </div>
                                </div>
                            	<div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;">Location*:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="location" name="location" class="form-control required-validate" />
                                    </div>
                                </div>
                            <div class="row with-forms" >
                                    <div class="col-md-2">
                                        <label style="text-align: right;"> Payment Towards:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select id="paymentTowards" name="paymentTowards" class="form-control required-validate" style="padding: 10px 10px;">
                                        	<option value="">-- Select --</option>
                                        	<option value="DP">DP</option>
                                        	<option value="EMI">EMI</option>
                                        	<option value="AMC">AMC</option>
                                        	<option value="Other">Other</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row with-forms" >
                                    <div class="col-md-2">
                                        <label style="text-align: right;"> Payment Mode:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select id="paymentMode" name="paymentMode" class="form-control required-validate" style="padding: 10px 10px;">
                                        	<option value="">-- Select --</option>
                                        	<option value="DP">Cash</option>
                                        	<option value="EMI">Card</option>
                                        	<option value="AMC">Online</option>
                                        	<option value="Other">Other</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="cardNumber" name="cardNumber" class="form-control " placeholder="Payment mode details"/>
                                    </div>
                                </div>
                            <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;">Amount*:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="amount" name="amount" value="0" class="form-control required-validate" />
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;">Mobile No*:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="mobileNo" name="mobileNo" class="form-control required-validate" />
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;">Email Id*:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="emailId" name="emailId" class="form-control required-validate" />
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;">Received By*:</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="receivedBy" name="receivedBy" class="form-control required-validate" />
                                    </div>
                                </div>
                            
                            <div class="col-xs-12" style="text-align: end;">
                                    <div id="paybtnDiv" class="comment-btn" style="margin-bottom: 2%;">
                                        <a href="javascript:void(0);" id="savebtn" onclick="customerpay();" class="btn-blue btn-red"> Pay Now</a>
                                    </div>
                                </div>
                            
                            
                            </div>
                           </form:form>
                </div>
                </div>
            </div>
            <!-- Copyrights -->
            <div class="copyrights">
                <p>Copyright  &copy; 2020 Karma Resorts and Hospitality. All Rights Reserved. Designed By <a href="#" target="_blank">SHREE INFOTECH</a></p>
            </div>
        </div>
        <!-- Dashboard / End -->
    </div>
    <!-- end Container Wrapper -->


    <!-- Back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
    <!-- Back to top ends -->
    
    
<!-- start php include 'dashboard-script.php';  -->
     
     
     <!-- *Scripts* -->
    <script src="${pageContext.request.contextPath}/resources/website/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/preloader.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/canvasjs.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/dashboard-custom.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/jpanelmenu.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/counterup.min.js"></script>
    
        <script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
<!-- end php include 'dashboard-script.php';  -->
    
    
</body>
<script type="text/javascript">
function customerpay(){
	if(validateData('.required-validate','required') == false){
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/savepayreceipt",
			data:$("#customer-payform").serialize(),
			dataType: 'json',
			async:false,
			success: function(response){
				if(response.split("~")[0] == "y"){
					sendSMS(response.split("~")[2]);
					alert("Your data saved successfully !!");
					window.location.href = "${pageContext.request.contextPath}/dashboardpay";
				}else{
					alert("Something went wrong, please try again later !!");
				}
			}
		});
	}
	
}
function sendSMS(id){
	var tempname = ($("#paymentType").val()).split("~")[0] == "K" ? "paymentreceiptresort" : "paymentreceiptsuites";alert(tempname);
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/WS/sendSMS",
		data:$("#customer-payform").serialize()+"&templatename="+tempname+"&recId="+id,
		dataType: 'json',
		async:false,
		success: function(response){
		}
	});
}
</script>
</html>