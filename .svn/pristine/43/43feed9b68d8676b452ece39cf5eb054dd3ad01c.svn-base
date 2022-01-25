<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<html class="no-js" lang="en">

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
				<strong>Karma</strong> Suites
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
								<i class="gi gi-comments sidebar-nav-icon"></i>Product
							</h1>
						</div>

					</div>

					<div id="alertDiv"
						class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}"
						role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
						${successMsg}</div>

					<!-- Datatables Content -->
					<div class="block full  mainclass">

						<div class="block-title">
							<h2>
								<strong>Product </strong>
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
								<!-- <thead>
                                        <tr>
                                            <th style="width: 150px;" class="text-center">TITLE</th>
                                            <th style="width: 150px;" class="text-center">	TENURE</th>
                                            <th >DESCRIPTION</th>
                                            <th style="width: 150px;" class="text-center">ACTIVE</th>
                                            <th style="width: 150px;" class="text-center">DISPLAY</th>
                                            <th style="width: 150px;" class="text-center">CREATED DATE</th>
                                            <th style="width: 150px;" class="text-center">ACTION</th>
                                        </tr>
                                    </thead> -->
								<thead>

									<tr class="tr1">
										<th class="text-center thead-blue sorting_disabled">No.</th>
										<c:forEach var="tableHeader" items="${datatableHeader}"
											varStatus="loopCount">
											<c:if test="${loopCount.index ne 0}">
												<th class="text-center thead-blue sorting_disabled">${fn:toUpperCase(tableHeader)}</th>
											</c:if>
										</c:forEach>
										<th class="text-center thead-blue sorting_disabled">Action</th>
									</tr>
								</thead>
								<%-- <tbody>
                                          <tr>
                                            <td class="text-center">Karma Platinum</td>
                                            <td class="text-center">3 Years</td>
                                            <td>Inclusion 6 Nights Every Year, 2 Adults & 1 kid (Below 7 years) OR 2 Adults (Max occupancy) Sofa cum bed or extra bed.Breakfast and Dinner included</td>
                                            <td class="text-center"><label class="switch switch-success"><input type="checkbox"><span></span></label></td>
                                            <td class="text-center"><label class="switch switch-danger"><input type="checkbox" checked><span></span></label></td>
                                            <td class="text-center">15/04/2021</td>
                                            <td class="text-center">
                                                <button type="button" id="prd_${tableDetails[0]}" class="btn btn-warning"  onclick="createNewProduct(this.id)" ><i class="fa fa-pencil"></i></button>
												<button type="button" id="prd_${tableDetails[0]}" class="btn btn-danger" onclick="deleteProduct(this.id)" ><i class="fa fa-trash"></i></button>
                                                
                                            </td>
                                        </tr>
                                        
                                    </tbody> --%>

								<tbody>
									<c:forEach var="tableDetails" items="${dataTableList}"
										varStatus="cnt">
										<tr id="mainPrdTr_${tableDetails[0]}">
											<td>${cnt.index+1}</td>
											<c:forEach begin="0" end="${fn:length(tableDetails)-1}"
												varStatus="dataIndex">
												<c:if
													test="${dataIndex.index ne 0 && dataIndex.index ne 3 && dataIndex.index ne 4 && dataIndex.index ne 5}">
													<td>${fn:toUpperCase(tableDetails[dataIndex.index])}</td>
												</c:if>
												<c:if test="${dataIndex.index eq 3}">
													<td>${tableDetails[dataIndex.index].replaceAll('\\<.*?\\>', '')}</td>
												</c:if>
												<c:if test="${dataIndex.index eq 4}">
													<c:if test="${tableDetails[dataIndex.index] eq 0}">
														<td><label class="switch switch-success"><input
																type="checkbox" class="is_active"
																data="${tableDetails[0]}"><span></span></label></td>
													</c:if>
													<c:if test="${tableDetails[dataIndex.index] eq 1}">
														<td><label class="switch switch-success"><input
																type="checkbox" class="is_active" checked="checked"
																data="${tableDetails[0]}"><span></span></label></td>
													</c:if>
												</c:if>
												<c:if test="${dataIndex.index eq 5}">
													<c:if test="${tableDetails[dataIndex.index] eq 0}">
														<td><label class="switch switch-success"><input
																type="checkbox" class="is_display"
																data="${tableDetails[0]}"><span></span></label></td>
													</c:if>
													<c:if test="${tableDetails[dataIndex.index] eq 1}">
														<td><label class="switch switch-success"><input
																type="checkbox" class="is_display" checked="checked"
																data="${tableDetails[0]}"><span></span></label></td>
													</c:if>
												</c:if>
											</c:forEach>
											<td>
												<button type="button" id="prd_${tableDetails[0]}"
													class="btn btn-warning" onclick="createNewProduct(this.id)">
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
					<!-- END Datatables Content -->

					<div class="block full subclass" style="display: none;">


						<!-- Dropzone Title -->
						<div class="block-title">
							<div class="block-options pull-right">
								<a href="javascript:void(0)"
									class="btn btn-alt btn-sm btn-primary" onclick="saveProduct()">Save</a>
								<a class="btn btn-alt btn-sm btn-primary" data-toggle="tooltip"
									title="Cancel" onclick="cancelForm()"><i
									class="fa fa-times"></i></a>
							</div>
							<h2>
								<strong>Add </strong>Product
							</h2>
						</div>

						<form:form id="addProductForm" modelAttribute="addProuct"
							method="POST" class="form-horizontal form-bordered">
							<div class="form-group">
								<div class="col-md-12">
									<label for="example-nf-password">Title</label> <input
										type="text" id="title" name="title" class="form-control required-validate"
										placeholder="Title"> <input type="hidden" id="prd_id"
										name="prd_id" value="0">
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-12">
									<label for="example-nf-password">Tenure</label> <input
										type="text" id="tenure" name="tenure" class="form-control required-validate keyup-numeric"
										placeholder="Tenure">
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-12">
									<label for="example-nf-password">Plan Nights</label> <input
										type="text" id="planDays" name="planDays" class="form-control required-validate keyup-numeric"
										placeholder="Plan Nights">
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-12">
									<label for="example-nf-password">Description</label>
									<fieldset>
										<div class="form-group">
											<div class="col-xs-12">
												<textarea id="description" name="description"
													class="ckeditor"></textarea>
											</div>
										</div>
									</fieldset>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-6">
									<label for="example-nf-password">White Price</label> <input
										type="text" class="form-control required-validate keyup-numeric" placeholder="White Price"
										id="whitePrice" name="whitePrice">
								</div>
								<div class="col-md-6">
									<label for="example-nf-password">Purple Price</label> <input
										type="text" class="form-control required-validate keyup-numeric" placeholder="Purple Price"
										id="purplePrice" name="purplePrice">
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-6">
									<label for="example-nf-password">White Base Price</label> <input
										type="text" class="form-control required-validate keyup-numeric" name="whiteBasePrice"
										id="whiteBasePrice" placeholder="White Base Price">
								</div>
								<div class="col-md-6">
									<label for="example-nf-password">Purple Base Price</label> <input
										type="text" class="form-control required-validate keyup-numeric" name="purpleBasePrice"
										id="purpleBasePrice" placeholder="Purple Base Price">
								</div>
							</div>

							<div class="form-group form-actions" style="text-align: center;">
								<a href="#" class="btn btn-primary" onclick="saveProduct()"><i
									class="fa fa-check"></i> Save</a>
							</div>

						</form:form>
					</div>
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

	<jsp:include page="AllJs.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
	<script type="text/javascript">
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

			$("#title").val("");
			$("#tenure").val("");
			$("#planDays").val("0");
			$("#description").val("");
			$("#whitePrice").val("0");
			$("#purplePrice").val("0");
			$("#whiteBasePrice").val("0");
			$("#purpleBasePrice").val("0");
			$("#prd_id").val("0");
		}

		function createNewProduct(id) {
			$(".mainclass").hide();
			$(".subclass").show();
			if (id != "0") {
				$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/getTblproductdetails",
							data : $("#addProductForm").serialize()
									+ "&mainPrdId=" + id.split("_")[1],
							dataType : 'json',
							async : false,
							success : function(response) {
								$("#title").focus().val(response.title);
								$("#tenure").val(response.tenure);
								$("#planDays").focus().val(response.planDays);
								$("#description").val(response.description);
								$('.cke_wysiwyg_frame').contents().find('body')
										.html(response.description);
								$("#whitePrice").focus().val(
										response.whitePrice);
								$("#purplePrice").val(response.purplePrice);
								$("#whiteBasePrice").focus().val(
										response.whiteBasePrice);
								$("#purpleBasePrice").val(
										response.purpleBasePrice);
								$("#prd_id").val(response.id);

							}
						});
			}

		}

		function deleteProduct(id) {
			$("#top-loading-start").click();
			$
					.ajax({
						type : "GET",
						url : "${pageContext.servletContext.contextPath}/masters/deleteTblProduct",
						data : "&prdId=" + id.split("_")[1],
						dataType : 'json',
						async : false,
						success : function(response) {
							$('#confirm-model').modal('hide');
							if (response == "false") {
								alertDiv("alert-danger",
										"This Event has some data in system, so you can not delete this event!!");
							} else {
								$("#top-loading-stop").click();
								$("#mainPrdTr_" + id.split("_")[1]).remove();
								alertDiv("alert-success",
										"Event deleted successfully!!");
							}
						}
					});

		}

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
										url : "${pageContext.request.contextPath}/masters/setPrdType",
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

		$(".is_display")
				.on(
						'change',
						function() {
							var chk = 0;
							if ($(this).prop("checked") == true) {
								chk = 1;
							}

							$
									.ajax({
										type : "GET",
										url : "${pageContext.request.contextPath}/masters/setPrdType",
										data : "prd_id=" + $(this).attr('data')
												+ "&chk=" + chk
												+ "&type=display",
										dataType : 'json',
										success : function(response) {
											$("#top-loading-stop").click();
											alert("Save Successfully!!");
										}
									});
						});

		function saveProduct() {
			$('#addProductForm').validate().element("#title");
			$('#addProductForm').validate().element("#planDays");
			$('#addProductForm').validate().element("#whitePrice");
			$('#addProductForm').validate().element("#purplePrice");
			$('#addProductForm').validate().element("#whiteBasePrice");
			$('#addProductForm').validate().element("#purpleBasePrice");
			$('#description').val(
					$('.cke_wysiwyg_frame').contents().find('body').html());
			$("#top-loading-start").click();
			if(validateData('.required-validate','required') == false && validateData('.keyup-numeric','number') == false){
				$
				.ajax({
					type : "POST",
					url : "${pageContext.servletContext.contextPath}/masters/addTblProduct",
					data : $("#addProductForm").serialize(),
					dataType : 'json',
					async : false,
					success : function(response) {
						if (response.split("~")[0] == "y") {
							var msgText = $("#cat_id").val() == 0 ? "redirect_success_common"
									: "redirect_success_common_update";
							if ('${isInnerCall}' == "1") {
								var ulEl = $("#venueEDIT").next().next();
								$(ulEl).append(
										'<li data-cc="'
												+ response.split("~")[2]
												+ '" class="es-visible">'
												+ $("#venuename").val()
												+ '</li>');
								$('#general-model').modal('hide');
							} else {
								$("#top-loading-stop").click();
								window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminproduct/lerLMbSlsU4F7LZI68gRNA==/1/"
										+ msgText + "/0";

							}

						} else {
							alertDiv("alert-danger", response.split("~")[1]);
						}
					}
				});
			}
			

		}

		$('#addProductForm').validate(
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
						planDays : {
							required : true,
							number : true
						},
						whitePrice : {
							required : true,
							number : true
						},
						purplePrice : {
							required : true,
							number : true
						},
						whiteBasePrice : {
							required : true,
							number : true
						},
						purpleBasePrice : {
							required : true,
							number : true
						}
					},
					messages : {
						title : 'Please enter Title!',
						planDays : 'Please enter Plan Days!',
						whitePrice : 'Please enter White Price!',
						purplePrice : 'Please enter Purple Price!',
						whiteBasePrice : 'Please enter White Base Price!',
						purpleBasePrice : 'Please enter Purple Base Price!'
					}
				});
	</script>
</body>
</html>