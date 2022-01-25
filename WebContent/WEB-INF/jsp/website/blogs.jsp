<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                <h2>Our Blogs</h2>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Our Blogs</li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="section-overlay"></div>
    </section>
    <!-- BreadCrumb Ends -->

  <!-- Listing -->
    <section class="blog-list grid-list">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="blog-wrapper">
                        <div class="row">
                            <div class="col-sm-4 col-xs-12">
                                <div class="blog-item">
                                  <iframe src="https://www.facebook.com/plugins/video.php?height=476&href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fvideos%2F268343611398875%2F&show_text=true&width=476" width="100%" height="600" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe>
                                
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="blog-item">
                                    <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F266503164916253&width=500&show_text=true&height=640&appId" width="100%" height="600" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="blog-item">
                                <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F255832799316623&width=500&show_text=true&height=640&appId" width="100%" height="600" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="blog-item">
                                   <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F252228633010373&width=500&show_text=true&height=640&appId" width="100%" height="600" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="blog-item">
                                      <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F250689043164332&width=500&show_text=true&height=640&appId" width="100%" height="600" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-12">
                                <div class="blog-item">
                                    <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F250029073230329&width=500&show_text=true&height=634&appId" width="100%" height="600" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                   <!--  <div class="col-sm-12">
                        <div class="pagination-content">
                            <ul class="pagination">
                                <li><a href="#"> <i class="fa fa-angle-double-left" aria-hidden="true"></i> </a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> </a></li>
                            </ul>
                        </div>  
                    </div>   -->
                </div>
            </div>
        </div>
    </section>
    <!-- Listing Ends -->
    

<jsp:include page="footer.jsp"></jsp:include>

    <!-- Back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
    <!-- Back to top ends -->

   <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v10.0" nonce="LHqtgODW"></script>
    
    
    
<jsp:include page="script.jsp"></jsp:include>
</body>

</html>