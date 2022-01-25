<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

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
                <h2>Our Vision</h2>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Our Vision</li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="section-overlay"></div>
    </section>
    <!-- BreadCrumb Ends -->

    <section class="main-content detail">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="detail-content content-wrapper">   
                        <div class="description detail-box">
                            <img src="${pageContext.request.contextPath}/resources/website/images/vision1.png" alt="in_th_030_01_sm" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="description detail-box">
                            <div class="detail-title">
                                <h3>Our Vision</h3>
                            </div>
                            <div class="description-content">
                                <p style="text-align: justify;">We accept that movement is a transformational experience, that through movement we develop in information and comprehension of our general surroundings. Travel show us remarkable encounters that will be in our recollections for ever, let us find different societies, rehearse and learn different dialects, show us various approaches to communicate music, move, expressions.</p>
                                <p style="text-align: justify;">To make your holiday experience a dream come true</p>
                                
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </section>
    
    
    
    
    
    <!-- Trusted Partners -->
    <!--
    <section class="trusted-partners">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-4">
                    <div class="partners-title">
                        <h3>Our <span>Partners</span></h3>
                    </div>
                </div>
                <div class="col-md-9 col-xs-8">
                    <ul class="partners-logo partners-slider">
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner1.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner2.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner3.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner4.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner5.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner6.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner1.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner2.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner3.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner4.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner5.png" alt="Image"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/website/images/partner6.png" alt="Image"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    -->
    <!-- Trusted Partners Ends -->
    

<jsp:include page="footer.jsp"></jsp:include>

    <!-- Back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
    <!-- Back to top ends -->

   
<jsp:include page="script.jsp"></jsp:include>
    
    
</body>

</html>