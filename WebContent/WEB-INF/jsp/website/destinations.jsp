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
			<c:if test="${desti == null}">
				<h2>All Destination</h2>
				</c:if>
				<c:if test="${desti != null}">
				<h2>${desti}</h2>
				</c:if>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">DESTINATIONS</li>
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
			<!-- 
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
 	-->
			<%-- <form>
				<div class="row">

					<div class="col-md-3 col-xs-12">
						<div class="table_item">
							<div class="form-group">
								<select id="foo" class="selectpicker form-control">

									<option value="#!">Select Destination</option>
									<option value="#!">All Destination</option>
									<option
										value="${pageContext.request.contextPath}/east_destination">East</option>
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
			</form> --%>
			
			<form>
				<div class="row">

					<div class="col-md-3 col-xs-12">
						<div class="table_item">
							<div class="form-group">
								<select id="foo" class="selectpicker form-control">

									<option value="#!">Select Destination</option>
									<option
										value="${pageContext.request.contextPath}/destinationZones/0">All
										Destination</option>
									<option
										value="${pageContext.request.contextPath}/destinationZones/1">East</option>
									<option
										value="${pageContext.request.contextPath}/destinationZones/2">West</option>
									<option
										value="${pageContext.request.contextPath}/destinationZones/3">South</option>
									<option
										value="${pageContext.request.contextPath}/destinationZones/4">North</option>
									<option
										value="${pageContext.request.contextPath}/destinationZones/5">International</option>

								</select> <i class="flaticon-maps-and-flags"></i>
							</div>

						</div>
					</div>
				</div>
			</form>
			
			

			<!-- <div class="row"> -->

			<!-- outer loop start -->

				<c:set var="start" value="0" />
				<c:set var="end" value="3" />
				<c:forEach var="tableDetails" items="${resortList}" varStatus="cnt">
					
								<c:if test="${cnt.index == start}">
								<!-- Div Row Start -->
									<div class="row">
									   <c:set var="start" value="${start +4}" />  
								</c:if>
										<!-- inner loop start -->
										<div class="col-md-3 col-sm-6">
										<div class="destination-item destination-4-col">
										<div class="destination-image">
										<img
											src="${pageContext.request.contextPath}/resources/${tableDetails[2]}"
												alt="Image" height="181">
										<div class="destination-overlay"></div>
										<div class="destination-btn">
										<a href="${pageContext.request.contextPath}/resortDestinatin/${tableDetails[0]}"
											class="btn-blue btn-red">View</a>
										</div>
										</div>
										<div class="destination-content">
										<h3>
										<a href="${pageContext.request.contextPath}/resortDestinatin/${tableDetails[0]}">${tableDetails[1]}</a>
										</h3>
										</div>
										</div>
										</div>
										<!-- inner loop End -->
										
								<c:if test="${cnt.index == end}">
									
									<c:set var="end" value="${ end + 4}" />  
									</div>
									<!-- Div Row ends -->
								</c:if>
			
			</c:forEach>
			<!-- outer loop End -->


		</div>
		</div>
	</section>


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