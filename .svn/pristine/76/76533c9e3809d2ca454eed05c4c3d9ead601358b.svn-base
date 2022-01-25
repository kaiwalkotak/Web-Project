<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- head tag  -->
<head>
<meta charset="utf-8">

<title>Karma Suites - Login</title>

<meta name="description"
	content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0">

<!-- Icons -->
<!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.jpg">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon57.png"
	sizes="57x57">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon72.png"
	sizes="72x72">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon76.png"
	sizes="76x76">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon114.png"
	sizes="114x114">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon120.png"
	sizes="120x120">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon144.png"
	sizes="144x144">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon152.png"
	sizes="152x152">
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/img/icon180.png"
	sizes="180x180">
<!-- END Icons -->

<!-- Stylesheets -->
<!-- Bootstrap is included in its original form, unaltered -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<!-- Related styles of various icon packs and plugins -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/plugins.css">

<!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">

<!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

<!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themes.css">
<!-- END Stylesheets -->

<!-- Modernizr (browser feature detection library) -->
<script
	src="${pageContext.request.contextPath}/resources/js/vendor/modernizr.min.js"></script>
	<jsp:include page="AllJs.jsp"></jsp:include>
</head>

<!-- head End -->

<body>


	<div id="page-wrapper">
		<!-- Preloader -->
		<div class="preloader themed-background">
			<h1 class="push-top-bottom text-light text-center">
				<strong>Karma</strong>Suites
			</h1>
			<div class="inner">
				<h3 class="text-light visible-lt-ie10">
					<strong>Loading..</strong>
				</h3>
				<div class="preloader-spinner hidden-lt-ie10"></div>
			</div>
		</div>
		<!-- END Preloader -->

		<!-- Page Container -->

		<div id="page-container"
			class="sidebar-mini sidebar-visible-lg-mini sidebar-no-animations">

			<jsp:include page="SidePanel.jsp"></jsp:include>

			<!-- Main Container -->
			<div id="main-container">
				<!-- Header -->

				<jsp:include page="HeadPanel.jsp"></jsp:include>

				<!-- Page content -->
				<div id="page-content">
					<!-- Datatables Header -->
					<div class="content-header">
						<div class="header-section">
							<h1>
								<i class="gi gi-nameplate_alt sidebar-nav-icon"></i>Payment
								Receipt
							</h1>
						</div>

					</div>
					<ul class="breadcrumb breadcrumb-top">
						<li>Dashboard</li>
						<li><a href="">Admin Payment Receipt</a></li>
					</ul>
					<div id="alertDiv"
						class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}"
						role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
						${successMsg}</div>



					<!-- Datatables Content -->
					<div class="block full">

						<div class="block-title">
							<h2>
								<strong>Admin </strong>Payment Receipt
							</h2>
							<div class="block-options pull-right">
								<a href="javascript:void(0)" onclick="exportCSV();"
									class="btn btn-alt btn-sm btn-primary">Export</a> <a
									href="javascript:void(0)"
									class="btn btn-alt btn-sm btn-primary"
									data-toggle="block-toggle-fullscreen"><i
									class="fa fa-desktop"></i></a>
							</div>
						</div>

<script type="text/javascript">$('#page-wrapper').addClass('page-loading');</script>
						<div class="table-responsive">
							<table id="example-datatable" class="table table-vcenter table-condensed table-bordered" style="    zoom: 0.9;">
								

								<thead>

									<tr class="tr1">
										<c:forEach var="tableHeader" items="${datatableHeader}"
											varStatus="loopCount">
											<c:if test="${loopCount.index ne 0}">
												<th class="text-center">${fn:toUpperCase(tableHeader)}</th>
											</c:if>
										</c:forEach>
										<th class="text-center thead-blue sorting_disabled">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="tableDetails" items="${dataTableList}"
										varStatus="cnt">
										<tr id="mainPrdTr_${tableDetails[0]}">
											
											<c:forEach begin="0" end="${fn:length(tableDetails)-1}"
												varStatus="dataIndex">

												<c:if test="${dataIndex.index ne 0}">
													<td class="text-center">${fn:toUpperCase(tableDetails[dataIndex.index])}</td>
												</c:if>
												
											</c:forEach>
											<td class="text-center">
												<button type="button" id="prd_${tableDetails[0]}"
													class="btn btn-warning" onclick="generateInvoice(${tableDetails[0]})">
													<i class="gi gi-download_alt"></i>
												</button>
												
											</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
						</div>
					</div>
					<!-- END Datatables Content -->
				</div>
				<!-- END Page Content -->

				<jsp:include page="Footer.jsp"></jsp:include>

			</div>
			<!-- END Main Container -->
		</div>
		<!-- END Page Container -->
	</div>
	<!-- END Page Wrapper -->

	<!-- Scroll to top link, initialized in js/app.js - scrollToTop() -->
	<a href="#" id="to-top"><i class="fa fa-angle-double-up"></i></a>

	<!-- User Settings, modal which opens from Settings link (found in top right user menu) and the Cog link (found in sidebar user info) -->
	<div id="modal-user-settings" class="modal fade" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header text-center">
					<h2 class="modal-title">
						<i class="fa fa-pencil"></i> Settings
					</h2>
				</div>
				<!-- END Modal Header -->

				<!-- Modal Body -->
				<div class="modal-body">
					<form action="index.html" method="post"
						enctype="multipart/form-data"
						class="form-horizontal form-bordered" onsubmit="return false;">
						<fieldset>
							<legend>Vital Info</legend>
							<div class="form-group">
								<label class="col-md-4 control-label">Username</label>
								<div class="col-md-8">
									<p class="form-control-static">Admin</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label" for="user-settings-email">Email</label>
								<div class="col-md-8">
									<input type="email" id="user-settings-email"
										name="user-settings-email" class="form-control"
										value="admin@example.com">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label"
									for="user-settings-notifications">Email Notifications</label>
								<div class="col-md-8">
									<label class="switch switch-primary"> <input
										type="checkbox" id="user-settings-notifications"
										name="user-settings-notifications" value="1" checked>
										<span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<legend>Password Update</legend>
							<div class="form-group">
								<label class="col-md-4 control-label"
									for="user-settings-password">New Password</label>
								<div class="col-md-8">
									<input type="password" id="user-settings-password"
										name="user-settings-password" class="form-control"
										placeholder="Please choose a complex one..">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label"
									for="user-settings-repassword">Confirm New Password</label>
								<div class="col-md-8">
									<input type="password" id="user-settings-repassword"
										name="user-settings-repassword" class="form-control"
										placeholder="..and confirm it!">
								</div>
							</div>
						</fieldset>
						<div class="form-group form-actions">
							<div class="col-xs-12 text-right">
								<button type="button" class="btn btn-sm btn-default"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-sm btn-primary">Save
									Changes</button>
							</div>
						</div>
					</form>
				</div>
				<!-- END Modal Body -->
			</div>
		</div>
	</div>
	<!-- END User Settings -->

	<!-- jQuery, Bootstrap.js, jQuery plugins and Custom JS code -->
	<!--         <script src="js/vendor/jquery.min.js"></script> -->
	<!--         <script src="js/vendor/bootstrap.min.js"></script> -->
	<!--         <script src="js/plugins.js"></script> -->
	<!--         <script src="js/app.js"></script> -->

	


	<!-- Load and execute javascript code used only in this page -->
	<script src="${pageContext.request.contextPath}/resources/js/date-eu.js" type="text/javascript"></script>
		
	<script>
		$(function() {
			TablesDatatables.init();
		});
		var TablesDatatables = function() {

		    return {
		        init: function() {
		            /* Initialize Bootstrap Datatables Integration */
		            App.datatables();

		            /* Initialize Datatables */
		            $('#example-datatable').dataTable({
		            	"order": [[ 11, "desc" ]],
		                columnDefs: [ { orderable: false, targets: 12 },{ 'type': 'date-eu', 'targets': 11 } ],
		                pageLength: 10,
		                lengthMenu: [[10, 20, 30, -1], [10, 20, 30, 'All']]
		            });

		            /* Add placeholder attribute to the search input */
		            $('.dataTables_filter input').attr('placeholder', 'Search');
		        }
		    };
		}();
		
		
	</script>

	<script>
		$('#daterange').val("");
		function exportCSV() {
			/* var daterange = $('#daterange').val();
			location.href = '/AdminAgreement/Export?daterange=' + daterange; */
		}
		function generateInvoice(id){
			window.location.href="${pageContext.request.contextPath}/clientuser/generateInvoice?orderId="+id;
	}
	</script>
<style>
.table thead > tr > th{
font-size: 14px;
    font-weight: 600;
}
</style>
</body>
</html>