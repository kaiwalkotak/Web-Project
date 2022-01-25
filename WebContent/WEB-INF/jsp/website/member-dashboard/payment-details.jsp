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
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Payment Details</a></li>
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
									<div class="profile-details botton-content ">
										<div class="profile-name px-3 pt-2 col-lg-4">
											<p style="margin-bottom: 0rem;">Welcome</p>
											<h4 class="text-primary mb-0">${md.preMemberName} ${md.memberName}</h4>
										</div>
										<div class="profile-email px-2 pt-2 col-lg-3">
											<p style="margin-bottom: 0rem;">Membership ID</p>
											<h4 class="text-muted mb-0">${md.membercode}</h4>
										</div>
										<div class="profile-email px-2 pt-2 col-lg-3">
											<p style="margin-bottom: 0rem;">Holiday Balance</p>
											<h4 class="text-muted mb-0">${memberother[1]} Nights</h4>
										</div>
										<!-- <div class="profile-email px-2 pt-2 col-lg-2">
											<p style="margin-bottom: 0rem;">RCP</p>
											<h4 class="text-muted mb-0">1000</h4>
										</div> -->
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- <div class="row">
                   <div class="col-xl-12 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Total due amount : ${pendingamaount} </h4>
                            </div>
                            <div class="card-body">
                                <div class="basic-form">
                                    <form>
                                        <div class="form-row">
                                            <div class="form-group col-md-3">
                                                <input type="text" class="form-control" placeholder="EMI : ₹ 0.00">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <input type="text" class="form-control" placeholder="ASF : ₹ 0.00">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <input type="text" class="form-control" placeholder="Total Amount : ₹ 0.00">
                                            </div>
                                            <div class="form-group col-md-3">
                                                 <button type="submit" class="btn btn-primary">MAKE PAYMENT</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                
                                <div class="card">
                                    <div class="card-body">
                                        <div id="accordion-five" class="accordion accordion-left-indicator">
                                            <div class="accordion__item">
                                                <div class="accordion__header collapsed" data-toggle="collapse" data-target="#left-indicator_collapseTwo">
                                                    <span class="accordion__header--text">ASF Details</span>
                                                    <span class="accordion__header--indicator"></span>
                                                </div>
                                                <div id="left-indicator_collapseTwo" class="collapse accordion__body" data-parent="#accordion-five">
                                                    <div class="accordion__body--text">
                                                    <div class="row">
                    									<div class="col-sm-4 col-6">
                    										<div class="custom-control custom-checkbox mb-3">
                    											<input type="checkbox" class="custom-control-input" id="customCheckBox1" required="">
                    											<label class="custom-control-label" for="customCheckBox1"></label> ASF - 2021-2022 <button type="button" class="btn btn-primary btn-xxs"> Advance</button>
                    										</div>
                    									</div>
                    									<div class="col-sm-2 col-6">
                    										<div class="custom-control custom-checkbox mb-3 checkbox-success">
                    											<input type="checkbox" class="custom-control-input" checked="" id="customCheckBox3" required="">
                    											<label class="custom-control-label" for="customCheckBox3">₹ 17386.00</label>
                    										</div>
                    									</div>
                    									<div class="col-sm-6 col-6">
                    									<div id="accordion-two" class="accordion accordion-danger-solid">
                                                        <div class="accordion__item">
                                                            <div class="accordion__header collapsed" data-toggle="collapse" data-target="#bordered_collapseTwo"> <span class="accordion__header--text">Points to be noted</span>
                                                                <span class="accordion__header--indicator"></span>
                                                            </div>
                                                            <div id="bordered_collapseTwo" class="collapse accordion__body" data-parent="#accordion-two">
                                                                <div class="accordion__body--text">
                                                                    <ul class="list-icons">
                                                                        <li><a href="javascript:void(0)"><span class="align-middle mr-2"><i class="fa fa-chevron-right"></i></span> It could take maximum 24 hours to credit ‘7 days’ entitlement in your account after payment.</a></li>
                                                                        <li><a href="javascript:void(0)"><span class="align-middle mr-2"><i class="fa fa-chevron-right"></i></span> Due to revision in ASF every year, the incremental differential value between the current year</a></li>
                                                                        <li><a href="javascript:void(0)"><span class="align-middle mr-2"><i class="fa fa-chevron-right"></i></span> ASF and the next year will be billed in the next invoice.</a></li>
                                                                        <li><a href="javascript:void(0)"><span class="align-middle mr-2"><i class="fa fa-chevron-right"></i></span> HFRP points cannot be used towards the payment of an Advance ASF.</a></li>
                                                                        <li><a href="javascript:void(0)"><span class="align-middle mr-2"><i class="fa fa-chevron-right"></i></span> You can advance maximum of one year’s inventory only.</a></li>
                                                                        <li><a href="javascript:void(0)"><span class="align-middle mr-2"><i class="fa fa-chevron-right"></i></span> If the available balance is above 40 days, entitlement recredit will not be done.</a></li>
                                                                    </ul>
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
                                </div>
                            </div>
                        </div>
					</div> --%>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Payment & Transaction History | Pending Payment : ${pendingamaount}</h4>
                                <div class="card-action mb-sm-0 my-2">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <button type="button" class="btn btn-rounded btn-outline-light btn-xs"><span class="btn-icon-left text-warning"><i class="fa fa-download color-warning"></i></span>Download</button>
                                        </li>
                                        <li class="nav-item">
                                            <button type="button" class="btn btn-rounded btn-outline-light btn-xs"><span class="btn-icon-left text-warning"><i class="fa fa-print color-warning"></i></span>Print</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body">
                                <!-- Nav tabs -->
                                <div class="default-tab">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#home"> EMI</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#profile"> ASF</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="home" role="tabpanel">
                                            <div class="pt-4" style="border: 1px solid #065897;">
                                                <div class="table-responsive">
                                                    <table class="table header-border table-responsive-sm">
                                                    	 <thead>
                                                            <tr>
                                                                <th class="text-center">Amount</th>
                                                                <th class="text-center">Payment Mode</th>
                                                                <th class="text-center">Payment Data</th>
                                                                <th class="text-center">Date</th>
                                                                <th class="text-center">Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="emiDet" items="${emiDet}" >
				                                              <tr>
				                                                   <td class="text-center" style="color:#8743DF;">${emiDet[2]}</td>
				                                                   <td class="text-center">${emiDet[5]}</td>
				                                                   <td class="text-center">${emiDet[6]}</td>
				                                                   <td class="text-center">${emiDet[3]}</td>
				                                                   <td class="text-center" id = "paybtnDiv_${emiDet[0]}" >
				                                                   <c:if test="${emiDet[4] eq 'Pending'}">
				                                                   		<span onclick="payinvoice(${emiDet[0]},0)" class="badge badge-${emiDet[4] eq 'RZ' ? 'success' : 'warning'}" style="${emiDet[4] eq 'RZ' ? '' : emiDet[4] eq 'RT' ? 'color:white' : 'background-color: #f5110b;color:white;cursor:pointer;'}">${emiDet[4] eq 'RZ' ? 'Cleared' : emiDet[4] eq 'RT' ? emiDet[4] : 'Pay Now'}</span>
				                                                   	</c:if>
				                                                   	<c:if test="${emiDet[4] ne 'Pending'}">
				                                                   		<span class="badge badge-${emiDet[4] eq 'RZ' ? 'success' : 'warning'}" style="${emiDet[4] eq 'RZ' ? '' : emiDet[4] eq 'RT' ? 'color:white' : 'background-color: #f5110b;color:white;cursor:pointer;'}">${emiDet[4] eq 'RZ' ? 'Cleared' : emiDet[4] eq 'RT' ? emiDet[4] : 'Pay Now'}</span>
				                                                   	</c:if>
				                                                   	</td>
				                                              </tr>
				                                             </c:forEach>
                                                           
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="profile">
                                             <div class="pt-4" style="border: 1px solid #065897;">
                                                  <div class="table-responsive">
                                                    <table class="table header-border table-responsive-sm">
                                                        <thead>
                                                            <tr>
                                                                <th class="text-center" >ASF Amount</th>
                                                                <th class="text-center">ASF Date</th>
                                                                <th class="text-center">Rec. Amount</th>
                                                                <th class="text-center">Rec. Date</th>
                                                                <th class="text-center">Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="asfDet" items="${asfDet}" >
                                                            <tr>
                                                                <td class="text-center" style="color:#8743DF;">${asfDet[2]}</td>
                                                                <td class="text-center">${asfDet[3]}</td>
                                                                <td class="text-center">${asfDet[4]}</td>
                                                                <td class="text-center">${asfDet[5]}</td>
                                                                <td class="text-center" id = "paybtnDivasf_${asfDet[0]}" >
                                                                <c:choose>
                                                                <c:when test="${asfDet[6] eq 'Pending'}">
				                                                   		<span onclick="payinvoice(${asfDet[0]},1)" class="badge badge-warning" style="background-color: #f5110b;color:white;cursor:pointer;">${asfDet[6]}</span>
				                                                   	</c:when>
				                                                   	<c:when test="${asfDet[6] eq 'Cleared'}">
				                                                   		<span class="badge badge-success" style="">${asfDet[6]}</span>
				                                                   	</c:when>
				                                                   	<c:otherwise>
				                                                   		<span class="badge badge-success" style="">${asfDet[6]}</span>
				                                                   	</c:otherwise>
				                                                   </c:choose>
				                                                 </td>
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
<form:form id="paynow-form">
</form:form>
  <jsp:include page="footer.jsp"></jsp:include>

    </div>
    
   <jsp:include page="script.jsp"></jsp:include>
 <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</body>
<script type="text/javascript">
function payinvoice(id,isasf){
	var order_id = "";
	var options = {};
	var callurl = "";
	if(isasf == "0"){
		callurl = "generatpaymenteorderjavaemi";
	}else{
		callurl = "generatpaymenteorderjavaasf";
	}
	$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/WS/"+callurl,
			data:$("#paynow-form").serialize()+"&encry="+id,
			dataType: 'json',
			async:false,
			success: function(response){
				if(response[0][0] != "has_error"){
					var orderdata = JSON.parse(response[0][0]);
					order_id = orderdata.id;
					options = {
							"key": '${KEY}', // Enter the Key ID generated from the Dashboard
						    "amount": "10000", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
						    "currency": "INR",
						    "name": "KARMA SUITES",
						    "description": "Karma charges",
						    "image": "${pageContext.servletContext.contextPath}/resources/img/logo.png",
						    "order_id": order_id, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
						    "handler": function (response){
						       /*  alert(response.razorpay_payment_id);
						        alert(response.razorpay_order_id);
						        alert(response.razorpay_signature); */
						        savesuccesspaymentdetails(response.razorpay_payment_id,response.razorpay_order_id,response.razorpay_signature,id,isasf);
						    },
						    "prefill": {
						        "name": response[1][0],
						        "email": response[1][2],
						        "contact": response[1][1]
						    },
						    "notes": {
						        "address": "Karma Office"
						    },
						    "theme": {
						        "color": "#8743DF"
						    }	
					};
					var rzp1 = new Razorpay(options);
					rzp1.open();
				    e.preventDefault();
				}else{
					alert("Somthing went wrong, Please try again later !!");
				}
				
			}
	});
}
function savesuccesspaymentdetails(payid,ordid,paysig,odid,isasf){
	 $.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/WS/savepaymentdetailsemi",
			data:$("#paynow-form").serialize()+"&odid="+odid+"&payid="+payid+"&ordid="+ordid+"&paysig="+paysig+"&isasf="+isasf,
			dataType: 'json',
			async:false,
			success: function(response){
				if(response == "true"){
					if(isasf == "0")
						$("#paybtnDiv_"+odid).html('').html('<span class="badge badge-success" >Cleared</span>');
					else
						$("#paybtnDivasf_"+odid).html('').html('<span class="badge badge-success" >Cleared</span>');
				}
				
			}
		});
}
</script>
</html>