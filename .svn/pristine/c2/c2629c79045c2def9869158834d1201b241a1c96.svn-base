<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">


<jsp:include page="head.jsp"></jsp:include>

<body>
<!-- 
    Preloader
    <div id="preloader">
        <div id="status"></div>
    </div>
    Preloader Ends
    
    
   
   header start
   
   
   
    -->
    
     <jsp:include page="header-1.jsp"></jsp:include>
    


 <!-- Breadcrumb -->
    <section class="breadcrumb-outer text-center">
        <div class="container">
            <div class="breadcrumb-content">
                <h2>&nbsp;</h2>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Payment Receipt</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Login</li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="section-overlay"></div>
    </section>
    <!-- BreadCrumb Ends -->

    <section class="login">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="login-form" style="margin-left: 25%;margin-right: 25%;">
                        <form:form id="loginform" >
                            <div class="row">
                                <div class="form-group col-xs-12">
                                    <label>Username</label>
                                    <input type="text" class="form-control required-validate" id="l_user" name="l_user" placeholder="Enter username or email id">
                                </div>
                                <div class="form-group col-xs-12">
                                    <label>Password</label>
                                    <input type="password" class="form-control required-validate" id="l_pass" name="l_pass" placeholder="Enter correct password">
                                </div>
                                <div class="col-xs-12">
                                    <div class="comment-btn">
                                        <a href="javascript:void(0)" onclick="checkcustomerlogin();" class="btn-blue btn-red">Login</a>
                                    </div>
                                </div>
                               
                                <!-- <div class="col-xs-12">
                                    <div class="login-accounts">
                                        <a href="forgot-password.php" class="forgotpw">Forgot Password</a> <br>
                                         Don't have an account? <a href="register.php"> Register here</a>
                                    </div>
                                </div> -->
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </section>


  <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer Ends -->  

    <!-- Back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
    
  <jsp:include page="script.jsp"></jsp:include>
  <script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
</body>
<script type="text/javascript">
	function checkcustomerlogin(){
		if(validateData('.required-validate','required') == false){
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath}/paymentlogin",
				data:$("#loginform").serialize(),
				dataType: 'json',
				async:false,
				success: function(response){
					if(response == "false" || response == "error"){
						alert("Username or password incorrect !!");
					}else if(response == "block"){
						alert("User is de-activeed, please contact at Karma suites !!");
					}else{
						window.location.href = "${pageContext.request.contextPath}/dashboardpay";
					}
				}
			});
		}
		
	}
</script>
</html>