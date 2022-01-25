<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

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
				<h2>Join Us</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Join
							Us</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- BreadCrumb Ends -->

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
										<label>First Name <span>*</span> :
										</label> <input type="text" class="form-control" name="f_name"
											id="f_name" placeholder="Enter full name" required>
									</div>
									<div class="col-xs-6">
										<label>Last Name <span>*</span> :
										</label> <input type="text" class="form-control" name="l_name"
											id="l_name" placeholder="Enter full name" required>
									</div>
									<div class="col-xs-12">
										<label>Address <span>*</span> :
										</label> <input type="text" class="form-control" name="addr" id="addr"
											placeholder="Enter Address..." required>
									</div>
								</div>

								<div class="form-group col-xs-12">
									<div class="col-xs-6">
										<label>State <span>*</span> :
										</label> <input type="text" class="form-control" name="state"
											id="state" placeholder="State Here.." required>
									</div>
									<div class="col-xs-6">
										<label>City <span>*</span> :
										</label> <input type="text" class="form-control" name="city" id="city"
											placeholder="City here.." required>
									</div>
									<div class="col-xs-6">
										<label>Postal / Zip Code <span>*</span> :
										</label> <input type="text" class="form-control" name="postal"
											id="postal" placeholder="123456" required>
									</div>
								</div>

								<div class="form-group col-xs-12">
									<div class="col-xs-6">
										<label>Phone Number <span>*</span> :
										</label> <input type="text" class="form-control" name="phnumber"
											id="phnumber"
											placeholder="Mobile Number Here.(Without Cuntry Code)"
											required>
									</div>
									<div class="col-xs-6">
										<label>Email <span>*</span> :
										</label> <input type="email" class="form-control" name="email"
											id="email" placeholder="Enter Email" required>
									</div>

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
		function submitenquiry() {

			if (document.getElementById("f_name").value != ''
					& document.getElementById("l_name").value != ''
					& document.getElementById("addr").value != ''
					& document.getElementById("state").value != ''
					& document.getElementById("city").value != ''
					& document.getElementById("postal").value != ''
					& document.getElementById("phnumber").value != ''
					& document.getElementById("email").value != '') {

				if (ValidateMobile(document.getElementById("phnumber").value)) {
					if (ValidateEmail(document.getElementById("email").value)) {
						$
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
				}

			}
		}

		function ValidateEmail(input) {
			//alert("In :: function ValidateEmail(input)")
			var validRegex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

			if (input.match(validRegex)) {

				return true;

			} else {
				alert("Invalid email address!");

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

		}
	</script>

</body>

</html>