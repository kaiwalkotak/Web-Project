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
				<h2>Events</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Recent
							Events</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- BreadCrumb Ends -->

	<section class="deals-on-sale">
		<div class="container">
			<div class="section-title text-center">
				<h2>Recent Events</h2>
				<div class="section-icon">
					<i class="flaticon-diamond"></i>
				</div>
			</div>
			<div class="row sale-slider slider-button">
				<div class="col-md-12">
					<div class="sale-item box-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/event1.jpeg"
								alt="Image">
						</div>
						<div class="sale-content-1 sale-content">

							<h3>
								<a href="#">#Covid VaccineProgram<br>#donates N95 Masks</a>
							</h3>
							<div class="sale-content-inner">
								<p>
									<i class="flaticon-time"> February 24, 2021</i>
								</p>
								<p>KARMA RESORTS & HOSPITALITY CHENNAI donates N95 Masks Infrared Thermometers for Tamilnadu Covid Vaccine Program Chennai</p>
							<a target="_blank" href="https://chennaiviews.com/karma-resorts-hospitality-chennai-donates-n95-masks-infrared-thermometers-for-tamilnadu-covid-vaccine-program-chennai/"
									class="btn-blue btn-red btn-style-1">View More</a>
							</div>
						</div>

						<div class="sale-overlay"></div>
					</div>
				</div>
				
				<div class="col-md-12">
					<div class="sale-item box-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/event2.jpg"
								alt="Image">
						</div>
						<div class="sale-content-1 sale-content">

							<h3>
								<a href="#">#Brand Voice</a>
							</h3>
							<div class="sale-content-inner">
								<p>
									<i class="flaticon-time"> Dec 4, 2020</i>
								</p>
								<p>Karma Resorts Brings 5-Star Luxury Holiday Experience That Suits Your Budget</p>
							<a target="_blank" href="https://www.forbesindia.com/article/brand-connect/karma-resorts-brings-5star-luxury-holiday-experience-that-suits-your-budget/64669/1"
									class="btn-blue btn-red btn-style-1">View More</a>
							</div>
						</div>

						<div class="sale-overlay"></div>
					</div>
				</div>
				
				<div class="col-md-12">
					<div class="sale-item box-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/event3.jpg"
								alt="Image">
						</div>
						<div class="sale-content-1 sale-content">

							<h3>
								<a href="#">#donates N95 Masks</a>
							</h3>
							<div class="sale-content-inner">
								<p>
									<i class="flaticon-time"> Tuesday, May 25, 2021</i>
								</p>
								<p>Karma Resort & Hospitality donates N95 Masks Infrared Thermometers to Anna International airport CISF ASG Chennai</p>
							<a target="_blank" href="https://chennaiviews.com/karma-resort-hospitality-donates-n95-masks-infrared-thermometers-to-anna-international-airport-cisf-asg-chennai/"
									class="btn-blue btn-red btn-style-1">View More</a>
							</div>
						</div>

						<div class="sale-overlay"></div>
					</div>
				</div>
				
				<div class="col-md-12">
					<div class="sale-item box-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/event4.jpeg"
								alt="Image">
						</div>
						<div class="sale-content-1 sale-content">

							<h3>
								<a href="#">#RED Award 2020-2021</a>
							</h3>
							<div class="sale-content-inner">
								<p>
									<i class="flaticon-time"> </i>
								</p>
								<p>RedFM India</p>
							<a  href="#!"
									class="btn-blue btn-red btn-style-1">View More</a>
							</div>
						</div>

						<div class="sale-overlay"></div>
					</div>
				</div>
				
				<div class="col-md-12">
					<div class="sale-item box-item">
						<div class="sale-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/event5.jpeg"
								alt="Image">
						</div>
						<div class="sale-content-1 sale-content">

							<h3>
								<a href="#">Best Vacation Club<br>#RED Award 2020-2021</a>
							</h3>
							<div class="sale-content-inner">
								<p>
									<i class="flaticon-time"> </i>
								</p>
								<p>Best Vacation Club<br>RedFM India<br>RED Award 2020-2021</p>
							<a  href="#!"
									class="btn-blue btn-red btn-style-1">View More</a>
							</div>
						</div>

						<div class="sale-overlay"></div>
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


</body>

</html>