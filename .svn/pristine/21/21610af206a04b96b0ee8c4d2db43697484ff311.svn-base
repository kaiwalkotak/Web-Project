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
				<h2>Contact Us</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Contact
							Us</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- BreadCrumb Ends -->
<section class="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div id="contact-form" class="contact-form">

						<div id="contactform-error-msg"></div>

						<form:form method="post" name="contactform" id="contactform">
							<div class="row">
								<div class="form-group col-xs-12">
									<label>Name:</label> <input type="text" name="full_name"
										class="form-control" id="Name" placeholder="Enter full name"
										required><input type="hidden" id="isActive"
										name="isActive" value="1">
								</div>
								<div class="form-group col-xs-6">
									<label>Email:</label> <input type="email" name="email"
										class="form-control" id="email" placeholder="abc@xyz.com"
										required>
								</div>
								<div class="form-group col-xs-6 col-left-padding">
									<label>Phone Number:</label> <input type="text" name="phone"
										class="form-control" id="phnumber" placeholder="XXXX-XXXXXX"
										required>
								</div>
								<div class="textarea col-xs-12">
									<label>Message:</label>
									<textarea id="message" name="message"
										placeholder="Enter a message" required></textarea>
								</div>
								<div class="col-xs-12">
									<div class="comment-btn">
										<input type="submit" class="btn-blue btn-red" id="submit"
											onclick="submitenquiry()" value="Send Message">
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
				<div class="col-md-4">
					<div class="contact-about footer-margin">
						<div class="about-logo">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/logo.png"
								alt="Image">
						</div>
						<h4>Member Experience Management Center</h4>
						<div class="contact-location">
							<ul>
								<li>1800 258 5584 (Monday to Friday:- 10 AM to 06 PM,
									Saturday:- 10 AM to 2:30 PM)</li>
							</ul>
						</div>
						<h4>You can also Email us at:</h4>
						<div class="contact-location">
							<ul>
								<li><i class="flaticon-mail"></i>
									memberexperience@karmahospitality.in</li>
								<li><i class="flaticon-mail"></i> info@karmahospitality.in</li>
							</ul>
						</div>
						<div class="footer-social-links">
							<ul>
								<li class="social-icon"><a target="_blank"
									href="https://www.facebook.com/Karmasuitesandvillas/?view_public_for=105877917645446"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li class="social-icon"><a target="_blank"
									href="https://www.instagram.com/karmaresortsandhospitality/"><i
										class="fa fa-instagram" aria-hidden="true"></i></a></li>
								<li class="social-icon"><a target="_blank"
									href="https://twitter.com/karmaresortsan1"><i
										class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li class="social-icon"><a target="_blank"
									href="https://www.youtube.com/channel/UCQS4xxeXHvzI_JSuwITO3rQ"><i
										class="fa fa-youtube" aria-hidden="true"></i></a></li>
								<!--	<li class="social-icon"><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Us -->
	<section class="aboutus">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="section-title text-center">
						<h2>KARMA RESORTS & HOSPITALITY LLP</h2>
						<div class="section-icon section-icon-white">
							<i class="flaticon-diamond"></i>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 col-sm-6 col-xs-12">
					<div class="about-item">
						<img
							src="${pageContext.request.contextPath}/resources/website/images/contact-map.png"
							alt="Image">
					</div>
				</div>
			</div>
			<div class="col-xs-12">
				<div class="section-title text-center">
					<h2>KARMA RESORTS & HOSPITALITY LLP</h2>
					<h2>BRANCH OFFICES</h2>
					<div class="section-icon section-icon-white">
						<i class="flaticon-diamond"></i>
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">


						<div class="about-content">
							<h3>
								REGISTERED OFFICE <br>AHMEDABAD
							</h3>
							<p>331, 3rd Floor, Iscon Emporio, Satellite Ahmedabad -
								380015</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>BARODA</h3>
							<p>201, 2nd Floor, Shagun Synergy 2 - Navneet Park, Near SDT
								College, Manisha Crossing, Old Padra Road, Akota, Vadodara -
								39001</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>SURAT</h3>
							<p>Office No. 614, 6th Floor, Luxuria Business Hub, Dumas
								Main Road Surat - 395007</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>BENGALURU</h3>
							<p>SECOND FLOOR, PREMISE NO. 204, GOLD TOWER, RESIDENCY ROAD,
								BENGLURU, Bengaluru (Bangalore) Urban, Karnataka, 560025</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>JAIPUR</h3>
							<p>Office No. 407, Fourth Floor, Big Ben Okay Plus Tower,
								Swej Farm, New Sanganer Road Jaipur - 302019</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>CHENNAI</h3>
							<p>No 62/B, Ormes RD, Kilpauk, Chennai, Tamil Nadu - 600010</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>INDORE</h3>
							<p>303, Satguru Parinay, 3, Indore, Indore, Madhya Pradesh,
								452001</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>ERNAKULAM</h3>
							<p>2ND FLOOR, 36/1552, MES BUILDING, KALOOR, KOCHI,Ernakulam,
								Kerala, 682017</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>HYDERABAD</h3>
							<p>"5TH FLOOR, 1-10-177, VARUN TOWERS, BEGUMPET,HYDERABAD,
								Hyderabad, Telangana, 500016"</p>
						</div>
					</div>
				</div>


			</div>

			<div class="row">
				<!--     <div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>AHMEDABAD </h3>							
							<p>THIRD FLOOR, 331, ISCON EMPORIO, B/S STAR BAZAR, NR. JODHPUR CROSS ROAD, SATELLITE, Ahmedabad, Gujarat, 380015</p>
						</div>
					</div>
				</div> -->

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">

						<div class="about-content">
							<h3>LUCKNOW</h3>
							<p>"4th FLOOR, TC-34 V/2, VIBHUTI KHAND, GOMTI NAGAR,LUCKNOW,
								Lucknow, Uttar Pradesh, 226019"</p>
						</div>
					</div>
				</div>

			</div>




		</div>
	</section>
	<!-- About Us Ends -->

	




	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Back to top start -->
	<div id="back-to-top">
		<a href="#"></a>
	</div>
	<!-- Back to top ends -->


	<jsp:include page="script.jsp"></jsp:include>

	<!-- Load and execute javascript code used only in this page -->
	<script
		src="${pageContext.request.contextPath}/resources/js/pages/tablesDatatables.js"></script>
	<script>
		function submitenquiry() {
			if (document.getElementById("message").value != ''
					& document.getElementById("Name").value != ''
					& document.getElementById("email").value != ''
					& document.getElementById("phnumber").value != ''
					& document.getElementById("email").value != '') {
				$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/enquiry",
							data : $("#contactform").serialize(),
							dataType : 'json',
							async : false,
							success : function(response) {
								if (response == "y") {

									location.reload();
									alert("Your Enquiry is Submited !")
								} else {
									alert("Please Try Again !")
								}
							}
						});
			}
		}
	</script>
</body>

</html>