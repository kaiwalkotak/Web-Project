<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Photo</a></li>
					</ol>
					<div class="clearfix" style="text-align: end;">
						<a href="${pageContext.request.contextPath}/app/index"
							class="btn btn-primary px-3 my-2 light"><i
							class="fa fa-reply"></i> Back to </a> <a href="${pageContext.request.contextPath}/app/index"
							class="btn btn-primary px-3 light ml-2 my-2"><i
							class="fa fa-home"></i> Home </a>
					</div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
							<div class="card-header">
								<h4 class="card-title">Photo Gallery</h4>
							</div>
							<div class="card-body pb-1">
								<div id="lightgallery" class="row">
								 <c:forEach var="tableDetails" items="${adminimages}" varStatus="cnt">
									<a  data-exthumbimage="${tableDetails[0]}" data-src="${tableDetails[0]}" class="col-lg-3 col-md-6 mb-4">
										<img src="${pageContext.request.contextPath}/resources/${tableDetails[0]}" style="width:100%;"/>
									</a>
									</c:forEach>
									
									
								</div>
							</div>
                        </div>
                        <!-- /# card -->
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
 
   <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <jsp:include page="script.jsp"></jsp:include>
	<script>
		$('#lightgallery').lightGallery({
			loop:true,
			thumbnail:true,
			exThumbImage: 'data-exthumbimage'
		});
	</script>
 
</body>

</html>