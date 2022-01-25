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
    <title>Reset Password | Welcome to Karma Suites</title>
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
                                    <h4 class="text-center mb-4 text-white">Reset Password</h4>
                                    <form:form id="customer-changepass" >
                                        <div class="form-group">
                                            <label class="mb-1 text-white"><strong>Old Password:</strong></label>
                                            <input type="password" id="o_pass" name="o_pass" class="form-control required-validate" placeholder="current password">
                                        </div>
                                        <div class="form-group">
                                            <label class="mb-1 text-white"><strong>New Password:</strong></label>
                                            <input type="password" class="form-control required-validate" id="n_pass" name="n_pass" placeholder="Enter new password">
                                        </div>
                                        <div class="form-group">
                                            <label class="mb-1 text-white"><strong>New confirm Password:</strong></label>
                                            <input type="password" class="form-control required-validate" id="nc_pass" name="nc_pass" placeholder="Enter confirm password">
                                        </div>
                                        <div class="text-center">
                                            <button type="button" class="btn bg-white text-primary btn-block" onclick="changepassword();">Change Password</button>
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
function changepassword(){
	if(validateData('.required-validate','required') == false){
		if($("#n_pass").val() == $("#nc_pass").val()){
			if($("#o_pass").val() == '${sessionBean.ccode}'){
				$.ajax({
					type:"POST",
					url:"${pageContext.servletContext.contextPath}/masters/changepassword",
					data:$("#customer-changepass").serialize()+"&memid="+'${sessionBean.cid}'+"&isreset=1",
					dataType: 'json',
					async:false,
					success: function(response){
						if(response == "true"){
							alert("Password has been changed successfully !!");
							window.location.href = "${pageContext.request.contextPath}/memberlogin";
						}else{ 
							alert("Please try again later !!");
						}
					}
				});
			}else{
				alert("Old password does not match !!");
			}
			
		}else{
			$("#nc_pass").after('<span class="error_required" style="color:red;">Password and confirm password must be same.</span>');
		}
		
	}
	
}
</script>
</body>


</html>