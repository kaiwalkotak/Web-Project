<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Weltmeister CRM</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <jsp:include page="AllCss.jsp"></jsp:include>  
    </head>
    <body>
        <div id="page-wrapper">
            <!-- Preloader -->
            <!-- Preloader functionality (initialized in js/app.js) - pageLoading() -->
            <!-- Used only if page preloader is enabled from inc/config (PHP version) or the class 'page-loading' is added in #page-wrapper element (HTML version) -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Weltmeister </strong>CRM</h1>
                <div class="inner">
                    <h3 class="text-light visible-lt-ie10"><strong>Loading..</strong></h3>
                    <div class="preloader-spinner hidden-lt-ie10"></div>
                </div>
            </div>
            <!-- END Preloader -->

            <div id="page-container" class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
                <jsp:include page="SidePanel.jsp"></jsp:include>
                
                <!-- Main Container -->
                <div id="main-container">
                    <jsp:include page="HeadPanel.jsp"></jsp:include>
                    
                    <!-- Page content -->
                    <div id="page-content">
                        <!-- Calendar Header -->
                        <div class="content-header">
                            <div class="header-section">
                                <h1>
                                    <i class="fa fa-calendar"></i>Calendar<br>
                                </h1>
                            </div>
                        </div>
                        
                        <!-- END Calendar Header -->

                        <!-- FullCalendar Content -->
                        <div class="block block-alt-noborder full">
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="block-section">
                                        <!-- Add event functionality (initialized in js/pages/compCalendar.js) -->
                                        <form>
                                            <div class="input-group">
                                                <input type="text" id="add-event" name="add-event" class="form-control" placeholder="Add Jobs">
                                                <div class="input-group-btn">
                                                    <button type="submit" id="add-event-btn" class="btn btn-primary"><i class="gi gi-plus"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="block-section">
                                        <!-- <div class="block-section text-center text-muted">
                                            <small><em><i class="fa fa-arrows"></i> Drag and Drop Events on the Calendar</em></small>
                                        </div> -->
                                        <ul class="calendar-events">
                                            <li style="background-color: #e74c3c">Pending Jobs</li>
                                            <li style="background-color: #f39c12">Current Jobs</li>
                                            <li style="background-color: #3498db">Completed Unpaid</li>
                                            <li style="background-color: #1abc9c">Completed Paid</li>
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <!-- FullCalendar (initialized in js/pages/compCalendar.js), for more info and examples you can check out http://arshaw.com/fullcalendar/ -->
                                    <div id="calendar"></div>
                                </div>
                            </div>
                        </div>
                        <!-- END FullCalendar Block -->
                        <!-- END FullCalendar Content -->
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

        
    </body>
</html>