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
		<div class="content-body">
			<div class="container-fluid">
				<div class="page-titles">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">App</a></li>
						<li class="breadcrumb-item active"><a
							href="javascript:void(0)">Upgrade Membership</a></li>
					</ol>
				</div>
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Upgrade Membership</h4>
							</div>
							<div class="card-body">
								<div class="basic-form">
									<form:form id="contactform">
										<div class="form-group row">
											<label class="col-sm-2 col-form-label"
												style="text-align: right: ;"> Upgrade :</label>
											<div class="col-sm-10">
												<textarea class="form-control" rows="4" name="comment"
													id="comment"
													placeholder="Please type your Requirements ...."
													required="required">
</textarea>

											</div>
											<div class="col-sm-10">
												<input type="hidden" class="col-sm-2 col-form-label"
													id="memberid" name="memberid" value="${sessionBean.cid}">
											</div>
										</div>
										<div class="form-group row">
											<div class="form-group col-md-12" style="text-align: end;">
												<!--  <button type="button" class="btn btn-primary">UPGRADE NOW</button> -->
												<input type="button" class="btn btn-primary" id="submit"
													onclick="ChackPersons()" value="UPGRADE NOW">
											</div>
										</div>
									</form:form>
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
	<script
		src="${pageContext.request.contextPath}/resources/js/pages/tablesDatatables.js"></script>
	<script>
		function bookit() {
			$(".sidebar-item-darkok").hide();
			$(".sidebar-item-dark").show();

		}
		function ChackPersons() {
			if ((document.getElementById("comment").value) == '') {
				alert("Please Enter the Mandatory feilds")

			} else {
				$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/upgradeplan",
							data : $("#contactform").serialize(),
							dataType : 'json',
							async : false,
							success : function(response) {
								if (response == "true") {
									//location.reload();
									$(".sidebar-item-darkok").show();
									$(".sidebar-item-dark").hide();

									alert("Your Plan Upgradation Request is Submitted !")
									window.location.href = "${pageContext.request.contextPath}/customer-dash/upgrade-membership";
								} else {
									alert("Something Went Wromg, Please try After Sometime. ")
								}
							}

						});

			}
		}

	
	</script>

</body>

</html>