<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="custheader.jsp"></jsp:include>
</head>
<body>
	<!-- <div id="preloader">
		<div id="status"></div>
	</div> -->

	<!-- start Container Wrapper -->
	<div id="container-wrapper">
		<!-- Dashboard -->
		<div id="dashboard">

			<!-- Responsive Navigation Trigger -->
			<a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>

			<jsp:include page="custhead.jsp"></jsp:include>
            
            <jsp:include page="custside.jsp"></jsp:include>
			
			<!-- 
			<?php include 'dashboard-header.php'; ?>
			<?php include 'dashboard-sidebar.php'; ?>
			-->

			<div class="dashboard-content">
				<div class="row">
				<form:form id="customer-changepass">
					<div class="col-lg-12 col-md-12 col-xs-12"
						style="border: 2px solid #eceaea;">
						<div class="dashboard-list-box">
							<h4 class="gray">Change Password</h4>
							<div class="row with-forms" style="margin-top: 1%;">
								<div class="col-md-3">
									<label style="text-align: right;"> Old Password <b style="color:red;">*</b> :</label>
								</div>
								<div class="col-md-3">
									<input type="password" id="o_pass" name="o_pass" class="form-control required-validate" />
								</div>
							</div>
							<div class="row with-forms" style="margin-top: 1%;">
								<div class="col-md-3">
									<label style="text-align: right;"> New Password <b style="color:red;">*</b> :</label>
								</div>
								<div class="col-md-3">
									<input type="password" id="n_pass" name="n_pass" class="form-control required-validate" />
								</div>
							</div>
							<div class="row with-forms" style="margin-top: 1%;">
								<div class="col-md-3">
									<label style="text-align: right;"> New Confirm Password <b style="color:red;">*</b> :</label>
								</div>
								<div class="col-md-3">
									<input type="password" id="nc_pass" name="nc_pass" class="form-control required-validate" />
								</div>
							</div>
							<div class="col-xs-12" style="text-align: center;">
                                    <div id="paybtnDiv" class="comment-btn" style="margin-bottom: 2%;">
                                        <a href="javascript:void(0);" id="savebtn" onclick="changepassword();" class="btn-blue btn-red"> Change Password</a>
                                    </div>
                                </div>
                            
						</div>
					</div>
					</form:form>
				</div>
			</div>
			<!-- Copyrights -->
			<div class="copyrights">
				<p>
					Copyright &copy; 2020 Karma Resorts and Hospitality. All Rights
					Reserved. Designed By <a href="#" target="_blank">SHREE
						INFOTECH</a>
				</p>
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
 <jsp:include page="custjs.jsp"></jsp:include>
 <script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
</body>
<script type="text/javascript">
	function changepassword(){
		if(validateData('.required-validate','required') == false){
			if($("#n_pass").val() == $("#nc_pass").val()){
				if($("#o_pass").val() == '${payDet[1]}'){
					$.ajax({
						type:"POST",
						url:"${pageContext.servletContext.contextPath}/masters/changepassword",
						data:$("#customer-changepass").serialize()+"&memid="+'${sessionBean.cid}'+"&isreset=0",
						dataType: 'json',
						async:false,
						success: function(response){
							if(response == "true"){
								alert("Password has been changed successfully !!");
								window.location.href = "${pageContext.request.contextPath}/customer-dash/dashboard-changepassword";
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
</html>