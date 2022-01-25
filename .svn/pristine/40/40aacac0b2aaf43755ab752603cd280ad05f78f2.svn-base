<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
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
		<div class="content-body">
			<div class="container-fluid">
				<div class="page-titles">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">App</a></li>
						<li class="breadcrumb-item active"><a
							href="javascript:void(0)">Trip Booking status</a></li>
					</ol>
				</div>
				<!-- row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="profile card card-body px-3 pt-3 pb-0">
							<div class="profile-head">
								<div class="photo-content">
									<div class="cover-photo"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="card">
							<div class="card-body">
								<!-- Default accordion -->
								<div id="accordion-one" class="accordion accordion-primary">
									<div class="accordion__item">
										<div class="accordion__header rounded-lg"
											data-toggle="collapse" data-target="#default_collapseOne">
											<span class="accordion__header--text">Trip Booking
												Status Details</span> <span
												style="float: right; margin-top: -0.5%;">
										</div>
										<div id="default_collapseOne"
											class="collapse accordion__body show"
											data-parent="#accordion-one">
											<div class="">
												<div class="profile-personal-info"
													style="border-bottom: 1px dotted #afafaf;">
													<h4 class="text-primary mb-4 mt-4"></h4>


													<div class="table-responsive">
														<table class="table header-border table-responsive-sm">
															<thead>
																<tr>
																	<th class="text-center">NO</th>
																	<th class="text-center">TRIP RAISE DATE</th>
																	<th class="text-center">Destination</th>
																	<th class="text-center">Total<br> Days
																	</th>
																	<th class="text-center">Adults</th>
																	<th class="text-center">Child</th>
																	<th class="text-center">START <br>DATE
																	</th>
																	<th class="text-center">END<br> DATE
																	</th>
																	<th class="text-center">Status</th>


																</tr>
															</thead>
															<tbody>

																<!-- <tr>
																	<td class="text-center">1</td>
																	<td class="text-center">15/04/2021</td>
																	<td>City/State</td>
																	<td class="text-center">1</td>
																	<td class="text-center">1</td>
																	<td class="text-center">1</td>
																	<td class="text-center">15/04/2021</td>
																	<td class="text-center">15/04/2021</td>
																	<td class="text-center">Pending !</label></td>



																</tr> -->
																
																<c:forEach var="tableDetails"
																	items="${membertripstatus}" varStatus="cnt">
																	<c:set var = "app" value = "${0}"/>
																<c:set var = "dis" value = "${0}"/>
																	<tr id="mainPrdTr_${tableDetails[0]}">
																		<td class="text-center">${cnt.index+1}</td>
																		<c:forEach begin="0"
																			end="${fn:length(tableDetails)-1}"
																			varStatus="dataIndex">

																			<c:if test="${dataIndex.index ne 7 && dataIndex.index ne 8 }">
																				<td class="text-center">${fn:toUpperCase(tableDetails[dataIndex.index])}</td>
																			</c:if>
																			<c:if test="${dataIndex.index eq 7}">
																				<c:if test="${tableDetails[dataIndex.index] eq 1}">
																					<td align="center"><span class="badge badge-success" style="background-color: #32CD32;color:white;cursor:pointer;">Approve!</span></td>
																				</c:if>
																				
																			</c:if>
																			
																			<c:if test="${dataIndex.index eq 8}">
																				<c:if test="${tableDetails[dataIndex.index] eq 1}">
																					<td align="center"><span  class="badge badge-warning" style="background-color: #f5110b;color:white;cursor:pointer;">Disapprove.</span></td>
																				</c:if>
																				
																			</c:if>
																			
																			<c:if test="${dataIndex.index eq 7}">
																				<c:if test="${tableDetails[dataIndex.index] eq 0}">
																						<c:set var = "app" value = "${1}"/>
																				</c:if>
																			</c:if>
																			
																			<c:if test="${dataIndex.index eq 8}">
																			<c:if test="${tableDetails[dataIndex.index] eq 0}">
																					<c:set var = "dis" value = "${1}"/>
																			</c:if>
																			</c:if>
																			
																			
																			<c:if test="${app eq 1}">
																				<c:if test="${dis eq 1}">
																					<td align="center"><span class="badge badge-warning" style="background-color: #f5950b;color:white;cursor:pointer;">Pending...</span></td>
																				</c:if>
																			</c:if>
																			
																			
																			
																		</c:forEach>

																	</tr>
																</c:forEach>


															</tbody>
														</table>
													</div>

												</div>
											</div>
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

	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<jsp:include page="script.jsp"></jsp:include>

</body>

</html>



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
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
		<div class="content-body">
			<div class="container-fluid">
				<div class="page-titles">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">App</a></li>
						<li class="breadcrumb-item active"><a
							href="javascript:void(0)">Profile</a></li>
					</ol>
				</div>
				<!-- row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="profile card card-body px-3 pt-3 pb-0">
							<div class="profile-head">
								<div class="photo-content">
									<div class="cover-photo"></div>
								</div>
								<div class="profile-info">
									<div class="profile-photo">
										<img
											src="${pageContext.request.contextPath}/resources/img/placeholders/avatars/avatar5@2x.jpg"
											class="img-fluid rounded-circle" alt="">
									</div>
									<div class="profile-details">
										<div class="profile-name px-3 pt-2">
											<p>Name</p>
											<h4 class="text-primary mb-0">${md.preMemberName}
												${md.memberName}</h4>
										</div>
										<div class="profile-email px-2 pt-2">
											<p>Email</p>
											<h4 class="text-muted mb-0">${md.emailId}</h4>
										</div>
										<div class="dropdown ml-auto">
											<a href="#" class="btn btn-primary light sharp"
												data-toggle="dropdown" aria-expanded="true"><svg
													xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
													height="18px" viewBox="0 0 24 24" version="1.1">
													<g stroke="none" stroke-width="1" fill="none"
														fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24"></rect>
													<circle fill="#000000" cx="5" cy="12" r="2"></circle>
													<circle fill="#000000" cx="12" cy="12" r="2"></circle>
													<circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li class="dropdown-item"><i
													class="fa fa-user-circle text-primary mr-2"></i> Uplod
													Profile Image</li>
												<li class="dropdown-item"><i
													class="fa fa-user-circle text-primary mr-2"></i> Uplod
													Cover Photo</li>
												<li class="dropdown-item"><i
													class="fa fa-users text-primary mr-2"></i> Logout</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="table-responsive">
						<table id="example-datatable"
							class="table table-vcenter table-condensed table-bordered">
							<thead>
								<tr>
									<th class="text-center">NO</th>
									<th>CAPTION</th>
									<th style="width: 150px;">ACTIVE</th>
									<th style="width: 150px;" class="text-center">START DATE</th>
									<th style="width: 150px;" class="text-center">END DATE</th>
									<th style="width: 150px;" class="text-center">TRIP RAISE DATE</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td>City/State</td>
									<td class="text-center">Approved !</label></td>
									<td class="text-center">15/04/2021</td>
									<td class="text-center">15/04/2021</td>
									<td class="text-center">15/04/2021</td>


								</tr>


							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!--**********************************
            Content body end
        ***********************************-->

		<jsp:include page="footer.jsp"></jsp:include>

	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<jsp:include page="script.jsp"></jsp:include>

</body>

</html> --%>
