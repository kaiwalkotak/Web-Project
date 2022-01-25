<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

<jsp:include page="head.jsp"></jsp:include>

<body>
    <!-- Preloader -->
   <!--  <div id="preloader">
        <div id="status"></div>
    </div> -->
    <!-- Preloader Ends -->

<jsp:include page="header.jsp"></jsp:include>
    <!-- Breadcrumb -->
    <section class="breadcrumb-outer text-center">
        <div class="container">
            <div class="breadcrumb-content">
                <h2>Welcome To <br>Karma Resorts and Hospitality</h2>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page"><a >Pay Now</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="section-overlay"></div>
    </section>
    <!-- BreadCrumb Ends -->

   <section class="booking">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="booking-form booking-outer">
                        <form:form id="paynow-form">
                        	<div id="res-msg" style="text-align: center;background: #bbf9bb;padding: 2%;border: 1px solid #11ea11;display: none;">
		                		
		                	</div>
                            <div class="row">
                                <div class="form-group col-xs-12">
                                    <label>Name :</label>
                                    <input type="text" class="form-control blk" id="custname" name="custname" placeholder="Customer Name">
                                </div>
                                
                                <div class="form-group col-xs-6">
                                    <label>Phone Number :</label>
                                    <input type="text" class="form-control blk" id="mobileno" name="mobileno" placeholder="Mobile Number">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Email :</label>
                                    <input type="email" class="form-control blk" id="emailid" name="emailid" placeholder="Email ID">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Amount :</label>
                                    <input type="text" class="form-control blk-0" id="amount" name="amount" placeholder="Enter Amount" value="0">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Sales Executive Name :</label>
                                    <input type="text" class="form-control blk" id="salesexname" name="salesexname" placeholder="Salse Executive Name">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Select Id Proof Attachment :</label>
                                    <input type="file" id="up1" name="" class="form-control blk" placeholder="Id Proof Attachment">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Select Second Id Proof attachment :</label>
                                    <input type="file" id="up2" name="" class="form-control blk" placeholder="Second Id Proof attachment">
                                </div>
                               
                                <div class="col-xs-12">
                                    <div class="checkbox-outer">
                                        <input type="checkbox" name="" id="tandcchk"> I agree to the <a href="${pageContext.request.contextPath}/privacy-policy">Privacy Policy.</a>
                                        <input type="hidden" id="docUploadPath" name="docUploadPath" value="${docUploadPath}" >
										<input type="hidden" id="savePath" name="savePath" value="${savePath}">
										<input type="hidden" id="saveFullPath" name="saveFullPath" value="" class="blk" />
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div id="paybtnDiv" class="comment-btn">
                                        <a href="javascript:void(0);" id="savebtn" onclick="customerpay();" class="btn-blue btn-red"> Pay Now</a>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
                <div id="sidebar-sticky" class="col-md-4">
                    <aside class="detail-sidebar sidebar-wrapper">
                       
                        <div class="sidebar-item">
                            <div class="detail-title">
                                <h3>Other Popular Resorts</h3>
                            </div>
                            <div class="sidebar-content sidebar-slider">
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider1.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">Durga Residency</a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider2.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">Lemon Tree</a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider3.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">Ramada</a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider3.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">Park Regis</a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider3.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">Kohkoon Beach Resort</a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider3.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">The Mama's Resort and Camp</a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider3.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">UNA Smart The Watergate</a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider3.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">UNA Comfort Queen Plaza </a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                 <div class="sidebar-package">
                                    <div class="sidebar-package-image">
                                        <img src="${pageContext.request.contextPath}/resources/website/images/detailslider3.jpg" alt="Images">
                                    </div>
                                    <div class="destination-content sidebar-package-content">
                                        <h4><a href="#">UNA Smart Doon Castle  </a></h4>
                                        <div class="deal-rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>
                                            <span class="fa fa-star-o"></span>
                                        </div>
                                        <a href="#" class="btn-blue btn-red">View Now</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    
                        
                    </aside>
                </div>
            </div>
        </div>
    </section>
<jsp:include page="footer.jsp"></jsp:include>
    <!-- back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
<jsp:include page="script.jsp"></jsp:include>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script type="text/javascript">
function customerpay(){
	if($("#custname").val() != "" && $("#mobileno").val() != ""){
		if($("#tandcchk").prop("checked") == true){
			var isup1 = "false",isup2 = "false",newids = "";
			$("#savebtn").text('Please Wait ...');
			setTimeout(function () {
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath}/masters/savecustomerpay",
				data:$("#paynow-form").serialize(),
				dataType: 'json',
				async:false,
				success: function(response){
					var image =document.getElementById("up1").value;
					if(image != ''){
						uploadGroomBridePic("up1",response.split("~")[2]);
						isup1 = $("#saveFullPath").val();
					}
					image =document.getElementById("up2").value;
					if(image != ''){
						uploadGroomBridePic("up2",response.split("~")[2]);
						isup2 = $("#saveFullPath").val();
					}
					newids = response.split("~")[2];
				}
			});
			if(isup1 != "false" || isup2 != "false"){
				$.ajax({
					type:"POST",
					url:"${pageContext.servletContext.contextPath}/masters/updatecustomerdocument",
					data:$("#paynow-form").serialize()+"&newids="+newids+"&isup1="+isup1+"&isup2="+isup2,
					dataType: 'json',
					async:false,
					success: function(response){
					}
				});
			}
			$("#savebtn").text('Pay Now');
			if(newids != "0"){
				$("#paybtnDiv").html('').html('<a href="javascript:void(0);" id="savebtn" onclick="payinvoice('+newids+')" class="btn-blue btn-red"> Pay Now</a>');
				payinvoice(newids);
				/* alert("Customer payment details saved successfully !!");
				$("#savebtn").text('Pay Now'); */
			}
			
			},10);
		}else{
			alert("Please accept terms and conditions !!");
		}
		
	}else{
		alert("Please enter customer name and mobile no !!");
	}
}
function uploadGroomBridePic(inputFileId,masterId){
	var uploadDoc = new FormData();
	uploadDoc.append("file",inputFileId == "up1" ? up1.files[0] : up2.files[0]);
	var text = $("#"+inputFileId).val();
	text = text.substring(text.lastIndexOf("\\") + 1, text.length);
	var updatedFile = text.substring(0,text.indexOf("."))+"."+text.substring(text.indexOf(".")+1,text.length);
	uploadDoc.append("name", updatedFile);
	uploadDoc.append("docUploadPath",$('#docUploadPath').val()+masterId+"/");
	uploadDoc.append("savePath",$('#savePath').val()+masterId+"/");
	uploadDoc.append("masterId",masterId);
	$("#saveFullPath").val($("#savePath").val()+masterId+"/"+updatedFile);
	$.ajax({
		type: "POST",
		url: "${pageContext.servletContext.contextPath}/documentUpload.html?${_csrf.parameterName}=${_csrf.token}",
        data : uploadDoc ,
        dataType: 'text',
        processData : false,
        contentType : false,
        async:false,
        success : function(data) {
        
        },
        error : function(err) {}
    });
	
}
function payinvoice(id){
	var order_id = "";
	var options = {};
	$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/WS/generatpaymenteorderjava",
			data:$("#paynow-form").serialize()+"&encry="+id+"&encamt="+$("#amount").val(),
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
						    "description": "Ticket charges",
						    "image": "${pageContext.servletContext.contextPath}/resources/img/logo.png",
						    "order_id": order_id, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
						    "handler": function (response){
						       /*  alert(response.razorpay_payment_id);
						        alert(response.razorpay_order_id);
						        alert(response.razorpay_signature); */
						        savesuccesspaymentdetails(response.razorpay_payment_id,response.razorpay_order_id,response.razorpay_signature,id);
						    },
						    "prefill": {
						        "name": response[1][0],
						        "email": response[1][2],
						        "contact": response[1][1]
						    },
						    "notes": {
						        "address": "Ahmedabad Office"
						    },
						    "theme": {
						        "color": "#FF69B4"
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
function savesuccesspaymentdetails(payid,ordid,paysig,odid){
	 $.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/WS/savepaymentdetails",
			data:$("#paynow-form").serialize()+"&odid="+odid+"&payid="+payid+"&ordid="+ordid+"&paysig="+paysig,
			dataType: 'json',
			async:false,
			success: function(response){
				var innerhtml = '<b style="font-size: 17px;">Confirm!</b><br>'
            				  +	'Payment of Rs. '+$("#amount").val()+' has been successfully done for karmaresort product.<br>'
            				  +	'Status : Success<br>'
            				  +	'Transaction ID : '+payid;
				$("#res-msg").show();
				$("#res-msg").html(innerhtml);
				$(".blk").val("");$(".blk-0").val("0");
				$("#tandcchk").prop("checked",false);
				$("#paybtnDiv").html('').html('<a href="javascript:void(0);" id="savebtn" onclick="customerpay();" class="btn-blue btn-red"> Pay Now</a>');
			}
		});
}
</script>
</body>

</html>