<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Karma Suites - Sales Status</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.png">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr.min.js"></script>
    </head>
    <body>
        
        <div id="page-wrapper">
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>Karma</strong> Suites</h1>
                <div class="inner">
                    <h3 class="text-light visible-lt-ie10"><strong>Loading..</strong></h3>
                    <div class="preloader-spinner hidden-lt-ie10"></div>
                </div>
            </div>
            <!-- END Preloader -->

            <div id="page-container" class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
                <jsp:include page="SidePanel.jsp"></jsp:include>
                <!-- Main Container -->
                <div id="main-container">
                    
                    <jsp:include page="HeadPanel.jsp"></jsp:include>
                    <!-- Page content -->
                    <div id="page-content">
                        <!-- Forum Header -->
                        <div class="content-header">
                            <div class="header-section">
                                <h1>
                                    <i class="gi gi-user sidebar-nav-icon"></i>Sales Status
                                </h1>
                            </div>
                            
                        </div>
                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
					       ${successMsg}
					    </div>
                        <!-- END Forum Header -->

                        <!-- Forum Block -->
                        <div class="block">
                            <!-- Forum Tabs Title -->
                            <div class="block-title">
                                <ul class="nav nav-tabs" data-toggle="tabs">
                                    <li class="active"><a href="#forum-categories">Sales Status</a></li>
                                    <li></li>
                                    
                                </ul>
                            </div>
                            <!-- END Forum Tabs -->

                            <!-- Tab Content -->
                            <div class="tab-content">
                            	<form:form id="member-form" class="form-horizontal form-bordered">
                                <!-- Forum -->
                                <div class="tab-pane active" id="forum-categories">
                                    <!-- Intro Category -->
                                    <table class="table table-borderless table-striped table-vcenter">
                                        <thead>
                                            <tr>
                                                <th colspan="3">Member Details (${md.memberName} - ${member_code})</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Sales Status</strong></a><br>
                                                        
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="salesstatus" name="salesstatus" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    	<option value="">-- Select Checklist --</option>
                                                    	<option value="Clear" ${md.salesstatus == 'Clear'? 'selected' : ''}>Clear</option>
                                                    	<option value="Fatal" ${md.salesstatus == 'Fatal'? 'selected' : ''}>Fatal</option>
                                                    </select>
                                                </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Fatal Outcall Date</strong></a><br>
                                                         
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<div class="input-group input-daterange col-md-6" data-date-format="dd/mm/yyyy">
                                                     <c:set var = "datestr" value = "${fn:split(ps.fataloutcalldate, '-')}" />
                                                     <c:set var = "extradata" value = "${member_id eq '0' ? '' : ps.fataloutcalldate eq null ? '' : '/'}" />
                                                         <input type="datetime"  style="font-size: 15px;" id="fataloutcalldate" name="fataloutcalldate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Fatal Outcall Date" autocomplete="off">
                                                         <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                     </div> 
                                                      <!-- <input type="datetime-local">  -->
                                                </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Fatal Outcall User Name</strong></a><br>
                                                         
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<input type="text" id="fataloutcallusername" name="fataloutcallusername" value="${ps.fataloutcallusername}" class="form-control" placeholder="Fatal Outcall User Name" readonly="readonly" style="font-size: 15px;">
                                                </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Fatal Status</strong></a><br>
                                                        
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<select id="fatalstatus" name="fatalstatus" class="form-control required-validate" size="1" style="font-size: 15px;">
                                                    <option value="" >-- Select Checklist --</option>
                                                    <option value="Member agreed to submit docs" ${ps.fatalstatus == 'Member agreed to submit docs'? 'selected' : ''}>Member agreed to submit docs</option>
                                                    <option value="Member refused to give docs - cancellation" ${ps.fatalstatus == 'Member refused to give docs - cancellation'? 'selected' : ''}>Member refused to give docs - cancellation</option>
                                                    <option value="Member asked for Call back by SE" ${ps.fatalstatus == 'Member asked for Call back by SE'? 'selected' : ''}>Member asked for Call back by SE</option>
                                                    <option value="Member need time to submit documents" ${ps.fatalstatus == 'Member need time to submit documents'? 'selected' : ''}>Member need time to submit documents</option>
                                                    <option value="Member Non Contactable" ${ps.fatalstatus == 'Member Non Contactable'? 'selected' : ''}>Member Non Contactable</option>
                                                    <option value="Call Back" ${ps.fatalstatus == 'Call Back'? 'selected' : ''}>Call Back</option>
                                                	</select>
                                                </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Fatal Call Back Date</strong></a><br>
                                                         
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<div class="input-group input-daterange col-md-6" data-date-format="dd/mm/yyyy">
                                                     <c:set var = "datestr" value = "${fn:split(ps.fatalcallbackdate, '-')}" />
                                                     <c:set var = "extradata" value = "${member_id eq '0' ? '' : ps.fatalcallbackdate eq null ? '' : '/'}" />
                                                         <input type="datetime"  style="font-size: 15px;" id="fatalcallbackdate" name="fatalcallbackdate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Fatal Call Back Date" autocomplete="off">
                                                         <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                     </div> 
                                                      <!-- <input type="datetime-local">  -->
                                                </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Fatal Closure Date</strong></a><br>
                                                         
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<div class="input-group input-daterange col-md-6" data-date-format="dd/mm/yyyy">
                                                     <c:set var = "datestr" value = "${fn:split(ps.fatalclosuredate, '-')}" />
                                                     <c:set var = "extradata" value = "${member_id eq '0' ? '' : ps.fatalclosuredate eq null ? '' : '/'}" />
                                                         <input type="datetime"  style="font-size: 15px;" id="fatalclosuredate" name="fatalclosuredate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Fatal Closure Date" autocomplete="off">
                                                         <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                     </div> 
                                                      <!-- <input type="datetime-local">  -->
                                                </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Fatal Closure User Name</strong></a><br>
                                                         
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<input type="text" id="fatalclosureusername" name="fatalclosureusername" value="${ps.fatalclosureusername}" class="form-control" placeholder="Fatal Closure User Name" readonly="readonly" style="font-size: 15px;">
                                                </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <td class="text-center" style="width: 100px;"><i class="gi gi-globe fa-2x"></i></td>
                                                <td>
                                                    <h4>
                                                        <a href="javascript:void(0)"><strong>Sale Approved Date</strong></a><br>
                                                         
                                                    </h4>
                                                </td>
                                                <td class="text-center hidden-xs hidden-sm">
                                                	<div class="input-group input-daterange col-md-6" data-date-format="dd/mm/yyyy">
                                                     <c:set var = "datestr" value = "${fn:split(ps.salesapproveddate, '-')}" />
                                                     <c:set var = "extradata" value = "${member_id eq '0' ? '' : ps.salesapproveddate eq null ? '' : '/'}" />
                                                         <input type="datetime"  style="font-size: 15px;" id="salesapproveddate" name="salesapproveddate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Sale Approved Date" autocomplete="off" disabled="disabled" readonly="readonly">
                                                         <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                     </div> 
                                                      <!-- <input type="datetime-local">  -->
                                                </td>
                                                
                                            </tr>
                                            
                                            
                                        </tbody>
                                    </table>
                                    <!-- END Intro Category -->

                                    <!-- END Support Category -->
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-3">
                                      
                                    </div>
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-4">
                                    	
                                    </div>
                                    <div class="col-md-2">
                                    	<%-- <input type="hidden" id="docUploadPathNew" name="docUploadPathNew" value="${docUploadPathNew}" >
										<input type="hidden" id="savePathNew" name="savePathNew" value="${savePathNew}">
										<input type="hidden" id="saveFullPathNew" name="saveFullPathNew" value="" >
										<input type="hidden" id="saveFilename" name="saveFilename" value="" >
                                    	<input type="hidden" name="encmemberId" id="encmemberId" value="${encmember_id}"> --%>
                                    	<input type="hidden" name="memberId" id="memberId" value="${member_id}">
                                    	<input type="hidden" name="st_id" id="st_id" value="${ps.st_id gt '0' ? ps.st_id : ps.st_id ne null ? ps.st_id : '0'}">
                                    	<button type="button" class="btn btn-sm btn-info" id="savebtn" onclick="savesalemember()">${ps.st_id gt 0 ? 'UPDATE' : 'SAVE' }</button>
                                    	<button type="button" class="btn btn-sm btn-default" onclick="cancelsalemember()">CANCEL</button>
                                     
                                    </div>
                                </div>
                                
                                <!-- END Forum -->
								</form:form>
                                <!-- END Discussion -->
                            </div>
                            <!-- END Tab Content -->
                        </div>
                        <!-- END Forum Block -->
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
						
	<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
	 <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.datetimepicker.js"></script> --%>
	 <script type="text/javascript" >
	 /* $(function() {
			$( "#funcend" ).datepicker({ dateFormat: "dd-mm-yy" });
			var dateFormat = $( "#funcend" ).datepicker( "option", "dateFormat" );
			$( "#funcend" ).datepicker( "option", "dateFormat", "dd.mm.yy" );
			
			$('.default_datetimepicker1').datetimepicker({
				timepicker:true,
				formatDate:	'd.m.Y',
				formatTime:	'h:i A',
				format:'d.m.Y h:i A',
				closeOnDateSelect:true,
				scrollInput : false
			});
			

	}); */
	function savesalemember(){
		if($("#salesstatus").val() != ""){
			if($("#fatalstatus").val() != ""){
				var a = 0;
				if($("#fatalstatus").val()=="Call Back"){
					if($("#fatalcallbackdate").val()==""){
						a = 1;
					}
				}
				if(a==0){
					$.ajax({
						type:"POST",
						url:"${pageContext.servletContext.contextPath}/masters/savesalemember",
						data:$("#member-form").serialize(),
						dataType: 'json',
						async:false,
						success: function(response){
							if(response.split("~")[0] == "y"){
								var msgText  = $("#cat_id").val() == 0 ? "redirect_success_common" : "redirect_success_common_update";
								if('${isInnerCall}' == "1"){
									var ulEl = $("#venueEDIT").next().next();
									$(ulEl).append('<li data-cc="'+response.split("~")[2]+'" class="es-visible">'+$("#venuename").val()+'</li>');
									$('#general-model').modal('hide');
								}else{
									$("#top-loading-stop").click();			
									window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/salemember/XQmMpRN+jJOY0qfEtd8nkw==/1/"+msgText+"/0";
											 
								}
								
							}else{
								alertDiv("alert-danger",response.split("~")[1]);
							}
						}
					});
				}else{
					alert("Please select Fatal Call Back Date !!");
				}
			}else{
				alert("Please select Fatal Status !!");
			}	
		}else{
			alert("Please select Sales Status !!");
		}
	}
	
	function cancelsalemember(){
		window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/salemember/XQmMpRN+jJOY0qfEtd8nkw==/0/-1/0";
	}
	
	 </script>
    </body>
</html>