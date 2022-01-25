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
				<h2>NORTH DESTINATIONS</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/destinations">DESTINATIONS</a></li>
						<li class="breadcrumb-item active" aria-current="page">NORTH
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
										value="${pageContext.request.contextPath}/east_destination">East</option>
									<option
										value="${pageContext.request.contextPath}/west_destination">West</option>
									<option
										value="${pageContext.request.contextPath}/south_destination">South</option>
									<option
										value="${pageContext.request.contextPath}/north_destination">North</option>
									<option
										value="#!">International</option>

								</select> <i class="flaticon-maps-and-flags"></i>
							</div>

						</div>
					</div>


				</div>
			</form>
			<!-- Row 1  -->
			<div class="row">

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/AMSTREDAM/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/AMSTREDAM"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/AMSTREDAM">Conscious
									Hotel Westerpark ,Amsterdam</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/BALI/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/BALI"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/BALI">Hilton
									Garden Inn , Bali</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/BANKOK/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/BANKOK"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/BANKOK">Novotel
									, Bangkok</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/BARCELONA/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/BARCELONA"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/BARCELONA">Hotel
									Sb Glow , Barcelona</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->


			</div>


			<!-- Row 2  -->
			<div class="row">

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/BENTOTA/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/BENTOTA"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/BENTOTA">Centara
									Ceysands Resort & Spa , Bentota</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/BHUTAN/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/BHUTAN"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/BHUTAN">Himalayan
									Tashi Phuntshok Hotel, Paro, Bhutan </a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/BLU/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/BLU"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/BLU">Radisson
									Blu ,Dubai</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/BUDAPEST/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/BUDAPEST"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/BUDAPEST">Boutique
									Hotel , Budapest</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->
			</div>
			<!-- Row 3  -->
			<div class="row">

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/COLUMBO/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/COLUMBO"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/COLUMBO">Cinnamon
									Grand Colombo, Colombo</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->


				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/dubai/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/dubai"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/dubai">Park
									Regis Kris Kin Hotel ,Dubai</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->


				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/KATANDU/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/KATANDU"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/KATANDU">Kathmandu
									Guest House (Kgh) ,Kathmandu</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->


				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/KUALA/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/KUALA"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/KUALA">THE FACE
									Suites , Kuala Lumpur</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

			</div>


			<!-- Row 4  -->
			<div class="row">

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/MALDIVES/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/MALDIVES"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/MALDIVES">Malahini
									Kuda Bandos Resort ,Maldives</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->


				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/PATAYA/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/PATAYA"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/PATAYA">Seaphere
									Residence ,Pattaya</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/PHUKE/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/PHUKE"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/PHUKE">Novotel
									,Phuket </a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->

				<!--  Start  -->
				<div class="col-md-3 col-sm-6">
					<div class="destination-item destination-4-col">
						<div class="destination-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/PRAGUE/1.jpg"
								alt="Image">
							<div class="destination-overlay"></div>
							<div class="destination-btn">
								<a href="${pageContext.request.contextPath}/PRAGUE"
									class="btn-blue btn-red">View</a>
							</div>
						</div>
						<div class="destination-content">
							<h3>
								<a href="${pageContext.request.contextPath}/PRAGUE">Design
									Hotel Neruda, Prague</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- end  -->


			</div>
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