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

		<div class="content-body">
			<div class="card">
				<div class="bootstrap-carousel">
					<div data-ride="carousel" class="carousel slide"
						id="carouselExampleCaptions">
						<ol class="carousel-indicators">
							<li class="active" data-slide-to="0"
								data-target="#carouselExampleCaptions"></li>
							<li data-slide-to="1" data-target="#carouselExampleCaptions"
								class=""></li>
							<li data-slide-to="2" data-target="#carouselExampleCaptions"
								class=""></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100"
									src="${pageContext.request.contextPath}/resources/website/app/images/big/im1.jpg">

							</div>
							<div class="carousel-item">
								<img alt="" class="d-block w-100"
									src="${pageContext.request.contextPath}/resources/website/app/images/big/im2.jpg">
							</div>
							<!--	<div class="carousel-item">
								<img alt="" class="d-block w-100"
									src="${pageContext.request.contextPath}/resources/website/app/images/big/im3.jpg">
							</div> -->
							<div class="carousel-item">
								<img alt="" class="d-block w-100"
									src="${pageContext.request.contextPath}/resources/website/app/images/big/im4.jpg">
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>



		<div class="row"
			style="padding-left: 15px; padding-right: 15px; padding-bottom: 80px;">


			<c:forEach var="tableDetails" items="${resortList}" varStatus="cnt">
				<div class="col-xl-2 col-xxl-3 col-lg-3 col-md-4 col-6">
					<div class="card text-center">
						<div class="card-body">
							<img width="150" height="150"
								src="${pageContext.request.contextPath}/resources/${tableDetails[2]}"
								class="rounded-circle" alt="">
							<h6 class="font-w600 fs-16 mb-1">
								<a
									href="${pageContext.request.contextPath}/app/AppresortDestinatin/${tableDetails[0]}"
									class="text-black">${tableDetails[1]}</a>
							</h6>
						</div>
					</div>
				</div>
			</c:forEach>




		</div>
		<!--  -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- The image Modal -->


		<!--**********************************
        Main wrapper end
    ***********************************-->


		<jsp:include page="script.jsp"></jsp:include>
</body>

</html>