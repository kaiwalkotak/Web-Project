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
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Holiday Utilization</a></li>
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
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                   <div class="col-xl-12 col-lg-12">
                         <div class="card">
                            <div class="card-body">
                                <!-- Default accordion -->
                                <div id="accordion-one" class="accordion accordion-primary">
                                    <div class="accordion__item">
                                        <div class="accordion__header rounded-lg" data-toggle="collapse" data-target="#default_collapseOne">
                                            <span class="accordion__header--text">Membership Details</span>
                                            <span style="float: right;margin-top: -0.5%;"> 
                                            <button type="button" class="btn btn-rounded btn-outline-light btn-xs" style="color:white;"><span class="btn-icon-left text-warning"><i class="fa fa-print color-warning"></i></span>Print</button>
                                            </span>
                                        </div>
                                        <div id="default_collapseOne" class="collapse accordion__body show" data-parent="#accordion-one">
                                            <div class="">
                                             <div class="profile-personal-info" style="border-bottom: 1px dotted #afafaf;">
                                                    <h4 class="text-primary mb-4 mt-4"></h4>
                                                    <div class="row">
                    									<div class="col-xl-6">
                    										<div class="grid-col mb-4">
                    										           <div class="row mb-2">
                                                                            <div class="col-sm-4">
                                                                                <h5 class="f-w-500">Membership id : <span class="pull-right"></span></h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span>${md.membercode}</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row mb-2">
                                                                            <div class="col-sm-4">
                                                                                <h5 class="f-w-500">Customer Name :<span class="pull-right"></span>
                                                                                </h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span>${md.preMemberName} ${md.memberName}</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row mb-2">
                                                                            <div class="col-sm-4">
                                                                                <h5 class="f-w-500">Address : <span class="pull-right"></span></h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span>${md.address},${md.resCity}, ${md.pinCode}</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row mb-2">
                                                                            <div class="col-sm-4" >
                                                                                <h5 class="f-w-500">Mobile :<span class="pull-right"></span></h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span>${md.mobileNo}</span>
                                                                            </div>
                                                                        </div>
                                                                         <div class="row mb-2">
                                                                            <div class="col-sm-4" >
                                                                                <h5 class="f-w-500">Location :<span class="pull-right"></span></h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span>${md.locationname}</span>
                                                                            </div>
                                                                        </div>
                                                                       <!--  <div class="row mb-2">
                                                                            <div class="col-sm-4" >
                                                                                <h5 class="f-w-500">Season:<span class="pull-right">:</span></h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span>Red</span>
                                                                            </div>
                                                                        </div> -->
                    										</div>
                    									</div>
                    									<div class="col-xl-6">
                    										<div class="grid-col mb-4">
                    										
                    										         <div class="row mb-2">
                                                                            <div class="col-sm-6">
                                                                                <h5 class="f-w-500"><strong>Usage Summary  (In Holiday)</strong></h5>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row mb-2">
                                                                            <div class="col-sm-4">
                                                                                <h5 class="f-w-500">Product :</h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span class="pull-right">${md.product.title}</span></div>
                                                                        </div>
                                                                        <div class="row mb-2">
                                                                            <div class="col-sm-4">
                                                                                <h5 class="f-w-500">Holiday Entitled :</h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span class="pull-right">${md.planDays}</span></div>
                                                                        </div>
                                                                        <div class="row mb-2" >
                                                                            <div class="col-sm-4">
                                                                                <h5 class="f-w-500">Holiday Booked :</h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span class="pull-right">-${memberother[0]}</span></div>
                                                                        </div>
                                                                        <div class="col-12 divider"></div>
                                                                        <div class="row mb-2" style="margin-top: 1%;">
                                                                            <div class="col-sm-4">
                                                                                <h5 class="f-w-500"><span class="pull-right">Balance</span></h5>
                                                                            </div>
                                                                            <div class="col-sm-8"><span class="pull-right">${memberother[1]}</span></div>
                                                                        </div>
                                                                     <!--    <div class="row mb-2" >
                                                                            <div class="col-sm-8">
                                                                                <h5 class="f-w-500" style="color: #e22b2b;">Maximum Balance*</h5>
                                                                            </div>
                                                                            <div class="col-sm-3"><span class="pull-right" style="color: #e22b2b;">21.00</span></div>
                                                                        </div>
                                                                        <div class="col-12 divider"></div>
                                                                        <div class="row mb-2" >
                                                                            <div class="col-sm-8">
                                                                                <h5 class="f-w-500"><span class="pull-right">Account Balance</span></h5>
                                                                            </div>
                                                                            <div class="col-sm-3"><span class="pull-right">21.00</span></div>
                                                                        </div> -->
                    										
                    										</div>
                    									</div>
								</div>
								<div class="col-mb-5"> 
                                                    
                                                </div>
                                                 </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion__item">
                                        <div class="accordion__header collapsed rounded-lg" data-toggle="collapse" data-target="#default_collapseTwo">
                                            <span class="accordion__header--text">Holiday Entitled</span>
                                            <span class="accordion__header--indicator"></span>
                                        </div>
                                        <div id="default_collapseTwo" class="collapse accordion__body" data-parent="#accordion-one">
                                            <div class="">
                                              <div class="table-responsive">
                                                    <table class="table header-border table-responsive-sm">
                                                        <thead>
                                                            <tr>
                                                            	<th class="text-center">No.</th>
                                                                <th class="text-center">Entitlement Year</th>
                                                                <th class="text-center">Days-Apt</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="entitied" items="${entitied}" >
                                                             <tr>
                                                                <td class="text-center" style="color:#8743DF;">${entitied[0]}</td>
                                                                <td class="text-center">${entitied[1]}</td>
                                                                <td class="text-center">${entitied[2]}</td>
                                                            </tr>
                                                         </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion__item">
                                        <div class="accordion__header collapsed rounded-lg" data-toggle="collapse" data-target="#default_collapseThree">
                                            <span class="accordion__header--text">Holiday Booked/Blocked</span>
                                            <span class="accordion__header--indicator"></span>
                                        </div>
                                        <div id="default_collapseThree" class="collapse accordion__body" data-parent="#accordion-one">
                                            <div class="">
                                                
                                                 <div class="table-responsive">
                                                    <table class="table header-border table-responsive-sm">
                                                            <thead>
							                                    <tr>
							                                            <th class="text-center">HOLIDAY BOOKED</th>
							                                            <th class="text-center">DURATION</th>
							                                            <th class="text-center">PERSON TRAVELLING</th>
							                                            <th class="text-center">APP. BOOKED</th>
							                                            <th class="text-center">CHECK IN</th>
							                                            <th class="text-center">CHECK OUT</th>
							                                            <th class="text-center">ResType</th>
							                                            <th class="text-center">CREATED DATE</th>
							                                        </tr>
							                                </thead>
                                                        <tbody>
						                                    <c:forEach var="bookingDet" items="${bookingDet}">
						                                        	<tr>
						                                        		<td class="text-center">${bookingDet[0]}</td>
						                                        		<td class="text-center">${bookingDet[1]}</td>
						                                        		<td class="text-center">${bookingDet[2]}</td>
						                                        		<td class="text-center">${bookingDet[3]}</td>
						                                        		<td class="text-center">${bookingDet[4]}</td>
						                                        		<td class="text-center">${bookingDet[5]}</td>
						                                        		<td class="text-center">${bookingDet[6]}</td>
						                                        		<td class="text-center">${bookingDet[8]}</td>
						                                        	</tr>
						                                        </c:forEach>
						                                </tbody>
                                                    </table>
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