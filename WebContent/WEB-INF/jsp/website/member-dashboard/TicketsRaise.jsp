<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
						<li class="breadcrumb-item"><a href="javascript:void(0)">Member
								Dashboard</a></li>
						<li class="breadcrumb-item active"><a
							href="javascript:void(0)">Raise Ticket</a></li>
					</ol>
				</div>
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Raise Ticket</h4>
							</div>
							<div class="card-body">
								<div class="basic-form">
									<form:form id="contactform">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Ticket
												Category :</label>
											<div class="col-sm-4">
												<select id="Category_id" name="Category_id"
													class="form-control"
													onchange="getInteractionType()"
													style="min-width: 20em;">
													<option value="">-- Select Category --</option>

													<c:forEach var="cityList" items="${InteractionAttribute}">
														<option value="${cityList[0]}"
															${md.resCity == cityList[1] ? 'selected' : ''}>${cityList[1]}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Interaction
												Type :</label>
											<div class="col-sm-4" >
												<select id="Interaction_id" name="Interaction_id"
													class="form-control"
													onchange="getInteractionSubType()"
													data-placeholder="Select Destination"
													style="min-width: 20em;">
													<option value="" >-- Select Interaction --</option>
													
												
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Specific
												Interaction :</label>
											<div class="col-sm-4">
												<select id="Specific_id" name="Specific_id"
													class="form-control"
													data-placeholder="Select Destination"
													style="min-width: 20em;">
													<option value="">-- Select Category --</option>
													
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label"> Remarks :</label>
											<div class="col-sm-9">
												<textarea class="form-control" rows="2" name="comment"
													id="comment"></textarea>
												<input type="hidden" id="member_id" name="member_id"
													value="${sessionBean.cid}">
													<input type="hidden" id="member_code" name="member_code"
													value="${membercode}">

											</div>
										</div>
										<div class="form-group row">
											<div class="form-group col-md-12" style="text-align: end;">
												<input type="button" id="submit" onclick="raiseTicket()"
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

</body>
<script type="text/javascript">
	function raiseTicket() {
		alert("raiseTicket()");
		var a = document.getElementById("Category_id").value;
		var b = document.getElementById("Interaction_id").value;
		var c = document.getElementById("Specific_id").value;
		var d = document.getElementById("comment").value;
		
		
		if (!a == '') {
			if (!b == '') {
				if (!c == '') {
					if (!d == '') {
						// Not Empty validation Done here
						$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/addTicketRaise",
							data : $("#contactform").serialize(),
							dataType : 'json',
							async : false,
							success : function(response) {
								if (response == "true") {
									alert("Your Trip Raise !")
									//window.location.href = "/Karmasuites/customer-dash/raise-trip";
									newForm()
								} else if (response == "false") {
									alert(" Something  Went Wrong, Please Try Again !")
								} else {
									alert("Something  Went Wrong, Please Try Again ! !")
									//window.location.href = "/Karmasuites/customer-dash/raise-trip";
								}
							}
						});
					} else {
						alert("Description Empty");
					}
				} else {
					alert("Specific Type Empty");
				}
			} else {
				alert("Interaction Type Empty");
			}
		} else {
			alert("Category Empty");
		}
	}

	function getInteractionType() {
		var a = document.getElementById("Category_id").value;
		
		$
				.ajax({
					type : "POST",
					url : "${pageContext.servletContext.contextPath}/masters/getInteractionType",
					data : $("#member-form").serialize() + "&id=" + a,
					dataType : 'json',
					async : false,
					success : function(response) {
						//alert("response !")
						var innerHTML = '<option value="">-- Select Interaction --</option>';
						for ( var i in response) {
							//alert(response[i][0] +" : "+response[i][1]);
							innerHTML = innerHTML + '<option value="'+response[i][0]+'">'+response[i][1]+'</option>';
						}
						//$(Interaction_id).append(innerHTML);
						$(Interaction_id).html(innerHTML);

					}
				});
	}
	
	function getInteractionSubType() {
		var a = document.getElementById("Interaction_id").value;
		
		$
				.ajax({
					type : "POST",
					url : "${pageContext.servletContext.contextPath}/masters/getInteractionsubType",
					data : $("#member-form").serialize() + "&id=" + a,
					dataType : 'json',
					async : false,
					success : function(response) {
						//alert("response !")
						var innerHTML = '<option value="">-- Select Interaction --</option>';
						for ( var i in response) {
							//alert(response[i][0] +" : "+response[i][1]);
							innerHTML = innerHTML + '<option value="'+response[i][0]+'">'+response[i][1]+'</option>';
						}
						//$(Interaction_id).append(innerHTML);
						$(Specific_id).html(innerHTML);

					}
				});
	}

	var pcc = 0;
	function countDates() {

		/* alert(document.getElementById("startDate").value + " | "
				+ document.getElementById("endDate").value); */

		var d1 = document.getElementById("startDate").value;
		var d2 = document.getElementById("endDate").value;
		var date1 = new Date(document.getElementById("startDate").value);
		var date2 = new Date(document.getElementById("endDate").value);
		var Difference_In_Time = date2.getTime() - date1.getTime();

		if (document.getElementById("startDate").value != ""
				&& document.getElementById("endDate").value != "") {
			var maxdays = maxDays(Difference_In_Time);
			if (maxdays) {

				if (d1 == d2) {
					alert("Both Date Are Same !")
				} else {

					if (!(document.getElementById("startDate").value) == ''
							&& (document.getElementById("endDate").value) == '') {

					} else {

						var Difference_In_Days = Difference_In_Time
								/ (1000 * 3600 * 24);
						if (isNaN(Difference_In_Days)) {
							//alert("NaN !")
							document.getElementById("ttlDays").value = 0;
						} else {
							if (Difference_In_Days < 0) {
								alert("Please Select valid Date  !")
								$("#startDate").val("");
								$("#endDate").val("");
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
												alert("Your Trip Raise !")
												//window.location.href = "/Karmasuites/customer-dash/raise-trip";
												newForm()
											} else if (response == "false") {
												alert(" Something  Went Wrong, Please Try Again !")
											} else {
												alert("Error !")
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
		if ((document.getElementById("startDate").value) == '') {
			alert("Please Select Start Date !")
			return false;
		} else if ((document.getElementById("endDate").value) == '') {
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
			$("#startDate").val("");
			$("#endDate").val("");
			alert("Maximum 12 Total Days Are Allowd !");
			return false;

		}
	}

	function newForm() {
		$("#startDate").val("");
		$("#endDate").val("");
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
					'<option value="">Select Destination</option>')
					.appendTo('#Interaction_drop');
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

