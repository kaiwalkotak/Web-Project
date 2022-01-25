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

<title>Karma Resorts and Hospitality</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/website/images/logo1.png">
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/website/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!--Custom CSS-->
<link
	href="${pageContext.request.contextPath}/resources/website/css/hotel.css"
	rel="stylesheet" type="text/css">
<!--Flaticons CSS-->
<link
	href="${pageContext.request.contextPath}/resources/website/font/flaticon.css"
	rel="stylesheet" type="text/css">
<!--Plugin CSS-->
<link
	href="${pageContext.request.contextPath}/resources/website/css/plugin.css"
	rel="stylesheet" type="text/css">
<!--Font Awesome-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<!-- Preloader -->
	<div id="preloader">
		<div id="status"></div>
	</div>
	<!-- Preloader Ends -->

	<header class="head-style-1">
		<div class="upper-head clearfix">
			<div class="container">
				<div class="upper-head-inner">
					<div class="logo pull-left">
						<a href="#"><img alt="image"
							src="${pageContext.request.contextPath}/resources/website/images/logo-white.png"
							class="whitelogo"></a>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Banner start -->
	<section class="swiper-banner">
		<div class="slider">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide"
						style="background-image:url(${pageContext.request.contextPath}/resources/website/images/hotel/s1.jpg)">
						<div class="swiper-content" data-animation="animated fadeInDown">
							<h2>Welcome To</h2>
							<h1>Karma Resorts and Hospitality</h1>
						</div>
					</div>
					<div class="swiper-slide"
						style="background-image:url(${pageContext.request.contextPath}/resources/website/images/hotel/s2.jpg)">
						<div class="swiper-content" data-animation="animated fadeInRight">
							<h1>GET YOUR FIRST HOLIDAY ABSOLUTELY COMPLEMENTARY</h1>
							<h2>ON JOIN MEMBERSHIP WITH US.</h2>
						</div>
					</div>
					<div class="swiper-slide"
						style="background-image:url(${pageContext.request.contextPath}/resources/website/images/hotel/s3.jpg)">
						<div class="swiper-content" data-animation="animated fadeInRight">
							<h1>GET YOUR FIRST HOLIDAY ABSOLUTELY COMPLEMENTARY</h1>
							<h2>ON JOIN MEMBERSHIP WITH US.</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<div class="overlay"></div>
		</div>

		<!-- Search Box -->
		<div class="search-box clearfix">
			<div class="search-outer">
				<p class="text-center" style="font-size: 16px;">Invest in a
					lifetime of wonderful holiday memories. Speak to our holiday expert
					to learn more.</p>
				<div class="search-content table_item">
					<form:form id="contactform">
						<div class="form-group">
							<input type='text' class="form-control" required="" id="name"
								placeholder="Name*" name="name">
						</div>

						<div class="form-group">
							<input type="email" class="form-control" required="" id="email"
								name="email" placeholder="E-mail ID*">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" required="" id="Mobile"
								name="Mobile" placeholder="Mobile*">
						</div>
						<div class="form-group form-icon">
							<select name="age" id="age" class="selectpicker form-control"
								tabindex="1">
								<option value="" selected>Age</option>
								<option value="<18"><18</option>
								<option value="18 to <25">18 to <25</option>
								<option value="25 to <28">25 to <28</option>
								<option value="28 to <30">28 to <30</option>
								<option value="30 to <45">30 to <45</option>
								<option value="45 to <55">45 to <55</option>
								<option value="55 to <60">55 to <60</option>
								<option value=">60">>60</option>
							</select>
						</div>

						<div class="form-group">
							<input type="email" class="form-control" required="" name="city"
								id="city" placeholder="Your City Name*">
						</div>
						<p>
							<input type="checkbox" value="No" id="check" name="callcheck"
								checked=""> I authorize Karma Resorts and Hospitality to
							call/email/SMS me for membership plans and ongoing promotions and
							offers
						</p>
						<div class="search">
							<a href="#" class="btn-red btn-red" onclick="submitenquiry()">Submit</a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<!-- Search Box Ends -->
	</section>
	<!-- Banner Ends -->

	<!-- Testimonials -->
	<section class="testimonials">
		<div class="container">
			<div class="section-title">
				<h2>
					Limited Period <span> offer</span>
				</h2>
			</div>
		</div>
	</section>
	<!-- Testimonials Ends -->





	<section id="mt_about">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<!-- <div class="square-bg-block"></div> -->
					<div class="image-rev">
						<div class="blur-img"
							style="background-image: url(${pageContext.request.contextPath}/resources/website/images/list8.jpg);"></div>
						<img
							src="${pageContext.request.contextPath}/resources/website/images/kk.png"
							alt="">
					</div>
				</div>

				<div class="col-md-6 col-sm-12">
					<div class="about_services text-center">
						<h4>It's A Big World Out There...</h4>
						<h2 class="text-uppercase">
							KARMA RESORTS AND HOSPITALITY</span>
						</h2>
						<p>Karma Resorts and Hospitality is synonymous to creating a
							magical experience for your exclusively well-planned holidays.
							Karma Resorts and Hospitality provides you with an exclusive
							luxury holiday at surprisingly low prices. With the most intimate
							experiences, personalized residences, dining, and enchanting
							surroundings, we aim to bring you the greatest joy without
							stress.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="blog">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12">
					<div class="blog-item">
						<div class="blog-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/blog1.jpg"
								alt="Image">
						</div>
						<div class="blog-content" style="text-align: center;">
							<h4>
								<a href="#!">Happiness is travelling</a>
							</h4>
							<p>Single Contact Person Throughout The Journey.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<div class="blog-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/blog2.jpg"
								alt="Image">
						</div>
						<div class="blog-content" style="text-align: center;">
							<h4>
								<a href="#!">We Commit to Quality</a>
							</h4>
							<p>We aim to provide our customers with products and services
								that meet and even exceed their expectations.!</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<div class="blog-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/blog3.jpg"
								alt="Image">
						</div>
						<div class="blog-content" style="text-align: center;">
							<h4>
								<a href="#!">When in doubt, Ping Us</a>
							</h4>
							<p>Service At Clients Ease And Requirement.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section id="mt_about">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="about_services text-center">
						<h4>It's A Big World Out There...</h4>
						<h2 class="text-uppercase">
							Who we are?</span>
						</h2>
						<p>Karma Resorts and Hospitality is synonymous to creating a magical experience for your exclusively well-planned holidays.

Karma Resorts and Hospitality provides you with an exclusive luxury holiday at surprisingly low prices. With the most intimate experiences, personalized residences, dining, and enchanting surroundings, we aim to bring you the greatest joy without stress.!</p>
						<p>Our destinations give you access to a place for all ages, be it families with children, couples at all stages of life, families in the need for reunification, classmates celebrating a certain age together, newlyweds, and people who need a dynamic meeting.

Our aim is your enchanting experience and we love to hear you express it. We design the best crafted Holiday membership with over 100+ 4-5-star hotels and resorts in the Industry where the highest standard of service is provided.</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<!-- <div class="square-bg-block"></div> -->
					<div class="image-rev">
						<div class="blur-img"
							style="background-image: url(${pageContext.request.contextPath}/resources/website/images/list8.jpg);"></div>
						<img
							src="${pageContext.request.contextPath}/resources/website/images/karmalogo.png"
							alt="">
					</div>
				</div>

			</div>
		</div>
	</section>





	<!-- Deals On Sale -->
	<section class="deals-on-sale">
		<div class="container">
			<div class="section-title">
				<h2>Access 100+ Resorts in India & Abroad. A lifetime of
					Memories to Cherish with</h2>
				<p>Karma Resorts & Hospitality Membership</p>
			</div>
			<div class="row sale-slider slider-button">
				<div class="col-md-12">
					<div class="sale-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/orc.jpg"
								alt="Image">
						</div>
						<div class="sale-content">
							<div class="deal-rating">
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span>
							</div>
							<h3>
								<a href="#!" class="white">Royal Orchid Mussoorie Mussoorie</a>
							</h3>
						</div>
						<div class="sale-overlay"></div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="sale-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/fcc.jpeg"
								alt="Image">
						</div>
						<div class="sale-content">
							<div class="deal-rating">
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span>
							</div>
							<h3>
								<a href="" class="white">Face suits kualampur Kualumpur</a>
							</h3>
						</div>
						<div class="sale-overlay"></div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="sale-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/dda.jpg"
								alt="Image">
						</div>
						<div class="sale-content">
							<div class="deal-rating">
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span>
							</div>
							<h3>
								<a href="#!" class="white">Uday Samudra Kovalam, Kerala</a>
							</h3>
						</div>
						<div class="sale-overlay"></div>
					</div>
				</div>
				
			</div>
			<div class="row" style="margin-top: 25px;">
				<div class="col-md-4 col-sm-6">
					<div class="footer-recent-post footer-margin">
						<ul>
							<li>
								<div class="recent-post-item">
									<div class="recent-post-image">
										<img
											src="${pageContext.request.contextPath}/resources/website/images/bucket1.png"
											alt="Image">
									</div>
									<div class="recent-post-content">
										<h4>6 N / 7 D Every Year across all the Holiday Locations</h4>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="footer-recent-post footer-margin">
						<ul>
							<li>
								<div class="recent-post-item">
									<div class="recent-post-image">
										<img
											src="${pageContext.request.contextPath}/resources/website/images/bucket2.png"
											alt="Image">
									</div>
									<div class="recent-post-content">
										<h4>30 Nights & 60 Nights Options for Selection</h4>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="footer-recent-post footer-margin">
						<ul>
							<li>
								<div class="recent-post-item">
									<div class="recent-post-image">
										<img
											src="${pageContext.request.contextPath}/resources/website/images/bucket3.png"
											alt="Image">
									</div>
									<div class="recent-post-content">
										<h4>Enjoy 4 Star / 5 Star Hotels and Resorts</h4>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="footer-recent-post footer-margin">
						<ul>
							<li>
								<div class="recent-post-item">
									<div class="recent-post-image">
										<img
											src="${pageContext.request.contextPath}/resources/website/images/bucket4.png"
											alt="Image" style="width: 80%;">
									</div>
									<div class="recent-post-content">
										<h4>Experience the Best Customer Support</h4>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="footer-recent-post footer-margin">
						<ul>
							<li>
								<div class="recent-post-item">
									<div class="recent-post-image">
										<img
											src="${pageContext.request.contextPath}/resources/website/images/bucket5.png"
											alt="Image" style="width: 75%;">
									</div>
									<div class="recent-post-content">
										<h4>Assured Holiday Booking</h4>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="footer-recent-post footer-margin">
						<ul>
							<li></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Deals On Sale Ends -->



	<!-- Trip Ad -->
	<section class="cta">
		<div class="container">
			<div class="cta-content text-center">
				<div class="cta-title">
					<h2 class="white text-uppercase">Relax And Enjoy Your Holiday</h2>
					<h3 class="white">It's A Big World Out There...</h3>
				</div>
				<div class="cta-btn">
					<a href="hotel-detail.html" class="btn-red btn-red">BOOK NOW</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Trip Ad Ends -->




	<!-- Newsletter -->
	<section class="newsletter-main"
		style="padding-top: 120px; padding-bottom: 90px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="newsletter text-center">
						<div class="section-title section-title-white text-center">
							<h2>Newsletter Signup</h2>
							<div class="section-icon section-icon-white">
								<i class="flaticon-diamond"></i>
							</div>
							<p>Subscribe to our weekly newsletter to get updated on our
								latest deals</p>
						</div>
						<form>
							<div class="form-group">
								<input type="text" class="form-control" id="search"
									style="background: #ffffff8f;"> <a href="#"><span
									class="search_btn"><i class="fa fa-paper-plane"
										aria-hidden="true"></i> Sign Up</span></a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Newsletter Ends -->


	<!-- Footer -->
	<footer>
		<div class="footer-upper">
			<div class="container">
				<div class="footer-links">
					<div class="row">
						<div class="col-md-3 col-sm-12">
							<div class="footer-about footer-margin">
								<div class="about-logo">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/logo-white.png"
										alt="Image">
								</div>
								<p>Karma Resorts and Hospitality is synonymous to creating a
									magical experience for your exclusively well-planned holidays.
									the most intimate experiences, personalized residences, dining,
									and enchanting surroundings, we aim to bring you the greatest
									joy without stress.</p>
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
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-5 col-sm-4">
							<div class="footer-links-list footer-margin">
								<div class="about-logo2">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/map-1.png"
										alt="Image">
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-12">
							<div class="footer-links-list">
								<h3>Get In Touch</h3>
								<div class="about-location">
									<ul>
										<li><i class="fa fa-map-marker" aria-hidden="true"></i>
											331, 3rd Floor, Iscon Emporio,Satellite Ahmedabad - 380015</li>
										<li><i class="fa fa-phone" aria-hidden="true"></i> Toll
											Free Number: 1800 258 5584 <br> (Monday to Friday:- 10
											AM to 06 PM, <br>Saturday:- 10 AM to 2:30 PM)</li>
										<li><i class="fa fa-envelope" aria-hidden="true"></i>
											memberexperience@karmahospitality.in</li>
										<li><i class="fa fa-envelope" aria-hidden="true"></i><a
											href="mailto:info@karmahospitality.in">info@karmahospitality.in</a></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-xs-6">
						<div class="copyright-content">
							<p>
								Copyright &copy; 2021 Karma Resorts and Hospitality. All Rights
								Reserved. Designed By <a href="#" target="_blank">SHREE
									INFOTECH</a>
							</p>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="payment-content">
							<ul>
								<li>We Accept</li>
								<li><img
									src="${pageContext.request.contextPath}/resources/website/images/payment1.png"
									alt="Image"></li>
								<li><img
									src="${pageContext.request.contextPath}/resources/website/images/payment2.png"
									alt="Image"></li>
								<li><img
									src="${pageContext.request.contextPath}/resources/website/images/payment3.png"
									alt="Image"></li>
								<li><img
									src="${pageContext.request.contextPath}/resources/website/images/payment4.png"
									alt="Image"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Ends -->

	<!-- Back to top start -->
	<div id="back-to-top">
		<a href="#"></a>
	</div>
	<!-- Back to top ends -->

	<!-- *Scripts* -->
	<script
		src="${pageContext.request.contextPath}/resources/website/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/js/plugin.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/js/main-1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/js/custom-countdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/js/preloader.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/website/js/custom-swiper2.js"></script>
	<script>
		function submitenquiry() {

			if (document.getElementById("name").value != ''
					& document.getElementById("age").value != ''
					& document.getElementById("email").value != null
					& document.getElementById("Mobile").value != ''
					& document.getElementById("city").value != '') {
				var email = ValidateEmail(document.getElementById("email").value);
				if (email) {
					var mobile = ValidateMobile(document
							.getElementById("Mobile").value);
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
			} else {
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