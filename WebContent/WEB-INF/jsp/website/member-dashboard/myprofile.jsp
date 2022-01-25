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
                <!-- row -->
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
											<h4 class="text-primary mb-0">${md.preMemberName} ${md.memberName}</h4>
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
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="profile-tab">
                                    <div class="custom-tab-1">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item"><a href="#personal-details" data-toggle="tab" class="nav-link active show">Personal Details</a></li>
                                            <!-- <li class="nav-item"><a href="#family-details" data-toggle="tab" class="nav-link ">Co App Details</a></li> -->
                                            <!-- <li class="nav-item"><a href="#account-settings" data-toggle="tab" class="nav-link">Account Settings</a> -->
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                            <div id="personal-details" class="tab-pane fade active show">
                                                <div class="profile-personal-info" style="border-bottom: 1px dotted #afafaf;">
                                                    <h4 class="text-primary mb-4 mt-4">Membership details</h4>
                                                    <div class="row mb-2">
                                                        <div class="col-sm-3 col-5">
                                                            <h5 class="f-w-500">Membership id <span class="pull-right">:</span></h5>
                                                        </div>
                                                        <div class="col-sm-9 col-7"><span>${md.membercode}</span>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-2">
                                                        <div class="col-sm-3 col-5">
                                                            <h5 class="f-w-500">Membership Valid From<span class="pull-right">:</span>
                                                            </h5>
                                                        </div>
                                                        <div class="col-sm-9 col-7"><span>${dates[0]}</span>
                                                        </div>
                                                    </div>
                                                    <!-- <div class="row mb-2">
                                                        <div class="col-sm-3 col-5">
                                                            <h5 class="f-w-500">Type of Membership <span class="pull-right">:</span></h5>
                                                        </div>
                                                        <div class="col-sm-9 col-7"><span>Red</span>
                                                        </div>
                                                    </div> -->
                                                    <div class="row mb-2">
                                                        <div class="col-sm-3 col-5">
                                                            <h5 class="f-w-500">Membership Valid Till<span class="pull-right">:</span></h5>
                                                        </div>
                                                        <div class="col-sm-9 col-7"><span>${dates[1]}</span>
                                                        </div>
                                                    </div>
                                                    <!--  <div class="row mb-2">
                                                        <div class="col-sm-3 col-5">
                                                            <h5 class="f-w-500">Type of Apartment<span class="pull-right">:</span></h5>
                                                        </div>
                                                        <div class="col-sm-9 col-7"><span>Studio</span>
                                                        </div>
                                                    </div> -->
                                                   <!--   <div class="row mb-2">
                                                        <div class="col-sm-3 col-5">
                                                            <h5 class="f-w-500">ERCV Points<span class="pull-right">:</span></h5>
                                                        </div>
                                                        <div class="col-sm-9 col-7"><span>1000.00</span>
                                                        </div>
                                                     </div> -->
                                                </div>
                                                <div class="profile-personal-info" style="border-bottom: 1px dotted #afafaf;">
                                                    <h4 class="text-primary mb-4 mt-4">Personal details</h4>
                                                    <div class="basic-form">
                                                        <form>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-3">
                                                                    <label>Salutation</label>
                                                                    <select id="preMemberName" name="preMemberName" class="form-control" size="1">
					                                                    <option value="Mr." ${md.preMemberName == 'Mr.'? 'selected' : ''}>Mr.</option>
					                                                    <option value="Mrs." ${md.preMemberName == 'Mrs.'? 'selected' : ''}>Mrs.</option>
					                                                    <option value="Mis." ${md.preMemberName == 'Mis.'? 'selected' : ''}>Miss.</option>
					                                                    <option value="Ms." ${md.preMemberName == 'Ms.'? 'selected' : ''}>Ms.</option>
					                                                </select>
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Full Name</label>
                                                                    <input type="text" class="form-control" value="${md.memberName}">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Email ID</label>
                                                                    <input type="text" class="form-control" value="${md.emailId}">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Mobile</label>
                                                                    <input type="text" class="form-control" value="${md.mobileNo}">
                                                                    <div class="custom-control custom-checkbox mb-3 checkbox-success">
                            											<input type="checkbox" class="custom-control-input" checked="" id="customCheckBox3" required="">
                            											<label class="custom-control-label" for="customCheckBox3" style="font-size: 14px;">WhatsApp communication is ON</label>
                            										</div>
                                                                </div>
                                                               <!--  <div class="form-group col-md-3">
                                                                    <label>Alternate Email ID</label>
                                                                    <input type="text" class="form-control" value="chauhan.satyam@gmail.com">
                                                                </div> -->
                                                            </div>
                                                            <div class="form-row">
                                                                
                                                                <div class="form-group col-md-3">
                                                                    <label>Alternate Mobile No</label>
                                                                    <input type="text" class="form-control" value="${md.altMobileNo}">
                                                                    
                                                                </div>
                                                               <!--  <div class="form-group col-md-3">
                                                                    <label>Gender</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                        <option selected>Please Select...</option>
                                                                        <option>Male</option>
                                                                        <option>Female</option>
                                                                    </select>
                                                                </div> -->
                                                                <div class="form-group col-md-3">
                                                                    <label>*Date of Birth</label>
                                                                    <input type="date" class="atepicker-default form-control picker__input" value="${md.doB}">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Anniversary Date</label>
                                                                    <input type="date" class="atepicker-default form-control picker__input" value="${md.anniversaryDate}">
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                               <!--  <div class="form-group col-md-3">
                                                                    <label>Marital Status</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                        <option selected>Please Select...</option>
                                                                        <option>Single</option>
                                                                        <option>Married</option>
                                                                        <option>Separated</option>
                                                                    </select>
                                                                </div> -->
                                                                
                                                                <!-- <div class="form-group col-md-3">
                                                                    <label>*Nationality</label>
                                                                     <input type="text" class="form-control" value="Indian">
                                                                </div> -->
                                                               <!--  <div class="form-group col-md-3">
                                                                    <label>Profession</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                        <option selected>Please Select...</option>
                                                                        <option>Business</option>
                                                                        <option>Salaried</option>
                                                                        <option>Self-employed</option>
                                                                        <option>Others</option>
                                                                    </select>
                                                                </div> -->
                                                            </div>
                                                            <div class="form-row">
                                                               <!--  <div class="form-group col-md-3">
                                                                    <label>Type of Credit Card Owned</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                         <option value="Black" selected>Black</option>
                                                                          <option value="Platinum">Platinum</option>
                                                                         <option value="Titanium">Titanium</option>
                                                                        <option value="Other">Other</option>
                                                                         <option value="None">None</option>
                                                                    </select>
                                                                </div> -->
                                                              <!--   <div class="form-group col-md-3">
                                                                    <label>Frequent Flyer</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                         <option value="Domestic" selected="">Domestic</option>
                                                                                                            <option value="International">International</option>
                                                                                                            <option value="Both">Both</option>
                                                                                                            <option value="None">None</option>
                                                                    </select>
                                                                </div> -->
                                                                <!-- <div class="form-group col-md-3">
                                                                    <label>*Preferred mode of contact</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                          <option value="Phone Call">Phone Call</option>
                                                                                                            <option value="E- Mail" selected="">E- Mail</option>
                                                                                                            <option value="Web">Web</option>
                                                                                                            <option value="Letter">Letter</option>
                                                                                                            <option value="Fax">Fax</option>
                                                                    </select>
                                                                </div> -->
                                                                <!-- <div class="form-group col-md-3">
                                                                    <label>Service Location</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                         <option value="">Please select</option>
                                                                                                        <option value="1">Chennai</option>
                                                                                                        <option value="2">Bangalore - Millers Road</option>
                                                                                                        <option value="3">Hyderabad</option>
                                                                                                        <option value="4">Delhi - Bikaji</option>
                                                                                                        <option value="5">Kolkata</option>
                                                                                                        <option value="6">Mumbai-Andheri</option>
                                                                                                        <option value="7" selected="">Ahmedabad</option>
                                                                    </select>
                                                                </div> -->
                                                            </div>
                                                            <!-- <div class="form-row">
                                                                <div class="form-group col-md-6">
                                                                    <label>Facebook ID</label>
                                                                    <input type="text" class="form-control" placeholder=" ID">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Instagram ID</label>
                                                                    <input type="text" class="form-control" placeholder=" ID">
                                                                </div>
                                                            </div> -->
                                                        </form>
                                                        <!-- <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">Sign in</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div> -->
                                                        
                                                    </div>
                                            </div>
                                            <div class="profile-personal-info" style="border-bottom: 1px dotted #afafaf;">
                                                    <h4 class="text-primary mb-4 mt-4">Postal address</h4>
                                                    <div class="basic-form">
                                                        <form>
                                                            <div class="form-row">
                                                              <!--   <div class="form-group col-md-3">
                                                                    <label>Door/Apt No</label>
                                                                    <input type="text" class="form-control" value="24">
                                                                </div> -->
                                                                 <!-- <div class="form-group col-md-3">
                                                                    <label>*Area / Locality</label>
                                                                    <input type="text" class="form-control" value="Isanpur Road,Maninagar,">
                                                                </div> -->
                                                                <div class="form-group col-md-3">
                                                                    <label>Address</label>
                                                                    <input type="text" class="form-control" value="${md.address}">
                                                                </div>
                                                               
                                                                <div class="form-group col-md-3">
                                                                    <label>*Country</label>
                                                                    <input type="text" class="form-control" value="India">
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-3">
                                                                    <label>State</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>City</label>
                                                                    <input type="text" class="form-control" value="${md.resCity}">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Postal Code</label>
                                                                    <input type="text" class="form-control" value="${md.pinCode}">
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <!-- <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">Sign in</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div> -->
                                                        
                                                    </div>
                                            </div>
                                            <div class="profile-personal-info" style="border-bottom: 1px dotted #afafaf;">
                                                   <!--  <h4 class="text-primary mb-4 mt-4">Bank Details</h4>
                                                    <div class="basic-form">
                                                        <form>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-3">
                                                                    <label>*Payee Account No.</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>*Account type</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                         <option value="">Choose Account Type</option>
                                                                        <option value="Current">Current</option>
                                                                        <option value="Saving">Saving</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>*IFSC Code</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>*Account Holder Name</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-3">
                                                                    <label>Main Applicant Name</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Bank Name</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Bank Branch City</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                         <option value="">Choose City</option>
                                                                        <option value="city-1">City</option>
                                                                        <option value="city-2">City</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Cancelled Cheque Copy <br><span style="font-size: 9px;">(Main Applicant Name should be mentioned on the cancelled Cheque copy.)</span></label>
                                                                   <div class="input-group">
                                                                        <div class="custom-file">
                                                                            <input type="file" class="custom-file-input">
                                                                            <label class="custom-file-label">Choose file</label>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">Save</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div>
                                                        
                                                    </div> -->
                                            
                                        <!--   
                                          <h4 class="text-primary mb-4 mt-4">Terms & Conditions</h4>
                                            <div class="col-lg-12 mb-3 mt-3">
                                                <ul class="list-icons">
                                                    <li><span class="align-middle mr-2"><i class="ti-angle-right"></i></span> Please ensure that the name mentioned in the cancelled chq copy and the Primary applicant name should be the same.</li>
                                                    <li><span class="align-middle mr-2"><i class="ti-angle-right"></i></span> Pls ensure that the image of the cancelled chq copy is legible.</li>
                                                    <li><span class="align-middle mr-2"><i class="ti-angle-right"></i></span> Pls ensure that the IFSC code , the Account number, Account holder name & Account type mentioned by you on the website and on the cancelled chq copy are the same.</li>
                                                    <li><span class="align-middle mr-2"><i class="ti-angle-right"></i></span> Pls ensure that the name is clearly printed on the cancelled chq copy that you are submitting</li>
                                                    <li><span class="align-middle mr-2"><i class="ti-angle-right"></i></span> In case of Joint account, pls ensure that the primary applicant name is also part of the cancelled chq copy.</li>
                                                    <li><span class="align-middle mr-2"><i class="ti-angle-right"></i></span> Pls ensure that your bank account name should also match with the name mentioned in the cancelled chq copy, Payee name and the primary name.</li>
                                                    <li><span class="align-middle mr-2"><i class="ti-angle-right"></i></span> Pls note that the bank details are to be provided if you have made your initial down payment or EMI payment in Cash, Chq, DD,ACH,ECS modes only.</li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-12 col-6">
        										<div class="custom-control custom-checkbox mb-3">
        											<input type="checkbox" class="custom-control-input" id="customCheckBox1" required="">
        											<label class="custom-control-label" for="customCheckBox1"> I have read the above mandatory requirements and agree to the Terms and Conditions.</label>
        										</div>
        									</div> 
        									-->
        									<div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">Sign in</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div>
                                                            
                                                 </div>
                                                 </div>           
                                                            
                                                            
                                            <div id="family-details" class="tab-pane fade ">
                                               
                                               <div class="profile-personal-info">
                                                    <h4 class="text-primary mb-4 mt-4">Co-applicant</h4>
                                                    <div class="basic-form" >
                                                        <form>
                                                            <div class="form-row" >
                                                                <div class="form-group col-md-6">
                                                                    <label>Relationship of co-applicant with primary member</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                        <option selected>Please Select...</option>
                                                                        <option>Spouse</option>
                                                                        <option>Other Relations</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Co-applicant Name</label>
                                                                    <input type="text" class="form-control" value="Nikita Chauhan">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>*Mobile No</label>
                                                                    <input type="text" class="form-control" value="+918128696181">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>Date of Birth</label>
                                                                    <input type="date" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>Email-Id</label>
                                                                    <input type="text" class="form-control" value="chauhan.satyam@gmail.com">
                                                                </div>
                                                            </div>
                                                             <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">Save</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <h4 class="text-primary mb-4 mt-4">Spouse Details</h4>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-3">
                                                                    <label>Name</label>
                                                                    <input type="text" class="form-control" value="Nikita">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Email-Id</label>
                                                                    <input type="text" class="form-control" value="chauhanns2007@gmail.com">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Date of Birth</label>
                                                                    <input type="date" class="form-control" value="">
                                                                </div>
                                                                  <div class="form-group col-md-3">
                                                                    <label>*Mobile No</label>
                                                                    <input type="text" class="form-control" value="+918128696181">
                                                                </div>
                                                            </div>
                                                             <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">Save</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <h4 class="text-primary mb-4 mt-4">Children Details</h4>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-3">
                                                                    <label>No of children</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                        <option selected>Please Select...</option>
                                                                        <option>0</option>
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                    </select>
                                                                </div>
                                                                 <div class="form-group col-md-3">
                                                                    <label>*Child Name(1)</label>
                                                                     <input type="text" class="form-control" value="Indian">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Gender</label>
                                                                    <select id="inputState" class="form-control default-select">
                                                                        <option selected>Please Select...</option>
                                                                        <option>Male</option>
                                                                        <option>Female</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>*Date of Birth</label>
                                                                    <input type="date" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Email-Id</label>
                                                                    <input type="text" class="form-control" value="chauhanns2007@gmail.com">
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label>Nationality</label>
                                                                    <input type="text" class="form-control" value="Indian">
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">Save</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <h4 class="text-primary mb-4 mt-4">Parent Details</h4>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-6">
                                                                    <label>Father's Name</label>
                                                                    <input type="text" class="form-control" value="Natverlal">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>*Mother's Name</label>
                                                                    <input type="text" class="form-control" value="Dharmishta">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Email-Id</label>
                                                                    <input type="text" class="form-control" value="chauhan.satyam@gmail.com">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Email-Id</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Mobile No.</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Mobile No.</label>
                                                                    <input type="text" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Date of Birth</label>
                                                                    <input type="date" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Date of Birth</label>
                                                                    <input type="date" class="form-control" value="">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>Anniversary Date</label>
                                                                    <input type="date" class="form-control" value="">
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">SAVE</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div>
                                                    </div>
                                               </div>
                                            </div>
                                            
                                            
                                            
                                            
                                            <%-- <div id="account-settings" class="tab-pane fade ">
                                                <div class="pt-3">
                                                    <div class="settings-form">
                                                        <h4 class="text-primary">Change Password</h4>
                                                        <form>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-4">
                                                                    <label>*Current Password</label>
                                                                    <input type="password" placeholder="Password" class="form-control">
                                                                </div>
                                                                <br>
                                                                <div class="form-group col-md-4">
                                                                    <label>*New Password</label>
                                                                    <input type="password" placeholder="Password" class="form-control">
                                                                </div>
                                                                <br>
                                                                <div class="form-group col-md-4">
                                                                    <label>*Re-enter New Password</label>
                                                                    <input type="text" placeholder="Re-enter New Password" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-12" style="text-align: end;">
                                                                <button type="submit" class="btn btn-primary">SAVE</button>
                                                                <button type="submit" class="btn btn-success">Reset</button>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <p>
																	<strong>Note: </strong> Password should be more than 8 characters with atleast 1 number (1,2,3...), atleast 1 special character (!@#$%^&*().,/?'":;[]+=_-\), atleast 1 uppercase letter and atleast 1 lowercase letter
																</p>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div> --%>
                                        </div>
                                    </div>
									<!-- Modal -->
									<div class="modal fade" id="replyModal">
										<div class="modal-dialog modal-dialog-centered" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title">Post Reply</h5>
													<button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
												</div>
												<div class="modal-body">
													<form>
														<textarea class="form-control" rows="4">Message</textarea>
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-danger light" data-dismiss="modal">Close</button>
													<button type="button" class="btn btn-primary">Reply</button>
												</div>
											</div>
										</div>
									</div>
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
 
</body>

</html>