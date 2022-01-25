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
				<h2>Privacy Policy & Terms of service</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Privacy
							Policy & Terms of service Us</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- BreadCrumb Ends -->

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
			<h3>Karma Resorts and Hospitality- Privacy Policy</h3>
			Your privacy plays an important role for Karma Resorts and
			Hospitality. We believe that customers have the right to know about
			the privacy policy followed by us. Karma Resorts and Hospitality
			understands the value of information that is being collected, used,
			disclosed and stored. <br>The idea of this privacy policy is to
			educate the customers of what personal information is captured and
			used by us. We also assure that your information will never be shared
			with any of the third parties or at the time of registration. <br>
			<br>
			<h4>Collection of Personal Information</h4>
			Personal information is a valid data that is used to identify a
			particular person and contact them. Karma Resorts and Hospitality
			requests its customers to share their personal information directly
			or indirectly through a third party. However, we do not collect any
			type of information without your permission or knowledge. Our Team
			takes reasonable steps to protect the security of your information we
			collect from you. <br> <br>
			<h4>Customers will generally share their personal information in
				the following circumstances:</h4>
			* When you book your tickets or any holiday package through our
			website, then you will be asked for information like email, letter,
			fax or so on. <br> * At the time of registration, the customer
			service team will request you to participate in competitions or
			subscribe for promotional newsletters. <br> * When you take part
			in surveys, you will be directed to a link asking for personal
			details. Your privacy is 100% protected by us. <br> <br>
			<h4>Use of Personal Information</h4>
			We use the personal information of the users in a beneficial way to
			both of us. The collected information is used and transferred to the
			third parties for booking, enquiry and transaction process. You
			should know that the information gathered from you will be processed
			outside India as we need to arrange the products and services
			requested by you. Customers will be requested to confirm the
			acceptance of sharing of information at the time of booking. The
			personal information collected from you will be used to send Karma
			Resorts and Hospitality's latest product announcements, promotions,
			offers and events. We are glad to inform that it helps us to improve
			our products and offerings to a great extent. Customers have the
			option to unsubscribe the announcements at any point of time. <br>
			We mainly use your information to upgrade our current products,
			services, content and advertising. Sometimes, the collected personal
			information will be used internally for research, analysis and
			auditing.<br> <br>
			<h4>Use of Cookies and Technologies</h4>
			Cookies play an important role in offering the best user experience
			for all our valuable customers. Most of the web browsers accept
			cookies while others require some changes to be done in your web
			browser. However, the users can easily control and delete the
			required cookies immediately. We make use of cookies to upgrade our
			online services, applications, advertisements and email messages.
			Generally, the cookies are used to identify certain information like
			passwords, list of pages visited, identify your session at a
			particular website and so on. <br>Karma Resorts and Hospitality
			assure that we do not use cookies for identifying your personal
			information or share your privacy with any of the third parties. <br>
			<br>
			<h4>Disclosure to Third Parties</h4>
			Karma Resorts and Hospitality has the right to share the personal
			information as required with any of the third parties. It is mainly
			shared on matters relating to booking, reservation, blocking or any
			such activity initiated by users. <br> <br>
			<h4>Service Providers and Partners</h4>
			Karma Resorts and Hospitality Private Limited may disclose the
			personal information with the companies who offers services like
			information processing, developing customer data, conducting customer
			research and satisfaction surveys.<br> <br>
			<h4>With Whom Your Personal Information is Shared?</h4>
			We usually share anonymous information and reports to our reputed
			suppliers, advertisers or any of the potential business partners.
			Karma Resorts and Hospitality requests all the customers to read over
			the privacy policy before their booking process. This is because they
			can gain more information about us in a detailed manner. <br> <br>
			<h4>Changes to this Privacy Policy</h4>
			Karma Resorts and Hospitality reserves the right to change the policy
			at any time. Users are required to change the page periodically as we
			are not responsible if users don't read over our policy. However, we
			will definitely notify the changes made in the privacy policy to all
			our customers through email or post. If you have any questions or
			queries, please feel free to contact us any time. We are eager to
			hear your comments regarding our privacy policy. For more details,
			contact us at info@karmahospitality.in and we will respond to your
			need immediately.<br> <br>
			
		<!--  	<h4>Address</h4>
			331, Iscon Emporio, <br>Satellite Ahmedabad <br>Ph :
			07940397776 , Toll Free : 18002585584
-->

		</div>

	</section>
	<!-- About Us Ends -->

	<section class="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div id="contact-form" class="contact-form">

						<div id="contactform-error-msg"></div>

						<form method="post" name="contactform" id="contactform">
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
						</form>
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
								<li class="social-icon"><a href="#"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li class="social-icon"><a href="#"><i
										class="fa fa-instagram" aria-hidden="true"></i></a></li>
								<li class="social-icon"><a href="#"><i
										class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li class="social-icon"><a href="#"><i
										class="fa fa-youtube" aria-hidden="true"></i></a></li>
								<li class="social-icon"><a href="#"><i
										class="fa fa-google" aria-hidden="true"></i></a></li>
							</ul>
						</div>
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
									
									location.reload();alert("Your Enquiry is Submited !")
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