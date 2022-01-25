<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="zxx">


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Karma Resorts and Hospitality</title>
<!-- Loading Bootstrap -->
<link
	href="${pageContext.request.contextPath}/resources/website/offer/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Loading Template CSS -->
<link
	href="${pageContext.request.contextPath}/resources/website/offer/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/website/offer/css/animate.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/website/offer/css/pe-icon-7-stroke.css">
<link
	href="${pageContext.request.contextPath}/resources/website/offer/css/style-magnific-popup.css"
	rel="stylesheet">

<!-- Awsome Fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/website/offer/css/all.min.css">

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,700;1,400&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700&amp;display=swap"
	rel="stylesheet">

<!-- Font Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/website/offer/images/favicon.png">

</head>

<body>

	<!--begin header -->
	<header class="header">

		<!--begin navbar-fixed-top -->
		<nav class="navbar navbar-expand-lg navbar-default navbar-fixed-top">

			<!--begin container -->
			<div class="container">
				<!--begin logo -->
				<a href="index.php"><img alt="Image"
					src="${pageContext.request.contextPath}/resources/website/offer/images/logo.png"
					class="logo" style="max-height: 70px;"></a>
				<!--end logo -->
			</div>
			<!--end container -->

		</nav>
		<!--end navbar-fixed-top -->

	</header>
	<!--end header -->

	<!--begin home section -->
	<section class="home-section" id="home">

		<div class="home-section-overlay"></div>

		<!--begin container -->
		<div class="container">

			<!--begin row -->
			<div class="row">

				<!--begin col-md-6-->
				<div class="col-md-6 padding-top-120">

					<h1>
						GET YOUR FIRST HOLIDAY <br> ABSOLUTELY COMPLEMENTARY
					</h1>

					<p class="hero-text">ON BOOKING MEMBERSHIP WITH US</p>

					<!--begin popup-video-wrapper-->
					<div class="popup-gallery-wrapper">

						<!--begin popup-video-->
						<div class="popup-gallery hero-gallery">

							<a class="popup4 video-icon"
								href="https://www.youtube.com/watch?v=wvWXKqXRtj4"autoplay; >
								<i class="fas fa-play"></i>
							</a>

						</div>
						<!--end popup-video-->

						<p class="popup-video-text">Watch Presentation Video</p>

					</div>
					<!--end popup-video-wrapper-->

				</div>
				<!--end col-md-6-->

				<!--begin col-md-5-->
				<div class="col-md-5 offset-md-1">

					<!--begin register-form-wrapper-->
					<div class="register-form-wrapper wow bounceIn"
						data-wow-delay="0.5s"
						style="visibility: visible; animation-delay: 0.5s; animation-name: bounceIn;">
						<p style="text-align: center; margin-bottom: 5px;">
							Invest in a lifetime of wonderful holiday memories. <br>
							Speak to our holiday expert to learn more.
						</p>

						<!--begin form-->
						<div>

							<!--begin success message -->
							<p class="register_success_box" style="display: none;">We
								received your message and you will hear from us soon. Thank You!</p>
							<!--end success message -->

							<!--begin register form -->
							<form:form id="contactform" class="register-form register"
								action="https://demo.epic-webdesign.com/tf-launchpage/v1/php/register.php"
								method="post">
								<input class="register-input name-input white-input" required=""
									id="name" placeholder="Name*" name="name">
								<select class="register-input white-input" required=""
									name="age" id="age">
									<option value="" selected>Age</option>
									<option value="age<18">age <18</option>
									<option value="18 to <25">18 to <25</option>
									<option value="25 to <28">25 to <28</option>
									<option value="28 to <30">28 to <30</option>
									<option value="30 to <45">30 to <45</option>
									<option value="45 to <55">45 to <55</option>
									<option value="55 to <60">55 to <60</option>
									<option value="age >60">age>60</option>
								</select>
								<input class="register-input name-email white-input" required=""
									name="email" id="email" placeholder="E-mail ID*" type="email" value="">
								<input class="register-input name-input white-input" required=""
									maxlength="10" minlength='10' id="Mobile"
									placeholder="10 Digit Mobile Number*" name="Mobile" value="">
								<input class="register-input name-email white-input" required=""
									name="city" id="city" placeholder="Your City Name*">
								<p class="register-form-terms">
									<input type="checkbox" value="No" id="check" name="callcheck"
										checked=""> I authorize Karma Resorts and Hospitality
									to call/email/SMS me for membership plans and ongoing
									promotions and offers
								</p>
								<input type="button" name="submit" value="Join The Club"
									class="register-submit" onclick="submitenquiry()">
							</form:form>
							<!--end register form -->



						</div>
						<!--end form-->

					</div>
					<!--end register-form-wrapper-->

				</div>
				<!--end col-md-5-->

			</div>
			<!--end row -->

		</div>
		<!--end container -->

	</section>
	<!--end home section -->

	<!--begin partners-section-->
	<div class="partners-section">

		<!--begin container-->
		<div class="container">

			<!--begin row -->
			<div class="row">

				<!--begin col-md-12 -->
				<div class="col-md-12 text-center margin-bottom-30">

					<h2 class="section-title">Limited Period Sign-up offer</h2>

				</div>
				<!--end col-md-12 -->

			</div>
			<!--end row -->

		</div>
		<!--end container-->

	</div>
	<!--end partners-section-->

	<!--begin section-grey -->
	<section class="section-grey" id="about">

		<!--begin container -->
		<div class="container">

			<!--begin row -->
			<div class="row">

				<!--begin col-md-12 -->
				<div class="col-md-12 text-center margin-bottom-10 team-info">

					<h2 class="section-title">ABOUT US</h2>
				</div>
				<div class="col-md-12 text-center">

					<p class="section-subtitle">Karma Resorts and Hospitality is
						synonymous to creating a magical experience for your exclusively
						well-planned holidays. Karma Resorts and Hospitality provides you
						with an exclusive luxury holiday at surprisingly low prices. With
						the most intimate experiences, personalized residences, dining,
						and enchanting surroundings, we aim to bring you the greatest joy
						without stress.</p>
					<figure style="margin-top: 15px;">
						<img
							src="https://cluboxygen.net/campaign/campaign_old/assets/images/holidayat.png"
							alt="holiday">
					</figure>
				</div>
				<!--end col-md-12 -->

			</div>
			<!--end row -->

		</div>
		<!--end container -->

	</section>
	<!--end section-grey -->


	<!--begin section-bg-1 -->
	<section class="section-bg-1">

		<div class="section-bg-overlay"></div>

		<!--begin container-->
		<div class="container">

			<!--begin row-->
			<div class="row">

				<!--begin col md 7 -->
				<div class="col-md-7 mx-auto margin-bottom-20 text-center team-info">

					<h2 class="white-text">Fantastic 5 Features</h2>

				</div>
				<!--end col md 7-->

			</div>
			<!--end row-->

			<!--begin row-->
			<div class="row">

				<!--begin fun-facts-box -->
				<div class="col-md-2 offset-md-1 fun-facts-box text-center">

					<i class="fas fa-cocktail"></i>

					<p class="fun-facts-title">
						<br>Inflation free vacation
					</p>

				</div>
				<!--end fun-facts-box -->

				<!--begin fun-facts-box -->
				<div class="col-md-2 fun-facts-box text-center">
					<i class="fas fa-rupee-sign"></i>
					<p class="fun-facts-title">
						<br>Affordable Holiday Packages
					</p>

				</div>
				<!--end fun-facts-box -->

				<!--begin fun-facts-box -->
				<div class="col-md-2 fun-facts-box text-center">

					<i class="fas fa-umbrella-beach"></i>
					<p class="fun-facts-title">
						<br>Top-up facility for life
					</p>

				</div>
				<!--end fun-facts-box -->

				<!--begin fun-facts-box -->
				<div class="col-md-2 fun-facts-box text-center">

					<i class="fas fa-address-card"></i>

					<p class="fun-facts-title">
						<br>Simplified membership
					</p>

				</div>
				<!--end fun-facts-box -->

				<!--begin fun-facts-box -->
				<div class="col-md-2 fun-facts-box text-center">

					<i class="fas fa-gift"></i>

					<p class="fun-facts-title">
						<br>Assurance of special day celebration
					</p>

				</div>
				<!--end fun-facts-box -->

			</div>
			<!--end row-->

		</div>
		<!--end container-->

	</section>
	<!--end section-bg-1 -->


	<!--begin section-grey -->
	<section class="section-grey">
		<!--begin container -->
		<div class="container">

			<!--begin row -->
			<div class="row">

				<!--begin col-md-12 -->
				<div class="col-md-12 text-center margin-bottom-30">

					<p class="section-subtitle">Access 100+ Resorts in India &
						Abroad. A lifetime of Memories to Cherish with</p>
					<h2 class="section-title">Karma Resorts & Hospitality
						Membership</h2>
				</div>
				<!--end col-md-12 -->

			</div>
			<!--end row -->

		</div>
		<!--end container -->

		<!--begin container-->
		<div class="container">

			<!--begin row-->
			<div class="row align-items-center">

				<!--begin col-md-6-->
				<div class="col-md-5">

					<div class="nav flex-column nav-pills margin-right-25"
						id="v-pills-tab" role="tablist" aria-orientation="vertical">

						<a class="nav-link active" id="v-pills-home-tab"
							data-toggle="pill" href="#v-pills-home" role="tab"
							aria-controls="v-pills-home" aria-selected="true"> <!--begin features-second -->
							<div class="features-second">
								<p class="margin-bottom-5">
									<i class="fas fa-map-marker-alt"></i> Royal Orchid Mussoorie
									Mussoorie
								</p>
							</div> <!--end features-second-->
						</a> <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill"
							href="#v-pills-profile" role="tab"
							aria-controls="v-pills-profile" aria-selected="false"> <!--begin features-second-->
							<div class="features-second">
								<p class="margin-bottom-5">
									<i class="fas fa-map-marker-alt"></i> Face suits kualampur
									Kualumpur
								</p>
							</div> <!--end features-second-->

						</a> <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
							href="#v-pills-messages" role="tab"
							aria-controls="v-pills-messages" aria-selected="false"> <!--begin features-second-->
							<div class="features-second">
								<p class="margin-bottom-5">
									<i class="fas fa-map-marker-alt"></i> Uday Samudra Kovalam,
									Kerala
								</p>
							</div> <!--end features-second-->

						</a>

					</div>

				</div>
				<!--end col-md-6-->

				<!--begin col-md-6 -->
				<div class="col-md-7">

					<div class="tab-content margin-left-20" id="v-pills-tabContent">

						<div class="tab-pane fade show active" id="v-pills-home"
							role="tabpanel" aria-labelledby="v-pills-home-tab">
							<img
								src="${pageContext.request.contextPath}/resources/website/offer/images/image1.jpg"
								class="width-100 image-shadow top-margins-images" alt="pic">
						</div>

						<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
							aria-labelledby="v-pills-profile-tab">
							<img
								src="${pageContext.request.contextPath}/resources/website/offer/images/image2.jpg"
								class="width-100 image-shadow top-margins-images" alt="pic">
						</div>

						<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
							aria-labelledby="v-pills-messages-tab">
							<img
								src="${pageContext.request.contextPath}/resources/website/offer/images/image3.jpg"
								class="width-100 image-shadow top-margins-images" alt="pic">
						</div>

					</div>

				</div>
				<!--end col-md-6 -->

			</div>
			<!--end row-->
			<div class="row">

				<!--begin col-md-4-->
				<div class="col-md-4">

					<div class="feature-box light-green wow fadeIn"
						data-wow-delay="0.25s"
						style="visibility: visible; animation-delay: 0.5s; animation-name: fadeIn;">

						<i class="fas fa-glass-cheers"></i>

						<div class="feature-box-text">

							<h4>6 N / 7 D Every Year across all the Holiday Locations</h4>

						</div>

					</div>

				</div>
				<!--end col-md-4 -->

				<!--begin col-md-4-->
				<div class="col-md-4">

					<div class="feature-box light-blue wow fadeIn"
						data-wow-delay="0.5s"
						style="visibility: visible; animation-delay: 0.5s; animation-name: fadeIn;">

						<i class="fas fa-hotel"></i>

						<div class="feature-box-text">

							<h4>30 Nights & 60 Nights Options for Selection</h4>

						</div>

					</div>

				</div>
				<!--end col-md-4 -->

				<!--begin col-md 4-->
				<div class="col-md-4">

					<div class="feature-box orange wow fadeIn" data-wow-delay="0.75s"
						style="visibility: visible; animation-delay: 0.5s; animation-name: fadeIn;">

						<i class="fa fa-hotel"></i>

						<div class="feature-box-text">

							<h4>Enjoy 4 Star / 5 Star Hotels and Resorts</h4>

						</div>

					</div>

				</div>
				<!--end col-md-4 -->

			</div>
			<!--end row -->

			<!--begin row -->
			<div class="row">

				<!--begin col-md-4-->
				<div class="col-md-4">

					<div class="feature-box dark-blue wow fadeIn" data-wow-delay="1s"
						style="visibility: visible; animation-delay: 0.5s; animation-name: fadeIn;">

						<i class="fas fa-plane-departure"></i>
						<div class="feature-box-text">

							<h4>Assured Holiday Booking</h4>

						</div>

					</div>

				</div>
				<!--end col-md-4 -->

				<!--begin col-md-4-->
				<div class="col-md-4">
					<div class="feature-box light-red wow fadeIn"
						data-wow-delay="1.25s"
						style="visibility: visible; animation-delay: 0.5s; animation-name: fadeIn;">
						<i class="far fa-bell"></i>
						<div class="feature-box-text">
							<h4>Experience the Best Customer Support</h4>
						</div>
					</div>
				</div>
				<!--end col-md-4 -->


			</div>
			<!--end row -->

		</div>
		<!--end container-->

	</section>
	<!--end section-grey-->



	<!--begin section-bg-2 -->
	<section class="section-bg-2">

		<div class="section-bg-overlay"></div>

		<!--begin container-->
		<div class="container">

			<!--begin row-->
			<div class="row">

				<!--begin col md 7 -->
				<div class="col-md-7 mx-auto text-center">

					<h2 class="white-text">It's A Big World Out There...</h2>

					<p class="white-text">The most stunning and beautiful places in
						the world for outing....</p>

					<a href="#" class="btn-white-border small scrool">Get In Touch</a>

				</div>
				<!--end col md 7-->

			</div>
			<!--end row-->

		</div>
		<!--end container-->

	</section>
	<!--end section-bg-2 -->



	<!--begin section-grey -->
	<section class="section-grey" id="about">

		<!--begin services-wrapper -->
		<div class="services-wrapper">

			<!--begin container -->
			<div class="container">

				<!--begin row -->
				<div class="row">
					<div class="col-md-3">
						<div class="main-services blue">
							<i class="fas fa-map-marker-alt"></i>
							<h4>REGISTERED OFFICE</h4>
							<p>Karma Resorts & Hospitality 331 Iscon Emporio, Near Star
								Bazzar, Satellite - 380015</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="main-services red">
							<i class="fas fa-phone"></i>
							<h4>Toll Free Number</h4>
							<p>+91 18002585584</p>
							<p>
								<small>(Monday to Friday:- 10 AM to 06 PM, Saturday:- 10
									AM to 2:30 PM)</small>
							</p>
						</div>
					</div>

					<div class="col-md-3">
						<div class="main-services red">
							<i class="fas fa-envelope"></i>
							<h4>E-Mail</h4>
							<p>info@karmahospitality.in</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="main-services green">
							<i class="fas fa-globe"></i>
							<h4>Website</h4>
							<p>
								<a href="https://www.karmahospitality.in">www.karmahospitality.in</a>
							</p>
						</div>
					</div>
				</div>
				<!--end row -->

			</div>
			<!--end container -->

		</div>
		<!--end services-wrapper -->

	</section>
	<!--end section-grey -->


	<!--begin footer -->
	<div class="footer">

		<!--begin container -->
		<div class="container">

			<!--begin row -->
			<div class="row">

				<!--begin col-md-5 -->
				<div class="col-md-5">

					<p>
						&copy 2021 <span class="template-name">Karma Resorts And
							Hospitality</span>.
					</p>

				</div>
				<!--end col-md-5 -->

				<!--begin col-md-2 -->
				<div class="col-md-2"></div>
				<!--end col-md-2 -->

				<!--begin col-md-5 -->
				<div class="col-md-5">
					<div style="text-align: end;">
						<a href="https://www.karmahospitality.in/privacypolicy">Terms
							of Use and Privacy Policy.</a>
					</div>
				</div>
				<!--end col-md-5 -->

			</div>
			<!--end row -->

		</div>
		<!--end container -->

	</div>
	<!--end footer -->


	<!-- Load JS here for greater good =============================-->
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/jquery.scrollTo-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/jquery.nav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/wow.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/offer/js/custom.js"></script>
	<script>
	function submitenquiry() {

		if (document.getElementById("name").value != ''
				& document.getElementById("age").value != ''
				& document.getElementById("email").value !=null
				& document.getElementById("Mobile").value != ''
				& document.getElementById("city").value != '') {
			var email = ValidateEmail(document.getElementById("email").value);
			if (email) {
				var mobile = ValidateMobile(document.getElementById("Mobile").value);
				if (mobile) {

					//---------------
					$
							.ajax({
								type : "POST",
								url : "${pageContext.servletContext.contextPath}/masters/websiteoffers",
								data : $("#contactform").serialize(),
								dataType : 'json',
								async : false,
								success : function(response) {
									if (response == "y") {
										window.location.href = "${pageContext.request.contextPath}/Thankyou";
									} else {
										alert("Please Try Again !")
									}
								}
							});
					//-------------------
				}
			}
		}else{
			alert("Please Provide All Information !")
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