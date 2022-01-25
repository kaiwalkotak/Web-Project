<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="custheader.jsp"></jsp:include>
</head>
<body>
	<!-- <div id="preloader">
		<div id="status"></div>
	</div> -->

	<!-- start Container Wrapper -->
	<div id="container-wrapper">
		<!-- Dashboard -->
		<div id="dashboard">

			<!-- Responsive Navigation Trigger -->
			<a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>

			<jsp:include page="custhead.jsp"></jsp:include>
            
            <jsp:include page="custside.jsp"></jsp:include>
			
			<!-- 
			<?php include 'dashboard-header.php'; ?>
			<?php include 'dashboard-sidebar.php'; ?>
			-->

			<div class="dashboard-content">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-xs-12"
						style="border: 2px solid #eceaea;">
						<div class="dashboard-list-box">
							<h4 class="gray">Payment History | Pending Payments : ${pendingamaount}</h4>
							<div class="row with-forms">
								<div class="col-md-2">
									<label style="text-align: right;"><i
										class="fa fa-credit-card"></i> DP Amount :</label>
								</div>
								<div class="col-md-2">
									<label style="text-align: left;">${alldet[3]}</label>
								</div>
							</div>
							<div class="row with-forms">
								<div class="col-md-2">
									<label style="text-align: right;"><i class="fa fa-bars"></i>
										DP Payment Mode :</label>
								</div>
								<div class="col-md-2">
									<label style="text-align: left;">${payDet[1]}</label>
								</div>
							</div>
							<div class="row with-forms">
								<div class="col-md-2">
									<label style="text-align: right;"><i
										class="fa fa-calendar"></i> Date :</label>
								</div>
								<div class="col-md-2">
									<label style="text-align: left;">${payDet[2]}</label>
								</div>
							</div>
							<div class="row with-forms">
								<div class="col-md-2">
									<label style="text-align: right;"><i class="fa fa-inr"></i>
										Total Paid :</label>
								</div>
								<div class="col-md-2">
									<label style="text-align: left;">${totalpaid}</label>
								</div>
							</div>

							<div class="col-md-12">
								<div class="table-box" style="margin: 10px;">
									<table class="basic-table booking-table">
										<thead>
											<tr>
												<th>Amount</th>
												<th>Payment Mode</th>
												<th>Ref/Cheque No.</th>
												<th>Date</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="emiDet" items="${emiDet}" >
                                              <tr>
                                                   <td class="text-center">${emiDet[2]}</td>
                                                   <td class="text-center">${emiDet[5]}</td>
                                                   <td class="text-center">${emiDet[6]}</td>
                                                   <td class="text-center">${emiDet[3]}</td>
                                                   <td><span class="${emiDet[4] eq 'RZ' ? 'approved' : 'pending'} t-box">${emiDet[4] eq 'RZ' ? 'Cleared' : emiDet[4]}</span></td>
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
			<!-- Copyrights -->
			<div class="copyrights">
				<p>
					Copyright &copy; 2020 Karma Resorts and Hospitality. All Rights
					Reserved. Designed By <a href="#" target="_blank">SHREE
						INFOTECH</a>
				</p>
			</div>
		</div>
		<!-- Dashboard / End -->
	</div>
	<!-- end Container Wrapper -->


	<!-- Back to top start -->
	<div id="back-to-top">
		<a href="#"></a>
	</div>
	<!-- Back to top ends -->
 <jsp:include page="custjs.jsp"></jsp:include>
</body>

</html>