<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
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
    
         <!-- Login Full Background -->
        <!-- For best results use an image with a resolution of 1280x1280 pixels (prefer a blurred image for smaller file size) -->
        <img src="${pageContext.request.contextPath}/resources/img/logo.jpg" alt="Login Full Background" class="full-bg animation-pulseSlow">
        <!-- END Login Full Background -->

        <!-- Login Container -->
        <div id="login-container" class="animation-fadeIn">
            <!-- Login Title -->
            <div class="login-title text-center">
                <h1><strong>Karma Suites</strong><br><small></small></h1>
            </div>
            <!-- END Login Title -->

            <!-- Login Block -->
            <div class="block push-bit login-title">
                <!-- Login Form -->
                <c:url var="loginUrl" value="/chklogin" />
                <form name="loginForm" id="loginForm" action="${loginUrl}" class="form-horizontal form-bordered form-control-borderless" method="post">
                
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="gi gi-envelope"></i></span>
                                <input type="text" id="username" name="ccode" class="form-control input-lg" placeholder="Email">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                <input type="password" id="password" name="password" class="form-control input-lg" placeholder="Password">
                            </div>
                        </div>
                    </div>
                    <div class="form-group form-actions">
                        <div class="col-xs-4">
                            <!-- <label class="switch switch-primary" data-toggle="tooltip" title="Remember Me?">
                                <input type="checkbox" id="login-remember-me" name="login-remember-me" checked>
                                <span></span>
                            </label> -->
                        </div>
                        <div class="col-xs-8 text-right">
                            <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> Login </button>
                        </div>
                    </div>
                    <!-- <div class="form-group">
                        <div class="col-xs-12 text-center">
                            <a href="javascript:void(0)" id="link-reminder-login"><small>Forgot password?</small></a> -
                            <a href="javascript:void(0)" id="link-register-login"><small>Create a new account</small></a>
                        </div>
                    </div> -->
                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                </form>
                <!-- END Login Form -->

                <!-- Reminder Form -->
                <form action="login_full.html#reminder" method="post" id="form-reminder" class="form-horizontal form-bordered form-control-borderless display-none">
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="gi gi-envelope"></i></span>
                                <input type="text" id="reminder-email" name="reminder-email" class="form-control input-lg" placeholder="Email">
                            </div>
                        </div>
                    </div>
                    <div class="form-group form-actions">
                        <div class="col-xs-12 text-right">
                            <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> Reset Password</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 text-center">
                            <small>Did you remember your password?</small> <a href="javascript:void(0)" id="link-reminder"><small>Login</small></a>
                        </div>
                    </div>
                </form>
                <!-- END Reminder Form -->

                <!-- Register Form -->
                <form action="login_full.html#register" method="post" id="form-register" class="form-horizontal form-bordered form-control-borderless display-none">
                    <div class="form-group">
                        <div class="col-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="gi gi-user"></i></span>
                                <input type="text" id="register-firstname" name="register-firstname" class="form-control input-lg" placeholder="Firstname">
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <input type="text" id="register-lastname" name="register-lastname" class="form-control input-lg" placeholder="Lastname">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="gi gi-envelope"></i></span>
                                <input type="text" id="register-email" name="register-email" class="form-control input-lg" placeholder="Email">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                <input type="password" id="register-password" name="register-password" class="form-control input-lg" placeholder="Password">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                <input type="password" id="register-password-verify" name="register-password-verify" class="form-control input-lg" placeholder="Verify Password">
                            </div>
                        </div>
                    </div>
                    <div class="form-group form-actions">
                        <div class="col-xs-6">
                            <a href="#modal-terms" data-toggle="modal" class="register-terms">Terms</a>
                            <label class="switch switch-primary" data-toggle="tooltip" title="Agree to the terms">
                                <input type="checkbox" id="register-terms" name="register-terms">
                                <span></span>
                            </label>
                        </div>
                        <div class="col-xs-6 text-right">
                            <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Register Account</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 text-center">
                            <small>Do you have an account?</small> <a href="javascript:void(0)" id="link-register"><small>Login</small></a>
                        </div>
                    </div>
                </form>
                <!-- END Register Form -->
            </div>
            <!-- END Login Block -->
        </div>
        <!-- END Login Container -->

        <!-- Modal Terms -->
        <div id="modal-terms" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Terms &amp; Conditions</h4>
                    </div>
                    <div class="modal-body">
                        <h4>Title</h4>
                        <p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <h4>Title</h4>
                        <p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <h4>Title</h4>
                        <p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Modal Terms -->
    
    
    
    
    
       <%--  <!-- Login Alternative Row -->
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-md-offset-1">
                    <div id="login-alt-container">
                        <!-- Title -->
                        <h1 class="push-top-bottom">
                            <i class="gi gi-flash"></i> <strong>Weltmeister</strong><br>
                            <small>Welcome to Weltmeister.</small>
                        </h1>
                        <!-- END Title -->
                        <div class="push-top-bottom">
                        <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="avatar">
                         </a>
                          </div>

                        <!-- Key Features -->
                        <!-- <ul class="fa-ul text-muted">
                            <li><i class="fa fa-check fa-li text-success"></i> Clean &amp; Modern Design</li>
                            <li><i class="fa fa-check fa-li text-success"></i> Fully Responsive &amp; Retina Ready</li>
                            <li><i class="fa fa-check fa-li text-success"></i> 10 Color Themes</li>
                            <li><i class="fa fa-check fa-li text-success"></i> PSD Files Included</li>
                            <li><i class="fa fa-check fa-li text-success"></i> Widgets Collection</li>
                            <li><i class="fa fa-check fa-li text-success"></i> Designed Pages Collection</li>
                            <li><i class="fa fa-check fa-li text-success"></i> .. and many more awesome features!</li>
                        </ul> -->
                        <!-- END Key Features -->

                        <!-- Footer -->
                        <footer class="text-muted push-top-bottom">
                            <small><span>2020</span> &copy; <a href="#">Shree Infotech</a></small>
                        </footer>
                        <!-- END Footer -->
                    </div>
                </div>
                <div class="col-md-5">
                    <!-- Login Container -->
                    <div id="login-container">
                        <!-- Login Title -->
                        <div class="login-title text-center">
                            <h1><strong>Login</strong> or <strong>Register</strong></h1>
                        </div>
                        <!-- END Login Title -->

                        <!-- Login Block -->
                        <div class="block push-bit">
                            <!-- Login Form -->
                            <c:url var="loginUrl" value="/chklogin" />
                            <form name="loginForm" id="loginForm" action="${loginUrl}" class="form-horizontal" method="post">
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-envelope"></i></span>
                                            <input type="text" id="username" name="ccode" class="form-control input-lg" placeholder="Email">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                            <input type="password" id="password" name="password" class="form-control input-lg" placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-actions">
                                    <div class="col-xs-4">
                                        <label class="switch switch-primary" data-toggle="tooltip" title="Remember Me?">
                                            <input type="checkbox" id="login-remember-me" name="login-remember-me" checked>
                                            <span></span>
                                        </label>
                                    </div>
                                    <div class="col-xs-8 text-right">
                                        <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> Login to Dashboard</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 text-center">
                                        <a href="javascript:void(0)" id="link-reminder-login"><small>Forgot password?</small></a> -
                                        <a href="javascript:void(0)" id="regform"><small>Create a new account</small></a>
                                    </div>
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                            </form>
                            <!-- END Login Form -->

                            <!-- Reminder Form -->
                            <form action="login_alt.html#reminder" method="post" id="form-reminder" class="form-horizontal display-none">
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-envelope"></i></span>
                                            <input type="text" id="reminder-email" name="reminder-email" class="form-control input-lg" placeholder="Email">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-actions">
                                    <div class="col-xs-12 text-right">
                                        <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> Reset Password</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 text-center">
                                        <small>Did you remember your password?</small> <a href="javascript:void(0)" id="link-reminder"><small>Login</small></a>
                                    </div>
                                </div>
                            </form>
                            <!-- END Reminder Form -->

                            <!-- Register Form -->
                            <!-- <form action="login_alt.html#register" method="post" id="form-register" class="form-horizontal display-none"> -->
                            <form:form id="addRegisterForm" modelAttribute="addRegister" method="POST" class="form-horizontal form-bordered" style="display:none;">
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-user"></i></span>
                                            <input type="text" id="companyname" name="companyname" class="form-control input-lg" placeholder="Company Name">
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-user"></i></span>
                                            <input type="text" id="regname" name="regname" class="form-control input-lg" placeholder="Client Name">
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <input type="text" id="address" name="address" class="form-control input-lg" placeholder="Address">
                                        
                                    </div>
                                    
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <div>
                                              <select id="state" name="state" class="form-control" size="1" onchange="setCitydetails()">
					                          <option data-cc="0">--Select State--</option>
											  <c:forEach var="stList" items="${stList}" varStatus="cnt">
									            <option data-cc="${stList[0]}" >${stList[1]}</option>
									          </c:forEach>
					                          </select>
					                          <input type="hidden" name="st_id" id="st_id">
					                          <input type="hidden" name="ct_id" id="ct_id">
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div id="cityList">
					                          <select id="city" name="city" class="form-control" size="1">
					                          <option data-cc="0">--Select City--</option>
											  </select>
					                          
					                      </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <div>
                                            <input type="text" id="mobileno" name="mobileno" class="form-control input-lg" placeholder="Mobile No">
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div>
	                                        <input type="text" id="phoneno" name="phoneno" class="form-control input-lg" placeholder="Phone No">
										</div>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-envelope"></i></span>
                                            <input type="text" id="emailid" name="emailid" class="form-control input-lg" placeholder="Email/Username">
                                            <input type="hidden" id="client_code" name="client_code" value="0">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                            <input type="password" id="passwordt" name="passwordt" class="form-control input-lg" placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                            <input type="password" id="password1" name="password1" class="form-control input-lg" placeholder="Verify Password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-actions">
                                    <div class="col-xs-6">
                                        <!-- <a href="#modal-terms" data-toggle="modal" class="register-terms">Terms</a>
                                        <label class="switch switch-primary" data-toggle="tooltip" title="Agree to the terms">
                                            <input type="checkbox" id="register-terms" name="register-terms">
                                            <span></span>
                                        </label> -->
                                    </div>
                                    <div class="col-xs-6 text-right">
                                        <button type="button" class="btn btn-sm btn-success" onclick="regAccount()"><i class="fa fa-plus"></i> Register Account</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 text-center">
                                        <small>Do you have an account?</small> <a href="javascript:void(0)" id="loginform"><small>Login</small></a>
                                    </div>
                                </div>
                                <input type="hidden" id="ismyupdate" name="ismyupdate" value="0">
                            </form:form> 
                            <!-- END Register Form -->
                        </div>
                        <!-- END Login Block -->
                    </div>
                    <!-- END Login Container -->
                </div>
            </div>
        </div>
        <!-- END Login Alternative Row -->

        <!-- Modal Terms -->
        <div id="modal-terms" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Terms &amp; Conditions</h4>
                    </div>
                    <div class="modal-body">
                        <h4></h4>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Modal Terms --> --%>
        
        
        

        <!-- jQuery, Bootstrap.js, jQuery plugins and Custom JS code -->
        <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/pages/formsValidation.js"></script>
		<script>$(function(){ FormsValidation.init(); });</script>
        <!-- Load and execute javascript code used only in this page -->
        <script src="${pageContext.request.contextPath}/resources/js/pages/login.js"></script>
        <script>$(function(){ Login.init(); });</script>
<script type="text/javascript">
if('${successMsg}' != "-1"){
	setTimeout(function(){ $("#alertDiv").fadeOut(); }, 2000);
}

$("#regform").on('click',function(){
	$("#addRegisterForm").show();
	$("#loginForm").hide();
});

$("#loginform").on('click',function(){
	$("#addRegisterForm").hide();
	$("#loginForm").show();
});

function setCitydetails(){
	$("#st_id").val($("#state option:selected").attr('data-cc')); 
	var id = $("#st_id").val();
	$.ajax({
	   	type:"GET",
		url:"${pageContext.request.contextPath}/clientuser/getCitydetails/"+id,
		dataType: 'json',
		success: function(response){
			$("#cityList").html('');
			var combo = $('<select class="cityname form-control" size="1" ></select>').attr("id", "city").attr("name", "city");
			combo.append('<option data-cc="0">--Select City--</option>');
			for(var i=0;i<response.length;i++){
				combo.append('<option data-cc="'+response[i][0]+'">' + response[i][1] + '</option>');
			}
			$("#cityList").append(combo);
		}
	});
      	  /*  $('#sub_menuIdEDIT').editableSelect(); */
}

function regAccount(){
	$('#addRegisterForm').validate().element("#companyname");
	$('#addRegisterForm').validate().element("#regname");
	$('#addRegisterForm').validate().element("#address");
	$("#addRegisterForm").val($("#city option:selected").attr('data-cc'));
	$("#addRegisterForm").val($("#state option:selected").attr('data-cc'));
	$('#addRegisterForm').validate().element("#city");
	$('#addRegisterForm').validate().element("#state");
	$('#addRegisterForm').validate().element("#emailid");
	$('#addRegisterForm').validate().element("#password1");
	$('#addRegisterForm').validate().element("#passwordt");
	
	$("#ct_id").val($("#city option:selected").attr('data-cc'));
	$("#st_id").val($("#state option:selected").attr('data-cc'));
	
	var c_code = $("#city option:selected").val();
	var c_name = $("#companyname").val();
	var client_code = c_code.substring(0,2).toUpperCase()+c_name.substring(0,2).toUpperCase();
	$("#client_code").val(client_code);
	
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/clientuser/addClientReg",
		data:$("#addRegisterForm").serialize(),
		dataType: 'json',
		async:false,
		success: function(response){
		if(response.split("~")[0] == "y"){
				var msgText  = $("#cat_id").val() == 0 ? "redirect_success_common" : "redirect_success_common_update";
				if('${isInnerCall}' == "1"){
					var ulEl = $("#venueEDIT").next().next();
					$(ulEl).append('<li data-cc="'+response.split("~")[2]+'" class="es-visible">'+$("#venuename").val()+'</li>');
					$('#general-model').modal('hide');
				}else{
					$("#top-loading-stop").click();	
					alert("Registration Successfully");
					//window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/category/7uBMj+758EVxnYlpz8jF0A==/1/"+msgText+"/0";
					window.location.reload();		 
				}
				
			}else{
				alertDiv("alert-danger",response.split("~")[1]);
			}
		}
	});
}

$.validator.addMethod("valueNotEquals", function(value, element, arg){
  return arg !== value;
}, "Value must not equal arg."); 	

$('#addRegisterForm').validate({
	
	errorClass: 'help-block animation-slideDown', // You can change the animation class for a different entrance animation - check animations page
    errorElement: 'div',
    errorPlacement: function(error, e) {
        e.parents('.form-group > div').append(error);
    },
    highlight: function(e) {
        $(e).closest('.form-group').removeClass('has-success has-error').addClass('has-error');
        $(e).closest('.help-block').remove();
    },
    success: function(e) {
        // You can use the following if you would like to highlight with green color the input after successful validation!
        e.closest('.form-group').removeClass('has-success has-error'); // e.closest('.form-group').removeClass('has-success has-error').addClass('has-success');
        e.closest('.help-block').remove();
    },
    rules: {
    	companyname: {
            required: true
        },
        regname: {
        	required: true
        },
        address: {
        	required: true
        },
        city: {
            valueNotEquals: "--Select City--"
        },state: {
            valueNotEquals: "--Select State--"
        },emailid: {
            required: true,
            email: true
        },passwordt: {
            required: true,
            minlength: 5
        },
        password1: {
            required: true,
            equalTo: '#passwordt'
        }
    },
    messages: {
    	companyname: 'Please enter Company Name!',
    	regname: 'Please enter Client Name!',
    	address: 'Please enter Address!',
    	city: {valueNotEquals: 'Please Select City!'},
    	state: {valueNotEquals: 'Please Select State!'},
    	passwordt: {
            required: 'Please provide a password',
            minlength: 'Your password must be at least 5 characters long'
        },
        password1: {
            required: 'Please provide a password',
            minlength: 'Your password must be at least 5 characters long',
            equalTo: 'Please enter the same password as above'
        }
    }
});
</script>
    </body>
</html>