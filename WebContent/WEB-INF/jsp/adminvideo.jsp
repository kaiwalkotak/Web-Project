<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- head tag- A5 -->
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
</head>

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
								<i class="gi gi-nameplate_alt sidebar-nav-icon"></i>Admin Videos
							</h1>
						</div>

					</div>


					<ul class="breadcrumb breadcrumb-top">
						<li>Dashboard</li>
						<li><a href="">Admin Videos</a></li>
					</ul>

					<div id="alertDiv"
						class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}"
						role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
						${successMsg}</div>


					<!--  ************************************************************ -->
					<!--START block full subclass-->
					<div class="block full mainclass">

						<div class="block-title">
							<h2>
								<strong>Admin </strong> Videos
							</h2>
							<div class="block-options pull-right">
								<a href="javascript:void(0)"
									class="btn btn-alt btn-sm btn-primary" onclick="newForm()">Create</a>
								<a href="javascript:void(0)"
									class="btn btn-alt btn-sm btn-primary"
									data-toggle="block-toggle-fullscreen"><i
									class="fa fa-desktop"></i></a>
							</div>
						</div>



						<div class="table-responsive">
							<table id="example-datatable"
								class="table table-vcenter table-condensed table-bordered">
								<thead>

									<tr class="tr1">
										<th class="text-center thead-blue sorting_disabled">No.</th>
										<c:forEach var="tableHeader" items="${datatableHeader}"
											varStatus="loopCount">

											<th class="text-center thead-blue sorting_disabled">${fn:toUpperCase(tableHeader)}</th>

										</c:forEach>
										<th class="text-center thead-blue sorting_disabled">Action</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="tableDetails" items="${dataTableList}"
										varStatus="cnt">
										<tr id="mainPrdTr_${tableDetails[0]}">
											<td class="text-center">${cnt.index+1}</td>
											<c:forEach begin="0" end="${fn:length(tableDetails)-1}"
												varStatus="dataIndex">

												<c:if test="${dataIndex.index ne 0 && dataIndex.index ne 3 }">
													<td class="text-center">${tableDetails[dataIndex.index]}</td>
												</c:if>
												
												 <c:if test="${dataIndex.index eq 3  && dataIndex.index ne 0}">
													<c:if test="${tableDetails[dataIndex.index] eq 0}">
													<td align="center">Inactive</td>
														<td align="center"><label class="switch switch-success"><input
																type="checkbox" class="is_active"
																data="${tableDetails[0]}"><span></span></label></td>
													</c:if>
													<c:if test="${tableDetails[dataIndex.index] eq 1}">
													<td align="center" background="green">Active !</td>
														<td align="center"><label class="switch switch-success"><input
																type="checkbox" class="is_active" checked="checked"
																data="${tableDetails[0]}"><span></span></label></td>
													</c:if>
												</c:if>  


											</c:forEach>
											<td class="text-center">
												<button type="button" id="prd_${tableDetails[0]}"
													class="btn btn-warning" onclick="createNewBanner(this.id)">
													<i class="fa fa-pencil"></i>
												</button>
												<button type="button" id="prd1_${tableDetails[0]}"
													class="btn btn-danger" onclick="deleteProduct(this.id)">
													<i class="fa fa-trash"></i>
												</button>
											</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
						</div>
					</div>
					<!--END block full subclass-->



					<!--START block full subclass-->
					<div class="block full subclass" style="display: none;">


						<!-- Dropzone Title -->
						<div class="block-title">
							<div class="block-options pull-right">
								<a href="javascript:void(0)"
									class="btn btn-alt btn-sm btn-primary" onclick="saveBanner()">Save</a>
								<a class="btn btn-alt btn-sm btn-primary" data-toggle="tooltip"
									title="Cancel" onclick="cancelForm()"><i
									class="fa fa-times"></i></a>
							</div>
							<h2>
								<strong>Add </strong>Video Details
							</h2>
						</div>
						<!-- Form  -->
						<form:form id="addBannerForm" modelAttribute="addBannerForm"
							method="POST" class="form-horizontal form-bordered">
							<!-- Video title  -->
							<div class="form-group">
								<div class="col-md-12">
									<label for="example-nf-password">Title</label> <input
										type="text" id="title" name="title" class="form-control"
										placeholder="Title"> <input type="hidden" id="bnr_id"
										name="bnr_id" value="0">
								</div>
							</div>
							<!-- Video Link  -->
							<div class="form-group">
								<div class="col-md-12">
									<label for="example-nf-password">YouTube Video Link</label> <input
										type="text" id="videolink" name="videolink"
										class="form-control" placeholder="Video Link Here..">
								</div>
							</div>
							<!-- Save Activity  -->
							<div class="form-group form-actions" style="text-align: center;">
								<a href="#" class="btn btn-primary" onclick="saveBanner()"><i
									class="fa fa-check"></i> Save</a>
							</div>

						</form:form>
						<!-- Form  -->
					</div>
					<!--END block full subclass-->
					<!--  ************************************************************ -->

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

	<jsp:include page="AllJs.jsp"></jsp:include>


	<!-- Load and execute javascript code used only in this page -->
	<script
		src="${pageContext.request.contextPath}/resources/js/pages/tablesDatatables.js"></script>
	<script>
		$(function() {
			TablesDatatables.init();
		});

		function cancelForm() {
			$(".mainclass").show();
			$(".subclass").hide();

		}

		if ('${successMsg}' != "-1") {
			setTimeout(function() {
				$("#alertDiv").fadeOut();
			}, 2000);
		}

		function newForm() {
			$(".mainclass").hide();
			$(".subclass").show();

			$("#bnr_id").val("0");
			$("#title").val("");
			$("#videolink").val("");

		}

		function createNewBanner(id) {
			$(".mainclass").hide();
			$(".subclass").show();
			if (id != "0") {
				$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/getVideoAdmin",
							data : $("#addBannerForm").serialize()
									+ "&mainPrdId=" + id.split("_")[1],
							dataType : 'json',
							async : false,
							success : function(response) {
								$("#bnr_id").val(response.id);
								$("#title").val(response.title);
								$("#videolink").val(response.videoLink);
							}
						});
			}

		}

		function saveBanner() {

			$('#addBannerForm').validate().element("#title");
			if (document.getElementById("title").value != '') {

				$("#top-loading-start").click();
				$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/addVideoAdmin",
							data : $("#addBannerForm").serialize(),
							dataType : 'json',
							async : false,
							success : function(response) {
								if (response.split("~")[0] == "y") {
									var msgText = $("#bnr_id").val() == 0 ? "redirect_success_common"
											: "redirect_success_common_update";
									if ('${isInnerCall}' == "1") {
										var ulEl = $("#venueEDIT").next()
												.next();
										$(ulEl)
												.append(
														'<li data-cc="'
																+ response
																		.split("~")[2]
																+ '" class="es-visible">'
																+ $(
																		"#venuename")
																		.val()
																+ '</li>');
										$('#general-model').modal('hide');
									} else {
										$("#top-loading-stop").click();
										window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminvideo/B+uwXGHTfDUxNMOWwVRsaA==/1/"
												+ msgText + "/0";

									}

								} else {
									alertDiv("alert-danger", response
											.split("~")[1]);
								}

								var image = document
										.getElementById("docUploadBtn").value;
								if (image != '') {
									uploadDocument(response.split("~")[2]);
								}
								saveDataMsg = response;

							}
						});

				if (document.getElementById("docUploadBtn").value != '') {
					$
							.ajax({
								type : "POST",
								url : "${pageContext.servletContext.contextPath}/masters/xyz",
								data : $("#addProductForm").serialize()
										+ "&fileMasterPath="
										+ encodeURIComponent($("#saveFullPath")
												.val()) + "&productMasterId="
										+ saveDataMsg.split("~")[2]
										+ "&updateTable=BANNER",
								dataType : 'json',
								async : false,
								success : function(response) {

								}
							});
				}
				if (saveDataMsg.split("~")[0] == "y") {
					$("#top-loading-stop").click();
					var msgText = $("#bnr_id").val() == 0 ? "redirect_success_common"
							: "redirect_success_common_update";
					//window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/product/148Os0edAeOcY1hytCUyTQ==/1/"+msgText;
					window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminvideo/B+uwXGHTfDUxNMOWwVRsaA==/1/"
							+ msgText + "/0";
				} else {
					enableDisableButton("button", true);
					alertDiv("alert-danger", saveDataMsg.split("~")[1]);
				}
			}
		}

		function deleteProduct(id) {

			if (confirm("Press OK to Delete this Video From Karma Website !")) {
				$("#top-loading-start").click();
				$
						.ajax({
							type : "GET",
							url : "${pageContext.servletContext.contextPath}/masters/deleteAdminVideo",
							data : "&prdId=" + id.split("_")[1],
							dataType : 'json',
							async : false,
							success : function(response) {
								$('#confirm-model').modal('hide');
								if (response == "false") {
									alertDiv("alert-danger",
											"This Video has some data in system, so you can not delete this event!!");
								} else {
									$("#top-loading-stop").click();
									$("#mainPrdTr_" + id.split("_")[1])
											.remove();
									alertDiv("alert-success",
											"Video Deleted successfully!!");
								}
							}
						});

			}// if confirm

		}// deleteProduct

		$('#addBannerForm').validate(
				{
					errorClass : 'help-block animation-slideDown', // You can change the animation class for a different entrance animation - check animations page
					errorElement : 'div',
					errorPlacement : function(error, e) {
						e.parents('.form-group > div').append(error);
					},
					highlight : function(e) {
						$(e).closest('.form-group').removeClass(
								'has-success has-error').addClass('has-error');
						$(e).closest('.help-block').remove();
					},
					success : function(e) {
						// You can use the following if you would like to highlight with green color the input after successful validation!
						e.closest('.form-group').removeClass(
								'has-success has-error'); // e.closest('.form-group').removeClass('has-success has-error').addClass('has-success');
						e.closest('.help-block').remove();
					},
					rules : {
						title : {
							required : true
						},
						videolink : {
							required : true
						}
					},
					messages : {
						title : 'Please enter Title!',
						videolink : 'Please enter Video Link here!'

					}
				});
		
		 $(".is_active")
			.on(
					'click',
					function() {
						var chk = 0;
						if ($(this).prop("checked") == true) {
							chk = 1;
						}
						$
								.ajax({
									type : "GET",
									url : "${pageContext.request.contextPath}/masters/setAdminVideoType",
									data : "prd_id=" + $(this).attr('data')
											+ "&chk=" + chk
											+ "&type=active",
									dataType : 'json',
									success : function(response) {
										$("#top-loading-stop").click();
										
										alert("Save Successfully!!");
									}
								});

					}); 

		<!--ENDFildvalidationA5-->
	</script>

</body>
</html>