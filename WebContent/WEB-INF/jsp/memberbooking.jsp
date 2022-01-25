<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Karma Suites</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <jsp:include page="AllCss.jsp"></jsp:include>  
         
         <style>
			#modelNotyTree3,#modelNotyTree2,#modelNotyTree93,#mProdNoty,#mProdCatNoty{background-color: #AE3E9A; color: white ! important; font-size: 14px; margin-bottom: 20px; margin-top: 10px; position: absolute; width: 100%;margin-left: 0px; border-radius: 5px 5px 5px 5px; padding-left: 6px; text-align: center; box-shadow: 0px 0px 3px 1px rgba(255, 255, 253, 0.15);z-index:10000;}
			#preview_div{display:none;position:absolute;z-index:110;left:400;top:100;width:15;height:15;}
			#removeTr:hover{cursor:pointer;}
			a.navbar-brand > h2{
			font-size:26px;
			}
			div.ui-dialog, #dialogueBoxAddItem{
			
			
			
			
				width : '20.3% important';				
			}
			a.codeimg:hover{cursor: move;}
			#prv{
			  	border: 1px solid;
			  	background: #b8e1fc; /* Old browsers */
				background: -moz-linear-gradient(top,  #b8e1fc 0%, #a9d2f3 10%, #90bae4 25%, #90bcea 37%, #90bff0 50%, #6ba8e5 51%, #a2daf5 83%, #bdf3fd 100%); /* FF3.6+ */
				background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#b8e1fc), color-stop(10%,#a9d2f3), color-stop(25%,#90bae4), color-stop(37%,#90bcea), color-stop(50%,#90bff0), color-stop(51%,#6ba8e5), color-stop(83%,#a2daf5), color-stop(100%,#bdf3fd)); /* Chrome,Safari4+ */
				background: -webkit-linear-gradient(top,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* Chrome10+,Safari5.1+ */
				background: -o-linear-gradient(top,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* Opera 11.10+ */
				background: -ms-linear-gradient(top,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* IE10+ */
				background: linear-gradient(to bottom,  #b8e1fc 0%,#a9d2f3 10%,#90bae4 25%,#90bcea 37%,#90bff0 50%,#6ba8e5 51%,#a2daf5 83%,#bdf3fd 100%); /* W3C */
				filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b8e1fc', endColorstr='#bdf3fd',GradientType=0 ); /* IE6-9 */
			    border: 0.001em solid #7B96B8;
			    float: left;
			    padding: 10px;
			    width: 222px;
			}
			#prv span{float: left; width: 100%; text-align: center;}
			.form-horizontal .control-label{
				text-align: left;
			}
		</style>

    </head>
  <body class="page-loading">
        <!-- Page Wrapper -->
        <div id="page-wrapper" >
        
            <!-- Preloader -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Karma</strong> Suites</h1>
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
                   <jsp:include page="HeadPanel.jsp"></jsp:include>
                   
                   <!-- Page content -->
                    <div id="page-content">
                        <!-- Tasks Header -->
                        <div class="content-header">
                            <div class="header-section">
                                <h1>
                                    <i class="fa fa-tasks"></i>Member Booking
                                </h1>
                            </div>
                        </div>
                        <!-- END Tasks Header -->

                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
				       ${successMsg}
				    </div>
                        
                       <div class="block full subclass" style="">
                          
                            <div class="block-title" id="det-show">
                                <h2><strong>Reservation | Utilized Nights: ${utiNights}| Balance Nights: ${remNights}</strong></h2>
                                 
                            </div>
                            
                            

                                    <!-- Basic Form Elements Content -->
                                    <form:form id="member-form" class="form-horizontal form-bordered">
                                        <div class="form-group">
                                            <div class="col-md-3">
                                                <input type="text" id="membercode" name="membercode" value="${member_code}" class="form-control" placeholder="Member code" readonly="readonly">
                                            </div>
                                             <div class="col-md-3">
                                                <input type="text" id="upHolidayBooked" name="upHolidayBooked" value="" class="form-control required-validate blank-class" placeholder="Upcoming holiday booked">
                                            </div>
                                            <div class="col-md-3">
                                                <select id="appBooked" name="appBooked" onchange="calculatedays()" class="form-control" size="1">
                                                    <option value="1">Apartment - 1</option>
                                                    <option value="2">Apartment - 2</option>
                                                    <option value="3">Apartment - 3</option>
                                                    <option value="4">Apartment - 4</option>
                                                    <option value="5">Apartment - 5</option>
                                                    
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" id="travelingPerson" name="travelingPerson" class="form-control required-validate blank-class"  placeholder="Person travelling">
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <div class="col-md-3">
                                                    <div class="input-daterange" data-date-format="dd/mm/yyyy">
                                                        <input type="text" id="checkIn" name="checkIn" onchange="calculatedays()" class="form-control required-validate blank-class" placeholder="Check In" autocomplete="off">
                                                    </div>
                                                 </div>
                                            
                                           
                                            <div class="col-md-3">
                                                        <div class="input-daterange" data-date-format="dd/mm/yyyy">
                                                            <input type="text" id="checkOut" name="checkOut" onchange="calculatedays()" class="form-control required-validate blank-class" placeholder="Check out" autocomplete="off">
                                                        </div>
                                                 </div>
                                            
                                             <div class="col-md-3">
                                                <input type="text" id="duration" name="duration" class="form-control" placeholder="Duration of stay" readonly="readonly">
                                            </div>
                                            <div class="col-md-3">
                                                <select id="resType" name="resType" class="form-control" size="1">
                                                    <option value="Regular">Regular</option>
													<option value="Complimentary">Complimentary</option>
                                                </select>
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <div class="col-md-3">
                                                <input type="text" id="actualPrice" name="actualPrice" class="form-control required-validate keyup-numeric" value="0" placeholder="Actual Cost">
                                            </div>
                                        </div>
                                        
                                        
                                         <div class="form-group">
                                            <div class="col-md-3">
                                              
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-3">
                                            	
                                            </div>
                                            <div class="col-md-3">
                                            	<input type="hidden" name="memberId" id="memberId" value="${member_id}">
                                            	<input type="hidden" name="encmemberId" id="encmemberId" value="${encmember_id}">
                                            	<input type="hidden" name="reservationId" id="reservationId" value="0">
                                            	<button type="button" class="btn btn-sm btn-info" id="savebtn" onclick="addnew()">ADD NEW</button>
                                           		<button type="button" class="btn btn-sm btn-info" id="savebtn" onclick="savememberbooking()">SUBMIT</button>
                                            	<button type="button" class="btn btn-sm btn-default" onclick="cancelmembers()">CANCEL</button>
                                             
                                            </div>
                                            <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-show_thumbnails"></i> <strong>BOOKING </strong> DETAILS</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                         
                                           
                           <div id="asfRow" style="margin-left: 20px;">
                                  <table id="bookingtable" class="table table-vcenter table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="text-center">HOLIDAY BOOKED</th>
                                            <th class="text-center">DURATION</th>
                                            <th class="text-center">PERSON TRAVELLING</th>
                                            <th class="text-center">APP. BOOKED</th>
                                            <th class="text-center">CHECK IN</th>
                                            <th class="text-center">CHECK OUT</th>
                                            <th class="text-center">RESTYPE</th>
                                            <th class="text-center">ACTUALCOST</th>
                                            <th class="text-center">CREATED DATE</th>
                                            <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
                                            <th class="text-center">ACTION</th>
                                           </c:if>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="bookingDet" items="${bookingDet}">
                                        	<tr id="booktr-${bookingDet[9]}">
                                        		<td>${bookingDet[0]}</td>
                                        		<td>${bookingDet[1]} Days</td>
                                        		<td>${bookingDet[2]}</td>
                                        		<td>${bookingDet[3]} Apartment</td>
                                        		<td id="stdate-${bookingDet[9]}">${bookingDet[4]}</td>
                                        		<td>${bookingDet[5]}</td>
                                        		<td>${bookingDet[6]}</td>
                                        		<td>${bookingDet[7]}</td>
                                        		<td>${bookingDet[8]}</td>
                                        		<c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
                                        		<td class="text-center">
                                        			<a href="javascript:void(0)" data-toggle="tooltip" title="Edit" class="btn btn-xs btn-default" onclick="getreservationdetails(${bookingDet[9]});"><i class="fa fa-pencil" style="color:#14bf14;"></i></a>
                                        			<a href="javascript:void(0)" class="btn btn-xs btn-default" onclick="deletebooking(${bookingDet[9]},${bookingDet[1]})"><i class="hi hi-trash" style="color:red;" ></i></a>
                                        			</td>
                                        		</c:if>
                                        	</tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                        </div>
                                        </div>
                                    </form:form>
                                    <!-- END Basic Form Elements Content -->
                                </div>
                       
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
						<script src="${pageContext.request.contextPath}/resources/js/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
	
	
<script type="text/javascript">         
App.datatables();
$('#example-datatable').dataTable({
    //columnDefs: [ { orderable: false, targets: [ 1, 2 ] } ],
    pageLength: 10,
    lengthMenu: [[10, 20, 30, -1], [10, 20, 30, 'All']]
});
function getreservationdetails(id){
	var SpecialTo = moment($("#stdate-"+id).html(), "DD/MM/YYYY");
	if (moment().diff(SpecialTo) < 0) {
		var data = [];
		for(var i=0;i<8;i++){
			if(i == 1 || i == 3){
				data[i] = ($("#booktr-"+id).find('td:eq('+i+')').text()).split(" ")[0];
			}else{
				data[i] = $("#booktr-"+id).find('td:eq('+i+')').text();
			}
		}
		$("#upHolidayBooked").val(data[0]);$("#duration").val(data[1]);$("#travelingPerson").val(data[2]);$("#appBooked").val(data[3]);
		$("#checkIn").val(data[4]);$("#checkOut").val(data[5]);$("#resType").val(data[6]);$("#actualPrice").val(data[7]);
		$("#reservationId").val(id);
	}else{
		 alert('You can not edit booking because startdate has past !!');
	}
	
}
function deletebooking(id,duration){
	var SpecialTo = moment($("#stdate-"+id).html(), "DD/MM/YYYY");
	if (moment().diff(SpecialTo) < 0) {
		var r = confirm("Are you sure you want to Delete ?");
		if(r){
			$('#page-wrapper').addClass('page-loading');
			setTimeout(function () {
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath}/masters/deletebooking",
				data:$("#member-form").serialize()+"&resid="+id,
				dataType: 'json',
				async:false,
				success: function(response){
					$("#booktr-"+id).remove();
					utilizedNight = utilizedNight - parseInt(duration);
					remNight = remNight + parseInt(duration);
					$("#det-show").html('').html('<h2><strong>Reservation | Utilized Nights: '+utilizedNight+'| Balance Nights: '+remNight+'</strong></h2>');
					$("#reservationId").val('0');
				}
			});
			$('#page-wrapper').removeClass('page-loading');
			},10);
		}
	} else {
	    alert('You can not delete booking because startdate has past !!');
	}
	
}
var utilizedNight = parseInt('${utiNights}');
var remNight = parseInt('${remNights}');
function savememberbooking(){
	if('${iseligible}' == "yes"){
		if(validateData('.required-validate','required') == false && validateData('.keyup-numeric','number') == false){
			if(calculatedays()){
				$('#page-wrapper').addClass('page-loading');
				setTimeout(function () {
				$.ajax({
					type:"POST",
					url:"${pageContext.servletContext.contextPath}/masters/savememberbooking",
					data:$("#member-form").serialize(),
					dataType: 'json',
					async:false,
					success: function(response){
						if(response.resType == "NO_DAYS_AVAILABLE"){
							alert("You have no(0) remaining nights in your membership !!");
						}else if(response.resType == "LESS_DAYS_AVAILABLE"){
							alert("You have only "+response.duration+" nights in your membership !!");
						}else{
							sendSMS(response.id);
							addnew();
						}
						
					}
				});
				$('#page-wrapper').removeClass('page-loading');
				},10);
			}
			
		}
	}else{
		alert("Received amount is less than 30% of total amount so you can not book holiday !!");
	}
	
}
function sendSMS(id){
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/WS/sendSMS",
		data:$("#member-form").serialize()+"&templatename=reservationsms"+"&resId="+id,
		dataType: 'json',
		async:false,
		success: function(response){
		}
	});
}
function calculatedays(){
	if($("#checkIn").val() != "" && $("#checkOut").val() != ""){
		var start = moment($("#checkIn").val(), "DD-MM-YYYY");
		var end = moment($("#checkOut").val(), "DD-MM-YYYY");
		var diffdays = moment.duration(end.diff(start)).asDays();
		if(diffdays < 1){
			alert("Check In date must be less than check out date !!");
			$("#duration").val(0);
			return false;
		}else{
			$("#duration").val(diffdays*parseInt($("#appBooked").val()));
			return true;
		}
		
	}else{
		$("#duration").val('0');
		return true;
	}
	
}


function cancelmembers(){
	window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/0/-1/0";
}
function addnew(){
	window.location.href="${pageContext.request.contextPath}/masters/member/booking/9ClwmrIG1Bx7gZjjkOvWOw==/0/-1/"+"${member_id}";
}

  
</script>
</body>
</html>