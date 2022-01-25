<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">
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
                <h2>Photo Gallery</h2>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Photo Gallery</li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="section-overlay"></div>
    </section>
    <!-- BreadCrumb Ends -->
    
    
     <!-- Top Destinations -->
    <section class="top-destinations-1">
        <div class="container">
            <div class="section-title text-center">
                <h2>Photo Gallery</h2>
                <div class="section-icon">
                    <i class="flaticon-diamond"></i>
                </div>
            </div>
        </div>
    </section>
    <!-- Top Destination Ends -->
  <!-- Full Tours -->
    <section class="full-tours">
        <div class="row">
            <div class="col-xs-6">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft1.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft2.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft3.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft4.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft5.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
             <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft6.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft7.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft8.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft9.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft10.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Full Tour Ends -->
    <!-- Full Tours -->
    <section class="full-tours">
        <div class="row">
            <div class="col-xs-6">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft1.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft2.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft3.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft4.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft5.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
             <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft6.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft7.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft8.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft9.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6">
                <div class="ft-item">
                    <div class="ft-image">
                        <img src="${pageContext.request.contextPath}/resources/website/images/ft10.jpg" alt="Image">
                        <div class="ft-overlay"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Full Tour Ends -->
    
       <!-- Top Destinations -->
    <section class="top-destinations-1">
        <div class="container">
            <div class="section-title text-center">
                <h2></h2>
            </div>
        </div>
    </section>
    <!-- Top Destination Ends -->

    

<jsp:include page="footer.jsp"></jsp:include>

    <!-- Back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
    <!-- Back to top ends -->

   
<jsp:include page="script.jsp"></jsp:include>
    
    
</body>

</html>