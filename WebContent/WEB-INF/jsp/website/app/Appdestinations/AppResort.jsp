<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

<body>

	<!--*******************
        Preloader start
    ********************-->
	<div id="preloader">
		<div class="sk-three-bounce">
			<div class="sk-child sk-bounce1"></div>
			<div class="sk-child sk-bounce2"></div>
			<div class="sk-child sk-bounce3"></div>
		</div>
	</div>
	<!--*******************
        Preloader end
    ********************-->

	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">


		<jsp:include page="header-top.jsp"></jsp:include>



		<jsp:include page="sidebar.jsp"></jsp:include>


		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body" style="padding-bottom: 5rem;">
			<div class="container-fluid">
				<div class="page-titles">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">App</a></li>
						<li class="breadcrumb-item active"><a
							href="javascript:void(0)">Top Destinations</a></li>
					</ol>
					<div class="clearfix" style="text-align: end;">
						<a href="${pageContext.request.contextPath}/app/index"
							class="btn btn-primary px-3 my-2 light"><i
							class="fa fa-reply"></i> Back to </a> <a
							href="${pageContext.request.contextPath}/app/index"
							class="btn btn-primary px-3 light ml-2 my-2"><i
							class="fa fa-home"></i> Home </a>
					</div>
				</div>
				<!-- row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="profile card card-body px-3 pt-3 pb-0">
							<div class="profile-head">
								<div class="card-body" style="padding: 0rem;">
									<div id="carouselExampleIndicators" class="carousel slide"
										data-ride="carousel">
										<ol class="carousel-indicators">
											<li data-target="#carouselExampleIndicators"
												data-slide-to="0" class="active"></li>
											<li data-target="#carouselExampleIndicators"
												data-slide-to="1" class=""></li>
											<li data-target="#carouselExampleIndicators"
												data-slide-to="2" class=""></li>
										</ol>
										<div class="carousel-inner">
											<c:set var="zero" value="0" />
											<c:forEach var="tableDetails" items="${resortImages}"
												varStatus="cnt">
												<c:forEach begin="0" end="${fn:length(tableDetails)}"
													varStatus="dataIndex">
													<c:if test="${dataIndex.index eq 0}">
														<c:if test="${cnt.index == zero}">
															<!-- 1st Indicator -->
															<div class="carousel-item active">
																<img class="d-block w-100"
																	src="${pageContext.request.contextPath}/resources/${tableDetails[dataIndex.index]}"
																	alt="First slide">
															</div>
														</c:if>
														<c:if test="${cnt.index != zero}">
															<!-- 1st Indicator -->
															<div class="carousel-item ">
																<img class="d-block w-100"
																	src="${pageContext.request.contextPath}/resources/${tableDetails[dataIndex.index]}"
																	alt="First slide">
															</div>
														</c:if>
													</c:if>
												</c:forEach>
											</c:forEach>


										</div>
										<a class="carousel-control-prev"
											href="#carouselExampleIndicators" data-slide="prev"><span
											class="carousel-control-prev-icon"></span> <span
											class="sr-only">Previous</span> </a><a
											class="carousel-control-next"
											href="#carouselExampleIndicators" data-slide="next"><span
											class="carousel-control-next-icon"></span> <span
											class="sr-only">Next</span></a>
									</div>
								</div>
								<div class="profile-info">
									<div class="profile-details">
										<div class="profile-name px-3 pt-2">
											<h4 class="text-primary mb-0">${resortName}</h4>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-8">
						<div class="card">
							<div class="card-body">
								<div class="profile-tab">
									<div class="custom-tab-1">
										<div class="tab-content">
											<div id="my-posts" class="tab-pane fade active show">
												<div class="my-post-content">
													<div class="profile-uoloaded-post border-bottom-1">

														<a class="post-title" href="#!"><h3 class="text-black">Description</h3></a>
														<p>${description}</p>
													</div>
													<a class="post-title" href="#!"><h3 class="text-black">Location
															Map</h3></a>
													<div class="map-frame">${location}</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-4">
						<div class="card">
							<div class="card-body">
								<div class="profile-interest mb-5 mt-5">
									<div class="sidebar-item sidebar-helpline">
										<div class="sidebar-helpline-content">
											<h3>For Queries</h3>
											<p>Looking for something or have destination suggestions?
												Tell us Contact it!</p>
											<p>
												<i class="flaticon-phone-call"></i>1800 2585 584 <br>(Monday
												to Friday:- 10 AM to 06 PM, Saturday:- 10 AM to 2:30 PM)
											</p>
											<p>
												<i class="flaticon-mail"></i> info@karmahospitality.in
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!--**********************************
            Content body end
        ***********************************-->





		<jsp:include page="footer.jsp"></jsp:include>
		<!-- The image Modal -->

	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<jsp:include page="script.jsp"></jsp:include>

</body>

</html>