<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
				<h2>About Our Team</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Our
							Team</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- BreadCrumb Ends -->




<%-- 	<!-- Our Team -->
	<section class="our-team">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="section-title text-center">
						<h2>Our Management Team</h2>
						<div class="section-icon section-icon-white">
							<i class="flaticon-diamond"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="team-item">
						<div class="team-image">
							<img src="${pageContext.request.contextPath}/resources/website/images/testemonial1.jpg" alt="Image">
						</div>
						<div class="team-content">
							<h3>Peter Parker</h3>
							<p>Tour Advisor</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="team-item">
						<div class="team-image">
							<img src="${pageContext.request.contextPath}/resources/website/images/testemonial2.jpg" alt="Image">
						</div>
						<div class="team-content">
							<h3>Peter Parker</h3>
							<p>Tour Advisor</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="team-item">
						<div class="team-image">
							<img src="${pageContext.request.contextPath}/resources/website/images/testemonial3.jpg" alt="Image">
						</div>
						<div class="team-content">
							<h3>Peter Parker</h3>
							<p>Tour Advisor</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="team-item">
						<div class="team-image">
							<img src="${pageContext.request.contextPath}/resources/website/images/testemonial1.jpg" alt="Image">
						</div>
						<div class="team-content">
							<h3>Peter Parker</h3>
							<p>Tour Advisor</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Our Team Ends --> --%>



	<!-- About Us -->
	<section class="aboutus">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="section-title text-center">
						<h2>Why Choose Us?</h2>
						<div class="section-icon section-icon-white">
							<i class="flaticon-diamond"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">
						<div class="about-icon">
							<i class="fa fa-superpowers" aria-hidden="true"></i>
						</div>
						<div class="about-content">
							<h3>Happiness is travelling</h3>
							<p>Single Contact Person Throughout The Journey</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">
						<div class="about-icon">
							<i class="fa fa-paw" aria-hidden="true"></i>
						</div>
						<div class="about-content">
							<h3>We Commit to Quality</h3>
						 <p>We aim to provide our customers with products and services that meet and even exceed their expectations.!</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="about-item">
						<div class="about-icon">
							<i class="fa fa-fire" aria-hidden="true"></i>
						</div>
						<div class="about-content">
							<h3>When in doubt, Ping Us..</h3>
							<p>Service At Clients’ Ease And Requirement.</p>
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


</body>

</html>