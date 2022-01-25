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
				<h2>Videos Gallery</h2>
				<nav aria-label="breadcrumb">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Videos
							Gallery</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- BreadCrumb Ends -->

	<section class="blog">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Client Review</h2>
						<div class="section-icon">
							<i class="flaticon-diamond"></i>
						</div>
					</div>
				</div>



				<!-- **************************************** -->

			<%-- 	<c:forEach var="tableDetails" items="${VideoList}" varStatus="cnt">
					<c:forEach begin="0" end="${fn:length(tableDetails)-1}"
						varStatus="dataIndex">
						<div class="col-md-4 col-sm-12">
							<div class="blog-item">${tableDetails[dataIndex.index]}</div>
						</div>
					</c:forEach>
				</c:forEach> --%>

				<c:forEach var="tableHeader" items="${VideoList}"
					varStatus="loopCount">
					
						
						<div class="col-md-4 col-sm-12">
							<div class="blog-item">${tableHeader}</div>
						</div>
					
				</c:forEach>
				<!-- **************************************** -->






				<!-- 	<div class="col-md-4 col-sm-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/wvWXKqXRtj4" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/ukkEc_HHfQU" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>

				<div class="col-md-4 col-sm-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/Iblfuolc3dM" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/f0d5PaSHuVA" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/QyvQDJdu7jU" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/zE9Qd-33RnQ" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/1QnCb2jl8Bk" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/xjQjuH34oIo" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/dLMgBLSOJ3s" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/6IDAOrQvx3A" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="blog-item">
						<iframe width="360" height="200"
							src="https://www.youtube.com/embed/Lm_76FNSo2k" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div> -->

			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Back to top start -->
	<div id="back-to-top">
		<a href="#"></a>
	</div>
	<!-- Back to top ends -->


	<jsp:include page="script.jsp"></jsp:include>



</body>

</html>