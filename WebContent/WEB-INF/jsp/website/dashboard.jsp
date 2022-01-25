<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="custheader.jsp"></jsp:include>
    
    
</head>
<body>

    <!-- start Container Wrapper -->
    <div id="container-wrapper">
        <!-- Dashboard -->
        <div id="dashboard">

            <a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>  

            <jsp:include page="custhead.jsp"></jsp:include>
            
            <jsp:include page="custside.jsp"></jsp:include>
            
            
            <div class="dashboard-content" >
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12" style="border: 2px solid #eceaea;">
                        <div class="dashboard-list-box" >
                            <h4 class="gray">#${md.membercode} | ${md.preMemberName} ${md.memberName}</h4>
                             <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-address-card"></i>
                                        Membor ID  :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">#${md.membercode} </label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-user"></i>
                                        Membor Name  :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">${md.preMemberName} ${md.memberName}</label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-envelope"></i>
                                        Email  :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">${md.emailId}</label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-phone"></i>
                                        Mobile No. :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">+91 ${md.mobileNo}</label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-file"></i>
                                         Co Applicant :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;"> ${md.coAppDetails}</label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-shopping-bag"></i>
                                         Product :</label>
                                    </div>
                                    <div class="col-md-4">
                                        <label style="text-align:left;">${md.product.title}</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align: right;"><i class="fa fa-clock-o"></i>
                                         Membership Tenure :</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align:left;">${md.product.tenure}</label>
                                    </div>
                                </div>
                                 <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-sun-o"></i>
                                         Utilized Nights :</label>
                                    </div>
                                    <div class="col-md-4">
                                        <label style="text-align:left;">${memberother[0]}</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align: right;"><i class="fa fa-sun-o"></i>
                                          Balance Nights :</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align:left;">${memberother[1]}</label>
                                    </div>
                                </div>
                            
                            
                            
                            
                            
                            <div class="col-md-12">
                            <div class="table-box" style="margin: 10px;">
                            <table class="basic-table booking-table">
                                <thead>
                                    <tr>
                                            <th class="text-center">HOLIDAY BOOKED</th>
                                            <th class="text-center">DURATION</th>
                                            <th class="text-center">PERSON TRAVELLING</th>
                                            <th class="text-center">APP. BOOKED</th>
                                            <th class="text-center">CHECK IN</th>
                                            <th class="text-center">CHECK OUT</th>
                                            <th class="text-center">ACTUALCOST</th>
                                            <th class="text-center">CREATED DATE</th>
                                        </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="bookingDet" items="${bookingDet}">
                                        	<tr>
                                        		<td>${bookingDet[0]}</td>
                                        		<td>${bookingDet[1]}</td>
                                        		<td>${bookingDet[2]}</td>
                                        		<td>${bookingDet[3]} App</td>
                                        		<td>${bookingDet[4]}</td>
                                        		<td>${bookingDet[5]}</td>
                                        		<td>${bookingDet[7]}</td>
                                        		<td>${bookingDet[8]}</td>
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
            <!-- Copyrights -->
            <div class="copyrights">
                <p>Copyright  &copy; 2020 Karma Resorts and Hospitality. All Rights Reserved. Designed By <a href="#" target="_blank">SHREE INFOTECH</a></p>
            </div>
        </div>
        <!-- Dashboard / End -->
    </div>
    <!-- end Container Wrapper -->


    <!-- Back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
    <!-- Back to top ends -->
    
    
     <jsp:include page="custjs.jsp"></jsp:include>
     
   
        
    
    
</body>

</html>