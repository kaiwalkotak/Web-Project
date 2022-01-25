<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>


<body>

	<!-- Preloader -->
	<div id="preloader">
		<div id="status"></div>
	</div>
	<!-- Preloader Ends -->

	<jsp:include page="header.jsp"></jsp:include>


	<!-- Breadcrumb -->
	<section class="breadcrumb-outer text-center">
		<div class="container">
			<div class="breadcrumb-content">
				<h2>Career</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index" >Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Career
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- BreadCrumb Ends -->

	<%-- <section class="login">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="login-form">
						<form:form id="contactform">
							<div class="row">
								<div class="col-xs-12">
									<div class="form-title">
										<h2>WRITE IN TO US</h2>
										<p>Enter your details to be a member.</p>
									</div>
								</div>
								<div class="form-group col-xs-12">
									<div class="col-xs-6">
										<label> Name <span></span> :
										</label> <input type="text" class="form-control" name="name" id="name"
											placeholder="Enter full name" required>
									</div>

									<div class="col-xs-6">
										<label>Email <span></span> :
										</label> <input type="text" class="form-control" name="email"
											id="email" placeholder="Enter your email-id" required>
									</div>
									<div class="form-group col-xs-12">
										<div class="col-xs-6">
											<label>Phone Number<span></span> :
											</label> <input type="text" class="form-control" name="phoneno"
												id="phoneno" placeholder="Enter Phone No...." required>
										</div>

										<div class="col-xs-6">
											<label for="example-nf-password">Expirience Level</label>
										</div>
										<div class="col-md-6">
										<label for="example-nf-password">Expirience Level</label>
											<select id="exp_lvl" name="exp_lvl" class="form-control"
												data-placeholder="Select " required style="min-width: 20em;">
												<option value="">-- Select --</option>


												<option value="Intern">Intern</option>
												<option value="Early Professional ">Early
													Professional (less than 3 years)</option>
												<option value=" Professional ( 3+ years)">Professional
													( 3+ years)</option>
												<option value="Excecutive">Excecutive</option>

											</select>

										</div>

									</div>

									<div class="form-group col-xs-12">


										<div class="col-xs-12">
											<label>Apply For<span></span> : <select id="intrest"
												name="intrest" class="form-control"
												data-placeholder="Designation" required style="min-width: 20em;">
													<option value="">-- Select Designation --</option>


													<option value="Promoters(Feild Work)">Promoters(Feild
														Work)</option>
													<option value="Tele sales executive">Tele Sales
														Executive</option>
													<option value="Marketing Manager">Marketing
														Manager</option>
													<option value="Sales Excecutive">Sales
														Excecutive(Direct Sales)</option>
													<option value="Sales Manager">Sales Manager</option>
													<option value="Support Staff Opening">Support
														Staff Opening</option>

											</select>
										</div>
									</div>

									<div class="form-group col-xs-12">
										<div class="col-xs-6">
											<label>State <span></span> :
											</label> <input type="text" class="form-control" name="state"
												id="state" placeholder="Enter State" required>
										</div>
										<div class="col-xs-6">
											<label>Resume <span></span> :
											</label><%@include file="uploadDocument.jsp"%>
										</div>

										<div class="col-xs-12">
											<div class="comment-btn">
												<input type="button" class="btn-blue btn-red" id="submit"
													onclick="submitenquiry()" value="Send Message">
											</div>
										</div>
									</div>


								</div>
						</form:form>
					</div>
				</div>

			</div>
		</div>
	</section> --%>
	<section class="login">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="login-form">
						<form id="contactform">
							<div class="row">
								<div class="col-xs-12">
									<div class="form-title">
										<h2>WRITE IN TO US</h2>
										<p>Enter your details to be a member.</p>
									</div>
								</div>
								<div class="form-group col-xs-12">
									<div class="col-xs-6">
										<label>Full Name <span>*</span> :
										</label> <input type="text" class="form-control" name="name" id="name"
											placeholder="Enter full name" required>
									</div>


									<div class="col-xs-6">
										<label>State <span>*</span> :
										</label> <input type="text" class="form-control" name="state"
											id="state" placeholder="State Here.." required>
									</div>

								</div>
								<div class="form-group col-xs-12">

									<div class="col-xs-6">
										<label>Email <span>*</span> :
										</label> <input type="email" class="form-control" name="email"
											id="email" placeholder="Enter Email" required>
									</div>
									<div class="col-xs-6">
										<label>Phone Number <span>*</span> :
										</label> <input type="text" class="form-control" name="phoneno"
											id="phoneno"
											placeholder="Mobile Number Here.(Without Cuntry Code)"
											required>
									</div>

								</div>
								<div class="form-group col-xs-12">
									<div class="col-md-6">
										<label for="example-nf-password">Apply For</label><span></span>
										: <select id="intrest" name="intrest" class="form-control"
											data-placeholder="Designation" required
											style="min-width: 20em;">
											<option value="">-- Select Designation --</option>


											<option value="Promoters(Feild Work)">Promoters(Feild
												Work)</option>
											<option value="Tele sales executive">Tele Sales
												Executive</option>
											<option value="Marketing Manager">Marketing Manager</option>
											<option value="Sales Excecutive">Sales
												Excecutive(Direct Sales)</option>
											<option value="Sales Manager">Sales Manager</option>
											<option value="Support Staff Opening">Support Staff
												Opening</option>

										</select>
									</div>
									<div class="col-xs-6">
										<label for="example-nf-password">Expirience Level</label> <select
											id="exp_lvl" name="exp_lvl" class="form-control"
											data-placeholder="Select " required style="min-width: 20em;">
											<option value="">-- Select --</option>


											<option value="Intern">Intern</option>
											<option value="Early Professional ">Early
												Professional (less than 3 years)</option>
											<option value=" Professional ( 3+ years)">Professional
												( 3+ years)</option>
											<option value="Excecutive">Excecutive</option>

										</select>
									</div>
								</div>

								<div class="form-group col-xs-12">


									<div class="col-xs-6">
										<label>Resume <span></span> :
										</label><%@include file="uploadDocument.jsp"%>
									</div>
								</div>

								<div class="form-group col-xs-12">



									<div class="col-xs-12">
										<div class="comment-btn">
											<input type="submit" class="btn-blue btn-red" id="submit"
												onclick="submitenquiry()" value="Send Message">
										</div>
									</div>
								</div>


							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Back to top start -->
	<div id="back-to-top">
		<a href="#"></a>
	</div>
	<!-- Back to top ends -->

	<jsp:include page="script.jsp"></jsp:include>
	<script>
		/* function agentx() {

			if (0.getElementById("name").value != ''
					& document.getElementById("email").value != ''
					& document.getElementById("phoneno").value != ''
					& document.getElementById("exp_lvl").value != ''
					& document.getElementById("apply_for").value != ''
					& document.getElementById("state").value != ''
					
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/joinus",
							data : $("#contactform").serialize(),
							dataType : 'json',
							async : false,
							success : function(response) {
								if (response == "y") {

									location.reload();
									alert("Your Data is Submited !")
								} else if (response == "n") {
									alert("Please Try Again !")
								} else {
									alert("Server Error-  Try Again !")
								}
							}
						});
			}
		}// close */
		function submitenquiry() {
		

			if ($('#contactform').validate().element("#name")
					& $('#contactform').validate().element("#email")
					& $('#contactform').validate().element("#phoneno")
					& $('#contactform').validate().element("#exp_lvl")
					& $('#contactform').validate().element("#intrest")
					& $('#contactform').validate().element("#state")) {
				

				$("#top-loading-start").click();
				$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/career",
							data : $("#contactform").serialize(),
							dataType : 'json',
							async : false,
							success : function(response) {
								if (response.split("~")[0] == "y") {
									var msgText = $("#bnr_id").val() == 0 ? "redirect_success_common"
											: "redirect_success_common_update";
									if ('${isInnerCall}' == "1") {
										var ulEl = $("#venueEDIT").next()
												.next();
										$(ulEl)
												.append(
														'<li data-cc="'
																+ response
																		.split("~")[2]
																+ '" class="es-visible">'
																+ $(
																		"#venuename")
																		.val()
																+ '</li>');
										$('#general-model').modal('hide');
									} else {
										$("#top-loading-stop").click();
										window.location.href = "${pageContext.request.contextPath}/career";

									}

								} else {
									alertDiv("alert-danger", response
											.split("~")[1]);
								}

								var image = document
										.getElementById("docUploadBtn").value;
								if (image != '') {
									uploadDocument(response.split("~")[2]);
								}
								saveDataMsg = response;

							}
						});

				if (document.getElementById("docUploadBtn").value != '') {
					$
							.ajax({
								type : "POST",
								url : "${pageContext.servletContext.contextPath}/masters/updateImagepath",
								data : $("#addProductForm").serialize()
										+ "&fileMasterPath="
										+ encodeURIComponent($("#saveFullPath")
												.val()) + "&productMasterId="
										+ saveDataMsg.split("~")[2]
										+ "&updateTable=RESUME",
								dataType : 'json',
								async : false,
								success : function(response) {

								}
							});
				}
				if (saveDataMsg.split("~")[0] == "y") {
					$("#top-loading-stop").click();
					var msgText = $("#bnr_id").val() == 0 ? "redirect_success_common"
							: "redirect_success_common_update";
					//window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/product/148Os0edAeOcY1hytCUyTQ==/1/"+msgText;
					window.location.href = "${pageContext.request.contextPath}/career";
					
				} else {
					enableDisableButton("button", true);
					alertDiv("alert-danger", saveDataMsg.split("~")[1]);
				}
			}
		}// close 

		/* function ValidateEmail(input) {
			//alert("In :: function ValidateEmail(input)")
			var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

			if (input.match(validRegex)) {

				document.contactform.email.focus();
				return true;

			} else {
				alert("Invalid email address!");
				document.contactform.email.focus();
				return false;

			}

		}
		function ValidateMobile(input) {
			//alert("In :: function ValidateMobile(input)")
			var validRegex = /^\d{10}$/;

			if (input.match(validRegex)) {

				return true;

			} else {
				alert("Invalid Mobile Number !");
				document.contactform.phnumber.focus();
				return false;

			}

		}*/
		$('#contactform').validate(
				{
					errorClass : 'help-block animation-slideDown', // You can change the animation class for a different entrance animation - check animations page
					errorElement : 'div',
					errorPlacement : function(error, e) {
						e.parents('.form-group > div').append(error);
					},
					highlight : function(e) {
						$(e).closest('.form-group').removeClass(
								'has-success has-error').addClass('has-error');
						$(e).closest('.help-block').remove();
					},
					success : function(e) {
						// You can use the following if you would like to highlight with green color the input after successful validation!
						e.closest('.form-group').removeClass(
								'has-success has-error'); // e.closest('.form-group').removeClass('has-success has-error').addClass('has-success');
						e.closest('.help-block').remove();
					},
					rules : {
						name : {
							required : true
						},
						email : {
							required : true
						},
						phoneno : {
							required : true
						},
						exp_lvl : {
							required : true
						},
						intrest : {
							required : true
						},
						state : {
							required : true
						}
					},
					messages : {
						name : 'Please enter Your Name !'

					}
				});
	</script>

</body>

</html>