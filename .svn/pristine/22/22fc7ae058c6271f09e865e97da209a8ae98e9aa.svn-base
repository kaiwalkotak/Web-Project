<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Login | Welcome to Karma Suites</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/website/member-dashboard/images/favicon.png">
    <link href="${pageContext.request.contextPath}/resources/website/member-dashboard/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;family=Roboto:wght@100;300;400;500;700;900&amp;display=swap" rel="stylesheet">
</head>

<body class="h-100 login-bg">
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
									<div class="text-center mb-3">
										<img src="${pageContext.request.contextPath}/resources/website/member-dashboard/images/login-logo.png" alt="" width="150" height="70">
									</div>
                                    <h4 class="text-center mb-4 text-white">Forget Password</h4>
                                    <form:form id="loginform" >
                                    <div class="one">
                                        <div class="form-group">
                                            <label class="mb-1 text-white"><strong>Username:</strong></label>
                                            <input type="email" id="username" name="username" class="form-control" placeholder="Username here..">
                                        </div>
                                        <div class="form-group">
                                            <label class="mb-1 text-white"><strong>Email :</strong></label>
                                            <input type="text" id="email" name="email" class="form-control" placeholder="Your Register Email here..">
                                        </div>
                                       <%--  <div class="form-row d-flex justify-content-between mt-4 mb-2">
                                            <div class="form-group">
                                               <div class="custom-control custom-checkbox ml-1 text-white">
													<input type="checkbox" class="custom-control-input" id="basic_checkbox_1">
													<label class="custom-control-label" for="basic_checkbox_1">Remember my preference</label>
												</div>
                                            </div>
                                            <div class="form-group">
                                                <a class="text-white" href="${pageContext.request.contextPath}/masters/clientdashboard/forgot-password">Forgot Password?</a>
                                            </div>
                                        </div> --%>
                                        <div class="text-center">
                                            <button type="button" class="btn bg-white text-primary btn-block" onclick="checkcustomerlogincrad();">Reset Password</button>
                                        </div>
                                        </div>
                                        <div class="two" style="display: none;">
                                        <label class="mb-1 text-white"><strong>Your Password is Sent To Register Email Address.</strong></label>
                                        <br><br>
                                        <div class="text-center">
                                            <button type="button" class="btn bg-white text-primary btn-block" onclick="ok();">OK !</button>
                                        </div>
                                        </div>
                                   </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="${pageContext.request.contextPath}/resources/website/member-dashboard/vendor/global/global.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/website/member-dashboard/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/member-dashboard/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/member-dashboard/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
<script type="text/javascript">
	function checkcustomerlogincrad(){
		if(validateData('.required-validate','required') == false){
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath}/forgetPasswordCheck",
				data:$("#loginform").serialize(),
				dataType: 'json',
				async:false,
				success: function(res){
					var response = res.split("~")[0]
					if(response == "emailx" || response == "userx"){
						alert("Username or Email incorrect !!");
					}else if(response == "activex"){
						alert("User is de-activeed, please contact at Karma suites !!");
					}else if(response == "true"){
						//alert("Your Password is Sent To Your register Email Address !!");
						sendSMS(res.split("~")[1]);
						$(".one").hide();
						$(".two").show();
					}else{
						alert("Something Went Wrong, Please Try Again !");
					}
				}
			});
		}
		
	}
	function sendSMS(id){
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/WS/sendSMS",
			data:$("#loginform").serialize()+"&templatename=passwordreset"+"&memberId="+id,
			dataType: 'json',
			async:false,
			success: function(response){
			}
		});
	}
	function ok(){
		window.location.href = "${pageContext.request.contextPath}/memberlogin";
	}
</script>
</body>


</html>