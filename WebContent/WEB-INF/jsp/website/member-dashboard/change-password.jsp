<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
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
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Profile</a></li>
					</ol>
                </div>
                    <div class="row">
                    <div class="col-lg-12">
                        <div class="profile card card-body px-3 pt-3 pb-0">
                            <div class="profile-head">
                                <div class="photo-content">
                                    <div class="cover-photo"></div>
                                </div>
                                <div class="profile-info">
									<div class="profile-photo">
										<img src="${pageContext.request.contextPath}/resources/img/placeholders/avatars/avatar5@2x.jpg" class="img-fluid rounded-circle" alt="">
									</div>
									<div class="profile-details">
										<div class="profile-name px-3 pt-2">
											<p>Name</p>
											<h4 class="text-primary mb-0">${md.memberName}</h4>
										</div>
										<div class="profile-email px-2 pt-2">
											<p>Email</p>
											<h4 class="text-muted mb-0">${md.emailId}</h4>
										</div>
										<div class="dropdown ml-auto">
											<a href="#" class="btn btn-primary light sharp" data-toggle="dropdown" aria-expanded="true"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li class="dropdown-item"><i class="fa fa-user-circle text-primary mr-2"></i> Uplod Profile Image</li>
												<li class="dropdown-item"><i class="fa fa-user-circle text-primary mr-2"></i> Uplod Cover Photo</li>
												<li class="dropdown-item"><i class="fa fa-users text-primary mr-2"></i> Logout</li>
											</ul>
										</div>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                   <div class="col-xl-12 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Change Password</h4>
                            </div>
                            <div class="card-body">
                                <div class="basic-form">
                                    <form:form id="customer-changepass">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">*Current Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" id="o_pass" name="o_pass"  placeholder="Current Password" class="form-control required-validate">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">*New Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" id="n_pass" name="n_pass" class="form-control required-validate" placeholder="New Password">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">*Re-enter New Password</label>
                                            <div class="col-sm-9">
                                                <input type="password"  id="nc_pass" name="nc_pass" class="form-control required-validate" placeholder="Re-enter New Password">
                                            </div>
                                        </div>
                                        <!-- <div class="form-group">
                                                                <p>
																	<strong>Note: </strong> Password should be more than 8 characters with atleast 1 number (1,2,3...), atleast 1 special character (!@#$%^&*().,/?'":;[]+=_-\), atleast 1 uppercase letter and atleast 1 lowercase letter
																</p>
                                                            </div> -->
                                        <div class="form-group row">
                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="button" id="savebtn" onclick="changepassword();" class="btn btn-primary">SAVE</button>
                                                               
                                                                </div>
                                            </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
					</div>
                </div>
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->

       <jsp:include page="footer.jsp"></jsp:include>

    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
 
  <jsp:include page="script.jsp"></jsp:include>
  <script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
 <script type="text/javascript">
	function changepassword(){
		if(validateData('.required-validate','required') == false){
			if($("#n_pass").val() == $("#nc_pass").val()){
				if($("#o_pass").val() == '${payDet[1]}'){
					$.ajax({
						type:"POST",
						url:"${pageContext.servletContext.contextPath}/masters/changepassword",
						data:$("#customer-changepass").serialize()+"&memid="+'${sessionBean.cid}'+"&isreset=0",
						dataType: 'json',
						async:false,
						success: function(response){
							if(response == "true"){
								alert("Password has been changed successfully !!");
								window.location.href = "${pageContext.request.contextPath}/customer-dash/dashboard-changepassword";
							}else{ 
								alert("Please try again later !!");
							}
						}
					});
				}else{
					alert("Old password does not match !!");
				}
				
			}else{
				$("#nc_pass").after('<span class="error_required" style="color:red;">Password and confirm password must be same.</span>');
			}
			
		}
		
	}
</script>
</body>

</html>