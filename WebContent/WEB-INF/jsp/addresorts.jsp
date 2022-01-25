<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html class="no-js" lang="en"> 

    <head>
        <meta charset="utf-8">

        <title>Karma Suites - Login</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.jpg">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr.min.js"></script>
    </head>
   
    <body>
    
    
        <div id="page-wrapper">
            <!-- Preloader -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Pro</strong>UI</h1>
                <div class="inner">
                    <h3 class="text-light visible-lt-ie10"><strong>Loading..</strong></h3>
                    <div class="preloader-spinner hidden-lt-ie10"></div>
                </div>
            </div>
            <!-- END Preloader -->

            <!-- Page Container -->
        
            <div id="page-container" class="sidebar-mini sidebar-visible-lg-mini sidebar-no-animations">
                
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
                                    <i class="gi gi-drink sidebar-nav-icon"></i>Add Resorts
                                </h1>
                            </div>
                            
                        </div>
                        <ul class="breadcrumb breadcrumb-top">
                            <li>Dashboard </li>
                            <li><a href="">Add Resorts</a></li>
                        </ul>
                        
                         <!-- Dropzone Block -->
                                <div class="block full">
                                    <!-- Dropzone Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                           <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-primary" data-toggle="block-toggle-fullscreen"><i class="fa fa-desktop"></i></a>
                                        </div>
                                        <h2><strong>Add </strong>Resorts</h2>
                                    </div>
                                        <div class="form-group">
                                            <label for="example-nf-password">Title</label>
                                            <input type="text" id="example-nf-password" name="example-nf-password" class="form-control" placeholder="Fill Title">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="example-nf-password">Area</label>
                                            <input type="text" id="example-nf-password" name="example-nf-password" class="form-control" placeholder="Fill Area">
                                        </div>
                                        
                                        <div class="form-group">
                                             <label for="example-nf-password">Description</label>
                                              <fieldset>
                                                <div class="form-group">
                                                    <div class="col-xs-12">
                                                        <textarea id="textarea-ckeditor" name="textarea-ckeditor" class="ckeditor"></textarea>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                        
                                        <div class="form-group" style="padding: 20px;">
                                              <script>
                                                        var num = 1;
                                                        function after_preview_images() {
                                                            var total_after_file = document.getElementById("ThumbImage").files.length;

                                                            $('#after_image_preview').html("");
                                                            for (var i = 0; i < total_after_file; i++) {
                                                                var addImg = '<div class="col-md-3 preview-after-image preview-after-show-' + num + '" id="preview-before-show-' + num + '">' +
                                                                    '<div class="after-image-cancel" data-no="' + num + '"><i class="fa fa-times-circle"></i></div>' +
                                                                    '<img class="img-responsive after-image-zone" src="' + URL.createObjectURL(event.target.files[i]) + '">' +
                                                                    '</div>';
                                                                $('#after_image_preview').append(addImg);
                                                                num = num + 1;
                                                            }
                                                        }
                                                    </script>
                                        
                                        
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-picture"></i> <strong>Upload Thumb Image </strong> (960 * 540)</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 10px;" />
                                            <a href="javascript:void(0)" class="btn btn-primary" style="margin-bottom:5px;" onclick="$('#ThumbImage').click()">Upload</a>
                                                                <input type="file" id="ThumbImage" name="ThumbImage" style="display: none;" class="form-control" onchange="after_preview_images();">
                                                                <div class="row" id="after_image_preview"> </div>
                                         </div>
                                         
                                          <div class="form-group" style="padding: 20px;">
                                              <script>
                                                        var num = 1;
                                                        function before_preview_images() {
                                                            debugger;
                                                            var total_before_file = document.getElementById("Images").files.length;
                                                            //if (total_before_file > 9) {
                                                            //    $.toast({
                                                            //        heading: 'Opps! somthing wents wrong',
                                                            //        text: 'Maximun 8 images uploaded.',
                                                            //        position: 'top-center',
                                                            //        loaderBg: '#fec107',
                                                            //        icon: 'error',
                                                            //        hideAfter: 3500
                                                            //    });
                                                            //    return false;
                                                            //}

                                                            $('#before_image_preview').html("");
                                                            for (var i = 0; i < total_before_file; i++) {
                                                                var addImg = '<div class="col-md-3 preview-before-image preview-before-show-' + num + '" id="preview-before-show-' + num + '">' +
                                                                    '<div class="before-image-cancel" data-no="' + num + '"><i class="fa fa-times-circle"></i></div>' +
                                                                    '<img class="img-responsive before-image-zone" src="' + URL.createObjectURL(event.target.files[i]) + '">' +
                                                                    '</div>';
                                                                $('#before_image_preview').append(addImg);
                                                                num = num + 1;
                                                            }
                                                        }
                                                    </script>
                                        
                                        
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-picture"></i> <strong>Upload Images </strong> (Max. 10 Images Upload)</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 10px;" />
                                             <a href="javascript:void(0)" class="btn btn-primary" style="margin-bottom:5px;" onclick="$('#Images').click()">Upload</a>
                                                                <input type="file" id="Images" name="Images" style="display: none;" class="form-control" onchange="before_preview_images();" multiple>
                                                                <div class="row" id="before_image_preview"></div>
                                         </div>
                                        
                                        
                                        
                                        
                                        <div class="form-group form-actions" style="text-align: center;margin-top: 10%;">
                                              <a href="#" class="btn btn-primary"><i class="gi gi-send"></i> Submit</a>
                                        </div>
                                </div>
                                <!-- END Dropzone Block -->
                        
                        
                        
                    </div>
                    <!-- END Page Content -->
                   
                    <?php include 'footer.php';?>
                   
                </div>
                <!-- END Main Container -->
            </div>
            <!-- END Page Container -->
        </div>
        <!-- END Page Wrapper -->

        <!-- Scroll to top link, initialized in js/app.js - scrollToTop() -->
        <a href="#" id="to-top"><i class="fa fa-angle-double-up"></i></a>

        <!-- User Settings, modal which opens from Settings link (found in top right user menu) and the Cog link (found in sidebar user info) -->
        <div id="modal-user-settings" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header text-center">
                        <h2 class="modal-title"><i class="fa fa-pencil"></i> Settings</h2>
                    </div>
                    <!-- END Modal Header -->

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form action="index.html" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
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
                                        <input type="email" id="user-settings-email" name="user-settings-email" class="form-control" value="admin@example.com">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="user-settings-notifications">Email Notifications</label>
                                    <div class="col-md-8">
                                        <label class="switch switch-primary">
                                            <input type="checkbox" id="user-settings-notifications" name="user-settings-notifications" value="1" checked>
                                            <span></span>
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Password Update</legend>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="user-settings-password">New Password</label>
                                    <div class="col-md-8">
                                        <input type="password" id="user-settings-password" name="user-settings-password" class="form-control" placeholder="Please choose a complex one..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="user-settings-repassword">Confirm New Password</label>
                                    <div class="col-md-8">
                                        <input type="password" id="user-settings-repassword" name="user-settings-repassword" class="form-control" placeholder="..and confirm it!">
                                    </div>
                                </div>
                            </fieldset>
                            <div class="form-group form-actions">
                                <div class="col-xs-12 text-right">
                                    <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-sm btn-primary">Save Changes</button>
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
        <script src="js/vendor/jquery.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>

        
    
    <script src="js/helpers/ckeditor/ckeditor.js"></script>
        
    </body>
</html>