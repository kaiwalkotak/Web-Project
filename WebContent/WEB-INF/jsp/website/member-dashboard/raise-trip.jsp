<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>
<link href= 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
        rel='stylesheet'>
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
						<li class="breadcrumb-item active"><a
							href="javascript:void(0)">Raise Trip</a></li>
					</ol>
				</div>
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Raise Trip</h4>
							</div>
							<div class="card-body">
								<div class="basic-form">
									<form:form id="contactform">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Destination :</label>
											<div class="col-sm-4">
												<!-- <select class="form-control form-control-lg default-select ">
													<option>Select Destination</option>
													<option>Destination 1</option>
													<option>Destination 2</option>
													<option>Destination 3</option>
												</select> -->
												<select id="destination_id" name="destination_id"
													class="form-control"
													data-placeholder="Select Destination"
													style="min-width: 20em;">
													<option value="">-- Select Destination --</option>
													<c:forEach var="cityList" items="${destinationList}">

														<option value="${cityList[0]}"
															${md.resCity == cityList[1] ? 'selected' : ''}>${cityList[1]}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Select Date :</label>
											<label class="col-sm-1 col-form-label"
												style="text-align: rigth;">From</label>
											<div class="col-sm-3">
												<input type="hidden" class="col-sm-2 col-form-label"
													id="memberid" name="memberid" value="${sessionBean.cid}">
												<input class="form-control selector"
													type="text" name="startDateNE" min='${currentDate}'
													id="startDateNE" value="" required onchange="countDates()" autocomplete="off">
													<input type="hidden" id="startDate" name="startDate"><input type="hidden" id="endDate" name="endDate">
											</div>
											<label class="col-sm-1 col-form-label"
												style="text-align: rigth;">To</label>
											<div class="col-sm-3">
												<input class="form-control selector"
													type="text" name="endDateNE" min='${currentDate}'
													id="endDateNE" value="" onchange="countDates()" autocomplete="off">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Total Days :</label>
											<div class="col-sm-2">
												<input type="text" id="ttlDays" name="ttlDays"
													class="form-control" placeholder="Total Days" value=""
													disabled>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Person :</label> <label
												class="col-sm-1 col-form-label" style="text-align: rigth;">Adult</label>
											<div class="col-sm-3">
												<input class="form-control" type="text" placeholder="0"
													value="" id="adult" name="adult" onkeyup="NaNChack()">
											</div>
											<label class="col-sm-1 col-form-label"
												style="text-align: rigth;">Child</label>
											<div class="col-sm-3">
												<input class="form-control" type="text" placeholder="0"
													id="child" name="child" value="0" onkeyup="createTextBox()"
													onkeyup="createTextBox()">
											</div>

										</div>
										<!-- Creating new inpu tex Dynamically  -->
										<div id="childDiv"></div>
										<!-- 	<div class="form-group row">
											<label class="col-sm-2 col-form-label"
												style="text-align: left:;">1st Chilld Age</label>
											<div class="col-sm-3">
												<input class="form-control input-daterange-datepicker"
													type="text" name="startDate" id="startDate" value="">
											</div>

										</div>
										<div id="childDiv"></div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label"
												style="text-align: left;">2st Chilld Age</label>
											<div class="col-sm-3">
												<input class="form-control input-daterange-datepicker"
													type="text" name="startDate" id="startDate" value="">
											</div>

										</div> -->
										<!-- Creating new inpu tex Dynamically  -->
										<div class="form-group row">
											<label class="col-sm-3 col-form-label"> Remarks :</label>
											<div class="col-sm-9">
												<textarea class="form-control" rows="2" name="comment"
													id="comment"></textarea>
											</div>
										</div>
										<div class="form-group row">
											<div class="form-group col-md-12" style="text-align: end;">
												<input type="button" id="submit" onclick="sendDetails()"
													class="btn btn-primary" value="Raise Trip"> <input
													type="button" class="btn btn-success" value="RESET">
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
<script src="${pageContext.request.contextPath}/resources/website/member-dashboard/js/jquery-ui.js"></script>
</body>
<script type="text/javascript">
$( ".selector" ).datepicker({
	  dateFormat: "dd/mm/yy"
	});

function changedatefor(dt){
	var dtorg = dt.split("/");
	return dtorg[2]+"-"+dtorg[1]+"-"+dtorg[0]
}
	var pcc = 0;
	function countDates() {

		/* alert(document.getElementById("startDate").value + " | "
				+ document.getElementById("endDate").value); */

		var d1 = changedatefor(document.getElementById("startDateNE").value);
		var d2 = changedatefor(document.getElementById("endDateNE").value);
		var date1 = new Date(changedatefor(document.getElementById("startDateNE").value));
		var date2 = new Date(changedatefor(document.getElementById("endDateNE").value));
		var Difference_In_Time = date2.getTime() - date1.getTime();

		if (document.getElementById("startDateNE").value != ""
				&& document.getElementById("endDateNE").value != "") {
			var maxdays = maxDays(Difference_In_Time);
			if (maxdays) {

				if (d1 == d2) {
					alert("Both Date Are Same !")
				} else {

					if (!(document.getElementById("startDateNE").value) == ''
							&& (document.getElementById("endDateNE").value) == '') {

					} else {

						var Difference_In_Days = Difference_In_Time
								/ (1000 * 3600 * 24);
						if (isNaN(Difference_In_Days)) {
							//alert("NaN !")
							document.getElementById("ttlDays").value = 0;
						} else {
							if (Difference_In_Days < 0) {
								alert("Please Select valid Date  !")
								$("#startDateNE").val("");
								$("#endDateNE").val("");
								document.getElementById("ttlDays").value = 0;
							} else {
								//alert("set value of  toitle days: "+Difference_In_Days)
								document.getElementById("ttlDays").value = Difference_In_Days;

								//sendDetails();
							}

						}
					}

				}
			} else {

			}
		}

	}
	function ChackDestination() {
		if ((document.getElementById("destination_id").value) == '') {
			alert("Please Select Your Destination !")
			return false;
		} else {
			//alert("destination ok")
			return true;
		}
	}

	function sendDetails() {

		//alert("Ok sending")

		//alert("Destibation is " + flag);
		//alert("in--"+$("#ttlDays").val());
		var flag = ChackDestination();
		if (flag) {
			var flag2 = ChackDates();
			if (flag2) {
				var flag3 = ChackPersons();
				if (flag3) {
					var flag4 = childverify();
					if (flag4) {
						var flag5 = NaNChack();
						if (flag5) {
							$("#startDate").val(changedatefor($("#startDateNE").val()));
							$("#endDate").val(changedatefor($("#endDateNE").val()));;
							//************
							$
									.ajax({
										type : "POST",
										url : "${pageContext.servletContext.contextPath}/masters/TripRaiseMember",
										data : $("#contactform").serialize()
												+ "&ttlDays="
												+ $("#ttlDays").val(),
										dataType : 'json',
										async : false,
										success : function(response) {
											if (response == "true") {
												alert("Your Trip has been Raised !")
												//window.location.href = "/Karmasuites/customer-dash/raise-trip";
												newForm()
											} else if (response == "before") {
												alert(" Start or end date must be greater than today's date !")
											} else {
												alert("Start or end date must be greater than today's date !")
												//window.location.href = "/Karmasuites/customer-dash/raise-trip";
											}
										}
									});
							//****************
						}
					}

				}

			}

		}

	}

	//safe
	function ChackDates() {
		if ((document.getElementById("startDateNE").value) == '') {
			alert("Please Select Start Date !")
			return false;
		} else if ((document.getElementById("endDateNE").value) == '') {
			alert("Please Select End Date !")
			return false;
		} else {
			return true;
		}
	}

	function ChackPersons() {
		if ((document.getElementById("adult").value) == '') {
			alert("Please Enter Number Of Person Conut !")
			return false;
		} else {
			return true;
		}
	}

	function NaNChack() {
		if (isNaN(document.getElementById("adult").value)) {
			alert("Please Enter Valid Number Of Person Conut !")
			return false;
		} else if (isNaN(document.getElementById("child").value)) {
			alert("Please Enter Valid Number Of Child Conut !")
			return false;
		} else {
			return true;
		}
	}
	function maxChack() {
		if (10 < document.getElementById("child").value) {
			alert("Maximum 10 Children are Allowd !");
			document.getElementById("child").value = 0;
			createTextBox();
			//RemoveDives();
			return false;
		} else {
			return true;
		}
	}

	function maxDays(Difference_In_Time) {
		if (1036800000 >= Difference_In_Time) {
			return true;
		} else {
			document.getElementById("ttlDays").value = 0;
			$("#startDateNE").val("");
			$("#endDateNE").val("");
			alert("Maximum 12 Total Days Are Allowd !");
			return false;

		}
	}

	function newForm() {
		$("#startDateNE").val("");
		$("#endDateNE").val("");
		$("#ttlDays").val("0");
		$("#adult").val("");
		$("#child").val("0");
		$("#comment").val("");
		RemoveDives();

	}

	function createTextBox() {
		if (NaNChack()) {
			if (maxChack()) {
				var n = parseInt(document.getElementById('child').value);

				RemoveDives();

				//alert("before pcc = "+pcc);
				//alert("input :"+n);
				pcc = n;
				//alert("pcc = "+pcc);
				//alert("pcc is "+pcc);

				CreateDives();
			}

		}
	}

	function RemoveDives() {
		for (var i = 1; i <= pcc; i++) {
			//alert("child"+i);
			var div = document.getElementById('child' + i);
			div.remove();
		}
	}

	function CreateDives(n) {
		var count = 0;
		for (var i = 1; i <= pcc; i++) {
			if (count > 10) {
				break;
			}
			$(
					'<div id="child'+i+'"> <div class="form-group row"><label class="col-sm-2 col-form-label"style="text-align: left:;">'
							+ i
							+ ' Chilld Age</label><div class="col-sm-3"><input class="form-control input-daterange-datepicker" onkeyup="childverify2()"	type="text" name="child'
							+ i
							+ '" id="childid'
							+ i
							+ '" value="">	</div>	</div>	<div id="childDiv'+i+'"></div></div>')
					.appendTo('#childDiv');
			count++;
		}
	}

	function childverify() {

		for (var i = 1; i <= pcc; i++) {
			if (isNaN(document.getElementById('childid' + i).value)) {
				alert("Please Provide Child :" + 1 + " Age in Number !")
				return false;
				break;
			}
			if (document.getElementById('childid' + i).value == '') {
				alert("Please Enter " + i + " Child Age !")
				return false;
				break;
			}

		}
		return true;

	}

	function childverify2() {

		for (var i = 1; i <= pcc; i++) {
			if (isNaN(document.getElementById('childid' + i).value)) {
				alert("Please Provide Child " + i + " Age in Number !")
				return false;
				break;
			}
			if (99 < document.getElementById('childid' + i).value) {
				alert("Please Provide Valid Child " + i + " Age !");
				document.getElementById('childid' + i).value = 0;
				return false;
				break;
			}
		}
	}

	// To calculate the time difference of two dates

	/*	alert(Difference_In_Days);
	 //To display the final no. of days (result)
	 document.write("Total number of days between dates  <br>"
	 + date1 + "<br> and <br>" 
	 + date2 + " is: <br> " 
	 + Difference_In_Days); */

	/* $
			.ajax({
				type : "POST",
				url : "${pageContext.servletContext.contextPath}/bookingcheck",
				data : $("#contactform").serialize(),
				dataType : 'json',
				async : false,
				success : function(response) {
					if (response == "true") {
						//location.reload();
						$(".sidebar-item-darkok").show();
						$(".sidebar-item-dark").hide();

						alert("Your Ticket is Raised ! Our Executive will Call you Soon on your register mobile Number !")
					} else if (response == "userx") {
						alert("Username Wrong !!")

					} else if (response == "passx") {
						alert("password is Wrong !")

					} else if (response == "activex") {
						alert("Sorry , You are not Active User. Please Contact Karma Support Center !")

					} else if (response == "error") {
						alert("Something Went Wrong, Please Try Agian Letter !")
					}
				}
			});
	 */
</script>
</html>

