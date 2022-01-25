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
				<h2>EAST DESTINATIONS</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/destinations">DESTINATIONS</a></li>
						<li class="breadcrumb-item active" aria-current="page">EAST
							DESTINATIONS</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>


	</section>
	<!-- BreadCrumb Ends -->






	<!-- Destinations -->
	<section class="destinations destination-padding">
		<div class="container">
			<form>
				<div class="row">

					<div class="col-md-3 col-xs-12">
						<div class="table_item">
							<div class="form-group">
								<select id="foo" class="selectpicker form-control">
									<option value="0">Select Destination</option>
									<option value="${pageContext.request.contextPath}/destinations">All
										Destination</option>
									<option
										value="#!">East</option>
									<option
										value="${pageContext.request.contextPath}/west_destination">West</option>
									<option
										value="${pageContext.request.contextPath}/south_destination">South</option>
									<option
										value="${pageContext.request.contextPath}/north_destination">North</option>
									<option
										value="${pageContext.request.contextPath}/intertational_destination">International</option>

								</select> <i class="flaticon-maps-and-flags"></i>
							</div>

						</div>
					</div>


				</div>
			</form>
			<!-- Row 1  -->
			<div class="row">
				<!-- 1  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/Darjelling/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/Darjelling"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/Darjelling">Grace
									Holet and Spa ,Darjelling</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- 1  -->
				<!-- 2  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/gangtok/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/resort-2"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/resort-2">Cresent
									Resort And Spa ,Gangtok </a>
							</h3>
						</div>
					</div>
				</div>
				<!-- 2  -->
			</div>
			<!-- Row 1  -->







		</div>
	</section>
	<!-- Destination Ends -->



	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Back to top start -->
	<div id="back-to-top">
		<a href="#"></a>
	</div>
	<!-- Back to top ends -->

	<script>
		document.getElementById("foo").onchange = function() {
			if (this.selectedIndex !== 0) {
				window.location.href = this.value;
			}
		};
	</script>

	<jsp:include page="script.jsp"></jsp:include>


</body>

</html>