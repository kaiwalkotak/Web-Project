<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Karma Suites | Members</title>

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
  <c:set var="oldmember" value="" />
  <c:if test="${member_id eq '0' or md.membercode > 14728}">
  	<c:set var="oldmember" value="required-validate" />
  </c:if>
 
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
                                    <i class="fa fa-tasks"></i>Member
                                </h1>
                            </div>
                        </div>
                        <!-- END Tasks Header -->

                        <div id="alertDiv" class="alert ${successMsg ne '' && messageType eq '1' ? 'alert-success' : 'alert-danger'}" role="alert" style="${successMsg eq '-1' ? 'display:none;' : ''} ">
				       ${successMsg}
				    </div>
                        
                       <div class="block full subclass" style="">
                          
                            <div class="block-title">
                                <h2><strong>Add Members </strong></h2>
                                 
                            </div>
                            
                            

                                    <!-- Basic Form Elements Content -->
                                    <form:form id="member-form" class="form-horizontal form-bordered">
                                        <div class="form-group">
                                            <div class="col-md-3">
                                                <input type="text" id="membercode" name="membercode" value="${member_code}" class="form-control" placeholder="Member code" readonly="readonly">
                                            </div>
                                            <div class="col-md-2" style="display: none;">
                                                <input type="password" id="password" name="password" value="${md.password}" class="form-control" placeholder="***********">
                                            </div>
                                            <div class="col-md-3">
                                                <select id="preMemberName" name="preMemberName" class="form-control" size="1">
                                                    <option value="Mr." ${md.preMemberName == 'Mr.'? 'selected' : ''}>Mr.</option>
                                                    <option value="Mrs." ${md.preMemberName == 'Mrs.'? 'selected' : ''}>Mrs.</option>
                                                    <option value="Mis." ${md.preMemberName == 'Mis.'? 'selected' : ''}>Miss.</option>
                                                    <option value="Ms." ${md.preMemberName == 'Ms.'? 'selected' : ''}>Ms.</option>
                                                </select>
                                            </div>
                                             <div class="col-md-3">
                                                <input type="text" id="memberName" name="memberName" value="${md.memberName}" class="form-control required-validate" placeholder="Member Name">
                                            </div>
                                            <div class="col-md-3">
                                               <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        	<c:set var = "datestr" value = "${fn:split(md.doB, '-')}" />
                                                        	<c:set var = "extradata" value = "${member_id eq '0' ? '' : md.doB eq null ? '' :  '/'}" />
                                                            <input type="text" id="doB" name="doB" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control ${oldmember}" placeholder="DOB" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            	</div>
                                           
                                        </div>
                                         <div class="form-group">
                                            <div class="col-md-3">
                                                <input type="text" id="mobileNo" name="mobileNo" class="form-control required-validate keyup-numeric mobile-class" value="${md.mobileNo}" placeholder="Mobile No.">
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" id="altMobileNo" name="altMobileNo" class="form-control keyup-numeric mobile-class" value="${md.altMobileNo}"  placeholder="Alt Mobile">
                                            </div>
                                             <div class="col-md-3">
                                                <input type="text" id="emailId" name="emailId" class="form-control required-validate email-class" value="${md.emailId}" placeholder="Email Id">
                                            </div>
                                            
                                            <div class="col-md-3">
                                               <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        <c:set var = "datestr" value = "${fn:split(md.anniversaryDate, '-')}" />
                                                        <c:set var = "extradata" value = "${member_id eq '0' ? '' : md.anniversaryDate eq null ? '' : '/'}" />
                                                            <input type="text" id="anniversaryDate" name="anniversaryDate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Anniversary Date" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                            </div>
                                            <div class="form-group">
                                            	
                                            <!--Address S -->
												<div class="col-md-3">
													<input type="text" id="address" name="address" value="${md.address}" class="form-control required-validate" placeholder="Address">
												</div>
                                         	<!--Address E -->
                                            <!-- Select City S -->
                                            <div class="col-md-3">
	                                                <input type="text" id="pinCode" name="pinCode" class="form-control required-validate keyup-numeric" value="${md.pinCode}"  placeholder="Res Pin Code">
	                                            </div>
                                              <div class="col-md-3">
                                                <select id="city_id" name="city_id" class="form-control ${oldmember}" data-placeholder="Select City" style="min-width: 20em;" >
	                                               	<option value="">--Select City--</option>
	                                               	<c:forEach var="cityList" items="${cityList}">
	                                               		<option value="${cityList[1]}" ${md.resCity == cityList[1] ? 'selected' : ''}>${cityList[1]}</option>
	                                               	</c:forEach>
	                                            </select>
                                              </div>
                                           <div class="col-md-3">
                                                <select id="state_id" name="state_id" class="form-control ${oldmember}" data-placeholder="Select State" style="min-width: 20em;" >
                                                	<option value="">--Select State--</option>
	                                               	<c:forEach var="stateList" items="${stateList}">
	                                               		<option value="${stateList[1]}" ${md.resState == stateList[1] ? 'selected' : ''}>${stateList[1]}</option>
	                                               	</c:forEach>
	                                            </select>
                                              </div>
                                        </div>
                                        <!-- form-group End  -->
                                        
                                         <div class="form-group">
                                          <div class="col-md-3">
                                               <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        <c:set var = "datestr" value = "${fn:split(md.childDOB, '-')}" />
                                                        <c:set var = "extradata" value = "${member_id eq '0' ? '' : md.childDOB eq null ? '' :  '/'}" />
                                                            <input type="text" id="childDOB" name="childDOB" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Child DOB" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                             <div class="col-md-3" style="display:none;">
                                                <input type="text" id="pancard" name="pancard" value="${md.pancard}" class="form-control" placeholder="Pan card" >
                                            </div>
                                        
                                        	<div class="col-md-3" style="display:none;">
                                                <input type="text" id="aadharcard" name="aadharcard" value="${md.aadharcard}" class="form-control" placeholder="Aadhar card" >
                                            </div>
                                            
                                              <div class="col-md-3">
                                                <input type="text" id="coAppDetails" name="coAppDetails" class="form-control" value="${md.coAppDetails}" placeholder="Co Applicant Details">
                                            </div>
                                            <div class="col-md-3">
                                               <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        <c:set var = "datestr" value = "${fn:split(md.coAppDOB, '-')}" />
                                                        <c:set var = "extradata" value = "${member_id eq '0' ? '' : md.coAppDOB eq null ? '' :  '/'}" />
                                                            <input type="text" id="coAppDOB" name="coAppDOB" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Co App DOB" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                           <div class="col-md-3">
                                                <select id="memberType" name="memberType" class="form-control required-validate" size="1">
                                                    <option value="">-- Member Type --</option>
                                                    <option value="Individual" ${md.memberType == 'Individual'? 'selected' : ''}>Individual</option>
													<option value="Company" ${md.memberType == 'Company'? 'selected' : ''}>Company</option>
                                                </select>
                                            </div>
                                          
                                        </div>
                                      
                                        <div class="form-group">
                                          
                                            <div class="col-md-3">
                                                <select id="enrollCamp" name="enrollCamp" class="form-control required-validate" size="1" onchange="changecamp()" data-toggle="tooltip" data-placement="top" title="Enrollment Campaign">
                                                    <option value="" ${md.enrollCamp == ''? 'selected' : ''}>-- Enrollment Campaign --</option>
                                                    <option value="PRO" ${md.enrollCamp == 'PRO'? 'selected' : ''}>PRO</option>
                                                    <option value="WEB" ${md.enrollCamp == 'WEB'? 'selected' : ''}>WEB</option>
                                                    <option value="HFRP" ${md.enrollCamp == 'HFRP'? 'selected' : ''}>HFRP</option>
                                                </select>
                                            </div>
                                             <div class="col-md-3">
                                                <select id="statusOfPLC" name="statusOfPLC" class="form-control required-validate" size="1">
                                                    <option value="">-- Status Of PLC --</option>
                                                    <option value="Cleared" ${md.statusOfPLC == 'Cleared'? 'selected' : ''}>Cleared</option>
                                                    <option value="Failed" ${md.statusOfPLC == 'Failed'? 'selected' : ''}>Failed</option>
                                                    <option value="Cancellation of Membership" ${md.statusOfPLC == 'Cancellation of Membership'? 'selected' : ''}>Cancellation of Membership</option>
                                                    <option value="Non Contactable" ${md.statusOfPLC == 'Non Contactable'? 'selected' : ''}>Non Contactable</option>
                                                    <option value="Pending" ${md.statusOfPLC == 'Pending'? 'selected' : ''}>Pending</option>
                                                    <option value="Call Back" ${md.statusOfPLC == 'Call Back'? 'selected' : ''}>Call Back</option>
                                                    <option value="PLC Discrepency - Payment Related" ${md.statusOfPLC == 'PLC Discrepency - Payment Related'? 'selected' : ''}>PLC Discrepency - Payment Related</option>
                                                    <option value="PLC Discrepency - Product Related" ${md.statusOfPLC == 'PLC Discrepency - Product Related'? 'selected' : ''}>PLC Discrepency - Product Related</option>
                                                    <option value="PLC Discrepency - Product (ASF) Related" ${md.statusOfPLC == 'PLC Discrepency - Product (ASF) Related'? 'selected' : ''}>PLC Discrepency - Product (ASF) Related</option>
                                                    <option value="PLC Discrepency - Offer Related" ${md.statusOfPLC == 'PLC Discrepency - Offer Related'? 'selected' : ''}>PLC Discrepency - Offer Related</option>
                                                    <option value="PLC Discrepency - Holiday Related" ${md.statusOfPLC == 'PLC Discrepency - Holiday Related'? 'selected' : ''}>PLC Discrepency - Holiday Related</option>
                                                </select>
                                            </div>
                                              <div class="col-md-3" style="display: none;">
                                                <select id="locationname" name="locationname" class="form-control" size="1">
                                                    <option value="">-- Location --</option>
                                                    <option value="Ahmedabad" ${md.locationname == 'Ahmedabad'? 'selected' : ''}>Ahmedabad</option>
                                                    <option value="Surat" ${md.locationname == 'Surat'? 'selected' : ''}>Surat</option>
                                                    <option value="Vadodara" ${md.locationname == 'Vadodara'? 'selected' : ''}>Vadodara</option>
                                                    <option value="Rajkot" ${md.locationname == 'Rajkot'? 'selected' : ''}>Rajkot</option>
                                                    <option value="Anand" ${md.locationname == 'Anand'? 'selected' : ''}>Anand</option>
                                                    <option value="Bhavnagar" ${md.locationname == 'Bhavnagar'? 'selected' : ''}>Bhavnagar</option>
                                                    <option value="Jamnagar" ${md.locationname == 'Jamnagar'? 'selected' : ''}>Jamnagar</option>
                                                    <option value="Nadiad" ${md.locationname == 'Nadiad'? 'selected' : ''}>Nadiad</option>
                                                    <option value="Junagadh" ${md.locationname == 'Junagadh'? 'selected' : ''}>Junagadh</option>
                                                    <option value="Navsari" ${md.locationname == 'Navsari'? 'selected' : ''}>Navsari</option>
                                                    <option value="Morvi" ${md.locationname == 'Morvi'? 'selected' : ''}>Morvi</option>
                                                    <option value="Gandhidham" ${md.locationname == 'Gandhidham'? 'selected' : ''}>Gandhidham</option>
                                                    <option value="Bharuch" ${md.locationname == 'Bharuch'? 'selected' : ''}>Bharuch</option>
                                                    <option value="Porbandar" ${md.locationname == 'Porbandar'? 'selected' : ''}>Porbandar</option>
                                                    <option value="Mahesana" ${md.locationname == 'Mahesana'? 'selected' : ''}>Mahesana</option>
                                                    <option value="Bhuj" ${md.locationname == 'Bhuj'? 'selected' : ''}>Bhuj</option>
                                                    <option value="Veraval" ${md.locationname == 'Veraval'? 'selected' : ''}>Veraval</option>
                                                    <option value="Surendranagar" ${md.locationname == 'Surendranagar'? 'selected' : ''}>Surendranagar</option>
                                                    <option value="Valsad" ${md.locationname == 'Valsad'? 'selected' : ''}>Valsad</option>
                                                    <option value="Vapi" ${md.locationname == 'Vapi'? 'selected' : ''}>Vapi</option>
                                                    <option value="Godhra" ${md.locationname == 'Godhra'? 'selected' : ''}>Godhra</option>
                                                    <option value="Palanpur" ${md.locationname == 'Palanpur'? 'selected' : ''}>Palanpur</option>
                                                    <option value="Anklesvar" ${md.locationname == 'Anklesvar'? 'selected' : ''}>Anklesvar</option>
                                                    <option value="Patan" ${md.locationname == 'Patan'? 'selected' : ''}>Patan</option>
                                                    <option value="Dahod" ${md.locationname == 'Dahod'? 'selected' : ''}>Dahod</option>
                                                    <option value="Jaipur" ${md.locationname == 'Jaipur'? 'selected' : ''}>Jaipur</option>
                                                    <option value="Banglore" ${md.locationname == 'Banglore'? 'selected' : ''}>Banglore</option>
                                                    <option value="Chennai" ${md.locationname == 'Chennai'? 'selected' : ''}>Chennai</option>
                                                    <option value="Indore" ${md.locationname == 'Indore'? 'selected' : ''}>Indore</option>
                                                    <option value="Pune" ${md.locationname == 'Pune'? 'selected' : ''}>Pune</option>
                                                    <option value="Hyderabad" ${md.locationname == 'Hyderabad'? 'selected' : ''}>Hyderabad</option>
                                                    <option value="Lucknow" ${md.locationname == 'Lucknow'? 'selected' : ''}>Lucknow</option>
                                                    <option value="Delhi " ${md.locationname == 'Delhi'? 'selected' : ''}>Delhi</option>
                                                    <option value="Vijaywada" ${md.locationname == 'Vijaywada'? 'selected' : ''}>Vijaywada</option>
                                                </select>
                                            </div>
                                            
                                            <div class="col-md-1 camp-div" style="display:none;">
                                                <input type="text" id="campaigncode" name="campaigncode" class="form-control" value="${md.campaigncode}" onchange="getcampdetails()" placeholder="TME code">
                                            </div>
                                         	<div class="col-md-2 camp-div" style="display:none;">
                                                <input type="text" id="campaignname" name="campaignname" class="form-control" value="${md.campaignname}" placeholder="TME Name" readonly="readonly">
                                            </div>
                                        </div>
                                          <div class="form-group" style="display:none;">
                                        	 <div class="col-md-3">
                                                <input type="text" id="referby" name="referby" value="${md.referby}" class="form-control" placeholder="Refer By" >
                                            </div>
                                           
                                        </div>
                                        <div class="form-group">
                                            
                                            
                                            
                                            
                                        </div>
                                        <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="hi hi-calendar"></i> <strong>Other </strong> Info</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                         <div class="form-group">
                                         	<div class="col-md-1">
                                                <input type="text" id="tmecode" name="tmecode" class="form-control ${oldmember}" value="${md.tmecode}" onchange="getemployeedetails(this.id)" placeholder="TME Ex. code">
                                            </div>
                                         	<div class="col-md-2">
                                                <input type="text" id="tmEName" name="tmEName" class="form-control" value="${md.tmEName}" placeholder="TME Ex. Name" readonly="readonly">
                                            </div>
                                            <div class="col-md-1">
                                                <input type="text" id="tmecodesup" name="tmecodesup" class="form-control ${oldmember}" value="${md.tmecodesup}" onchange="getemployeedetails(this.id)" placeholder="TME Sup. code">
                                            </div>
                                         	<div class="col-md-2">
                                                <input type="text" id="tmENamesup" name="tmENamesup" class="form-control" value="${md.tmENamesup}" placeholder="TME Sup. Name" readonly="readonly">
                                            </div>
                                            <div class="col-md-1">
                                                <input type="text" id="salesAgentId" name="salesAgentId" class="form-control ${oldmember}" value="${md.salesAgentId}" onchange="getemployeedetails(this.id)" placeholder="Sales Agent Code">
                                            </div>
                                            <div class="col-md-2">
                                                <input type="text" id="salesAgentName" name="salesAgentName" class="form-control" value="${md.salesAgentName}" placeholder="Sales Agent Name" readonly="readonly">
                                            </div>
                                           <div class="col-md-1">
                                                <input type="text" id="reportingmanagercode" name="reportingmanagercode" value="${md.reportingmanagercode}" class="form-control ${oldmember}" onchange="getemployeedetails(this.id)" placeholder="Reporting Code">
                                            </div>
                                            <div class="col-md-2">
                                                <input type="text" id="reportingManager" name="reportingManager" value="${md.reportingManager}" class="form-control" placeholder="Reporting Manager Name" readonly="readonly">
                                            </div>
                                         </div>
                                         <div class="form-group">
                                          
                                         	 <div class="col-md-3">
                                                <select id="cancellationReason" name="cancellationReason" class="form-control" size="1">
                                                    <option value="" ${md.cancellationReason == ''? 'selected' : ''}>-- Cancellation --</option>
                                                    <option value="Personal reason" ${md.cancellationReason == 'Personal reason'? 'selected' : ''}>Personal reason</option>
                                                    <option value="Financial reason" ${md.cancellationReason == 'Financial reason'? 'selected' : ''}>Financial reason</option>
                                                    <option value="Unsuitable holiday plan" ${md.cancellationReason == 'Unsuitable holiday plan'? 'selected' : ''}>Unsuitable holiday plan</option>
                                                    <option value="Sales wrong commitment" ${md.cancellationReason == 'Sales wrong commitment'? 'selected' : ''}>Sales wrong commitment</option>
                                                    <option value="Medical Concern" ${md.cancellationReason == 'Medical Concern'? 'selected' : ''}>Medical Concern</option>
                                                    <option value="Others" ${md.cancellationReason == 'Others'? 'selected' : ''}>Others</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                 <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        	<c:set var = "datestr" value = "${fn:split(md.cancellationPostedOn, '-')}" />
                                                        	<c:set var = "extradata" value = "${member_id eq '0' ? '' : md.cancellationPostedOn eq null ? '' :  '/'}" />
                                                            <input type="text" id="cancellationPostedOn" name="cancellationPostedOn" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control" placeholder="Cancellation Date" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                             <div class="col-md-3" style="display:none;">
                                                <input type="text" id="organizationUnit" name="organizationUnit" value="${md.organizationUnit}" class="form-control" placeholder="Organization Unit" >
                                            </div>
                                            <div class="col-md-3">
                                                <select id="salesstatus" name="salesstatus" class="form-control" size="1">
                                                    <option value="">-- Sales Status --</option>
                                                    <option value="Fatal" ${md.salesstatus == 'Fatal'? 'selected' : ''}>Fatal</option>
                                                    <option value="Clear" ${md.salesstatus == 'Clear'? 'selected' : ''}>Clear</option>
                                                </select>
                                            </div>
                                         </div>
                                         
                                         
                                        <div class="form-group">
                                        	
                                        	
                                           </div>
                                        <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="fa fa-inr"></i> <strong>Product & Price </strong> Info</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                         <div class="form-group">
                                         <!-- oNLY ONE -->
                                             <div class="col-md-3">
                                                <select id="productId" name="productId" onchange="getproductdetails()" class="form-control required-validate remove-disable" size="1" ${member_id eq 0 ? '' : 'disabled="disabled"'}>
                                                    <option value="">-- Product --</option>
                                                   <c:forEach var="productList" items="${productList}">
	                                               		<option value="${productList[0]}" ${md.product.id == productList[0] ? 'selected' : ''}>${productList[1]}</option>
	                                               	</c:forEach>
                                                </select>
                                            </div>
                                             <div class="col-md-3">
                                                <select id="productSubType" name="productSubType" onchange="getproductdetails()" class="form-control required-validate remove-disable" size="1" ${member_id eq 0 ? '' : 'disabled="disabled"'}>
                                                    <option value="" ${md.productSubType == '' ? 'selected' : ''}>-- Product Sub Type --</option>
                                                    <option value="White" ${md.productSubType == 'White' ? 'selected' : ''}>White</option>
													<option value="Purple" ${md.productSubType == 'Purple' ? 'selected' : ''}>Purple</option>
                                                </select>
                                            </div>
                                             <!-- oNLY ONE ens -->
                                         </div>
                                         <div class="form-group">
                                         <div class="col-md-3">
                                                 <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        	<c:set var = "datestr" value = "${fn:split(md.approvalDate, '-')}" />
                                                        	<c:set var = "extradata" value = "${member_id eq '0' ? '' : md.approvalDate eq null ? '' :  '/'}" />
                                                            <input type="text" id="" name="" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" data-toggle="tooltip" data-placement="top" title="Approval Date" class="form-control remove-disable" placeholder="Approval Date" disabled="disabled" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                         
                                             <div class="col-md-3">
                                                 <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        	<c:set var = "datestr" value = "${fn:split(md.mAFSignedDate, '-')}" />
                                                        	<c:set var = "extradata" value = "${member_id eq '0' ? '' : md.mAFSignedDate eq null ? '' :  '/'}" />
                                                            <input type="text" id="mAFSignedDate" name="mAFSignedDate" data-toggle="tooltip" data-placement="right" title="MAF Signed Date" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control required-validate" placeholder="MAF Signed Date" onchange="setstartdatebooking()" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                            <div class="col-md-3">
                                                 <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        	<c:set var = "datestr" value = "${fn:split(md.startDate, '-')}" />
                                                        	<c:set var = "extradata" value = "${member_id eq '0' ? '' : md.startDate eq null ? '' :  '/'}" />
                                                            <input type="text" id="startDate" name="startDate" data-toggle="tooltip" data-placement="right" title="Start Date" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" class="form-control required-validate remove-disable" placeholder="Membership start Date" disabled="disabled" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                            <div class="col-md-3">
                                                 <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                        	<c:set var = "datestr" value = "${fn:split(md.endDate, '-')}" />
                                                        	<c:set var = "extradata" value = "${member_id eq '0' ? '' : md.endDate eq null ? '' :  '/'}" />
                                                            <input type="text" id="endDate" name="endDate" value="${datestr[2]}${extradata}${datestr[1]}${extradata}${datestr[0]}" data-toggle="tooltip" data-placement="right" title="End Date" class="form-control required-validate remove-disable" placeholder="Membership end Date" disabled="disabled" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                             
                                        </div>
                                        <div class="form-group">
                                        <div class="col-md-3">
                                                <input type="text" id="price" name="price" data-toggle="tooltip" data-placement="right" title="Membership Price" class="form-control" value="${member_id eq '0' ? '0' : md.price}" placeholder="Membership Price" readonly="readonly">
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" id="sellingprice" name="sellingprice" class="form-control keyup-numeric" value="${member_id eq '0' ? '0' : md.sellingprice}" onchange="calculatediscount()" placeholder="Selling Price" data-toggle="tooltip" data-placement="right" title="Selling Price">
                                            </div>
                                             <div class="col-md-1">
                                                <input type="text" id="planDays" name="planDays" class="form-control" value="${member_id eq '0' ? '0' : md.planDays}" placeholder=" Plan Days" readonly="readonly" data-toggle="tooltip" data-placement="right" title="Plan Days">
                                            </div>
                                            <div class="col-md-2">
                                                <input type="text" id="tenure" name="tenure" class="form-control" value="${md.tenure}" placeholder=" Plan Tenure" readonly="readonly" data-toggle="tooltip" data-placement="right" title="Plan Tenure">
                                            </div>
                                            <div class="col-md-2">
                                                <input type="text" id="basePrice" name="basePrice" class="form-control" value="${member_id eq '0' ? '0' : md.basePrice}" placeholder="Base Price" readonly="readonly" data-toggle="tooltip" data-placement="right" title="Base Price">
                                            </div>
                                            <div class="col-md-1">
                                                <input type="text" id="dpDiscount" name="dpDiscount" class="form-control" value="${member_id eq '0' ? '0' : md.dpDiscount}"  placeholder="DP Discount" data-toggle="tooltip" data-placement="right" title="DP Disount" readonly="readonly">
                                            </div>
                                            
                                             
                                        </div>	
                                        <div class="form-group">
                                        	<div class="col-md-3">
                                                <select id="paymentPlan" name="paymentPlan" onchange="setpaymentplan()" class="form-control required-validate" size="1" data-toggle="tooltip" data-placement="right" title="Payment plan">
                                                    <option value="" ${md.paymentPlan == '' ? 'selected' : ''}>-- Payment Plan --</option>
                                                    <option value="Full Payment" ${md.paymentPlan == 'Full Payment' ? 'selected' : ''}>Full Payment</option>
													<option value="EMI" ${md.paymentPlan == 'EMI' ? 'selected' : ''}>EMI</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3" style="display: none;">
                                                <select id="paymentMode" name="paymentMode" onchange="changeplaceho()" class="form-control" size="1">
                                                    <option value="" ${md.paymentMode == '' ? 'selected' : ''}>-- Payment Mode --</option>
                                                    <option value="NEFT" ${md.paymentMode == 'NEFT' ? 'selected' : ''}>NEFT</option>
                                                    <option value="CHEQUE" ${md.paymentMode == 'CHEQUE' ? 'selected' : ''}>CHEQUE</option>
                                                    <option value="CARD" ${md.paymentMode == 'CARD' ? 'selected' : ''}>CARD</option>
                                                    <option value="CASH" ${md.paymentMode == 'CASH' ? 'selected' : ''}>CASH</option>
                                                    <option value="GPAY" ${md.paymentMode == 'GPAY' ? 'selected' : ''}>GPAY</option>
                                                    <option value="OTHERES" ${md.paymentMode == 'OTHERES' ? 'selected' : ''}>OTHERES</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3" style="display: none;">
                                                <input type="text" id="chequeNo" name="chequeNo" class="form-control" value="${md.chequeNo}" placeholder="payment details" data-toggle="tooltip" data-placement="right" title="Payment details" >
                                            </div>
                                            <div class="col-md-2">
                                                <input type="text" id="dpAmount" name="dpAmount" class="form-control keyup-numeric" value="${member_id eq '0' ? '0' : md.dpAmount}" placeholder="DP Amount" data-toggle="tooltip" onchange="checkfullemi()" data-placement="right" title="DP Amount">
                                            </div>
                                            <div class="col-md-1">
                                                <input type="text" id="emIAmount" name="emIAmount" class="form-control keyup-numeric" value="${member_id eq '0' ? '0' : md.emIAmount}" placeholder="EMI Amount" data-toggle="tooltip" data-placement="right" title="EMI Amount" readonly="readonly">
                                            </div>
                                            <div class="col-md-3">
                                                <select id="salesChannel" name="salesChannel"  class="form-control ${oldmember}" size="1">
                                                    <option value="" ${md.salesChannel == ''? 'selected' : ''}>-- Sales Channel --</option>
                                                    <option value="Company" ${md.salesChannel == 'Company'? 'selected' : ''}>Company</option>
													<option value="DSA" ${md.salesChannel == 'DSA'? 'selected' : ''}>DSA</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select id="salesBranch" name="salesBranch" class="form-control ${oldmember}" size="1">
                                                    <option value="" ${md.salesBranch == ''? 'selected' : ''}>-- Sale Branch --</option>
                                                    <c:forEach var="branchList" items="${branchList}">
	                                               		<option value="${branchList[1]}" ${md.salesBranch == branchList[1] ? 'selected' : ''}>${branchList[1]}</option>
	                                               	</c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                          <div class="form-group">
                                          	<div class="col-md-6">
                                               <div class="form-group" style="padding: 1px;">
                                                      <textarea id="remarks" name="remarks" rows="1" class="form-control" placeholder="Remarks...">${md.remarks}</textarea>
                                                 </div>
                                            </div>
                                            <div class="col-md-6">
                                               <div class="form-group" style="padding: 1px;">
                                                      <textarea id="premiumOption" name="premiumOption" rows="1" class="form-control" placeholder="Premium Offer">${md.premiumOption}</textarea>
                                                 </div>
                                            </div>
                                          </div>
                                          <div class="form-group">
                                        	<div class="col-md-2" style="display:none;">
                                                <input type="text" id="dpPaymentMode" name="dpPaymentMode" class="form-control" value="${md.dpPaymentMode}" placeholder="DP payment mode">
                                            </div>
                                            <div class="col-md-1" style="display:none;">
                                                <input type="text" id="receiptNo" name="receiptNo" class="form-control" value="${md.receiptNo}" placeholder="Receipt No">
                                            </div>
                                            
                                            
                                            <div class="col-md-3">
                                                <select id="offer_id" name="offer_id" class="form-control" size="1">
                                                    <option value="0">-- SELECT OFFER --</option>
                                                   <c:forEach var="offerList" items="${offerList}">
	                                               		<option value="${offerList[0]}" ${md.offer_id == offerList[0] ? 'selected' : ''}>${offerList[1]}</option>
	                                               	</c:forEach>
                                                </select>
                                            </div>
                                          </div>
                                        <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-credit_card"></i> <strong>Down payment </strong> Details
                                            <button type="button" class="btn btn-sm btn-info" onclick="generatePAYdiv(-1)"><i class="fa fa-plus"></i>&nbsp; ADD NEW</button>
                                            </h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                            
                                         </div>
                                         <div id="paymentRow" style="margin-left: 20px;">
                                                
                                          </div> 
                                        <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-credit_card"></i> <strong>EMI </strong> Option</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                         
                                           
                                         <div class="form-group">
                                            <div class="col-md-1">
                                               <input class="form-control" id="eMINo" name="eMINo" value="" placeholder="No. Of EMI" type="text" value="" data-toggle="tooltip" data-placement="right" title="No. of EMI"/>
                                            </div>
                                            <div class="col-md-2">
                                            	<select class="form-control" id="emi_paymentmode" name="emi_paymentmode" onchange="" data-toggle="tooltip" data-placement="right" title="Payment Mode">
												   <option value="" >-- Payment Mode --</option>
												   <option value="NEFT">NEFT</option>
												   <option value="CHEQUE">CHEQUE</option>
												   <option value="CARD">CARD</option>
												   <option value="CASH">CASH</option>
												   <option value="ONLINE">ONLINE</option>
												   <option value="DEBIT CARD">DEBIT CARD</option>
												   <option value="OTHERES">OTHERES</option>
												   </select>
                                            </div>
                                            <c:if test="${member_id eq 0}">
                                            <div class="col-md-2">
                                            	<button type="button" class="btn btn-sm btn-info" onclick="generateEMI();">Generate EMI</button>
                                            </div>
                                            </c:if>
                                             <c:if test="${member_id ne 0}">
                                         	<div class="col-md-2">
                                            	<button type="button" class="btn btn-sm btn-info" onclick="generateEMIdiv(-1)">Add EMI</button>
                                            </div>
                                         </c:if>
                                        </div>
                                        
                                        <div id="emiRow" style="margin-left: 20px;">
                                                
                                             </div> 
                                        
                                        <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-user"></i> <strong>KYC's </strong> Info</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                         
                                         <div class="form-group">
                                            <div class="col-md-3">
                                                <select id="kyC" name="kyC" class="form-control required-validate" size="1">
                                                    <option value="AADHAR CARD" ${md.kyC == 'AADHAR CARD' ? 'selected' : ''}>AADHAR CARD</option>
                                                    <option value="PAN CARD" ${md.kyC == 'PAN CARD' ? 'selected' : ''}>PAN CARD</option>
                                                    <option value="DRIVING LICENSE" ${md.kyC == 'DRIVING LICENSE' ? 'selected' : ''}>DRIVING LICENSE</option>
                                                    <option value="GOVERNMENT ID CARD" ${md.kyC == 'GOVERNMENT ID CARD' ? 'selected' : ''}>GOVERNMENT ID CARD</option>
                                                    <option value="ELECTION CARD" ${md.kyC == 'ELECTION CARD' ? 'selected' : ''}>ELECTION CARD</option>
                                                    <option value="PASSPORT" ${md.kyC == 'PASSPORT' ? 'selected' : ''}>PASSPORT</option>
                                                    <option value="OTHERS" ${md.kyC == 'OTHERS' ? 'selected' : ''}>OTHERS</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" id="kyCNo" name="kyCNo" value="${md.kyCNo}" class="form-control ${oldmember}" placeholder="KYC DOC. No.">
                                            </div>
                                            <div class="col-md-3">
                                            	<input type="hidden" id="documentPath" name="documentPath"  value="${md.documentPath} "/>
                                                 <jsp:include page="uploadDocumentFilenamerename.jsp"></jsp:include>
                                            </div>
                                        </div>
                                        <c:if test="${member_id ne '0' && md.documentPath ne '' && md.documentPath ne null}">
	                                        <div class="form-group">
	                                        	<div class="col-md-4">
	                                        		 File Name: <input type="text" name="" id="" class="form-control" style="border: none;font-size: 17px; color: blue;" value="${filename}" />
                                            	</div>
                                            	<!-- <div class="col-md-1">
	                                        		 <input type="text" name="" id="" class="form-control" style="border: none;color: red;cursor: pointer;" value="Remove" />
                                            	</div>
                                            	<div class="col-md-2">
	                                        		 <input type="text" name="" id="download-ref" class="form-control" style="border: none;color: blue;cursor: pointer;text-decoration: underline;" value="Download" />
                                            	</div> -->
	                                        </div>
                                        </c:if>
                                        <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-show_thumbnails"></i> <strong>ASF </strong> Option</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                         
                                           
                                         <div class="form-group">
                                            <div class="col-md-2">
                                                <select id="asF" name="asF" class="form-control ${oldmember}" size="1">
                                                	<option value="" ${md.asF == ''? 'selected' : ''}>--Select ASF--</option>
                                                	<option value="0" ${md.asF == '0'? 'selected' : ''}>NO FREE ASF</option>
                                                    <option value="1" ${md.asF == '1'? 'selected' : ''}>ASF 1YR FREE</option>
                                                    <option value="2" ${md.asF == '2'? 'selected' : ''}>ASF 2YR FREE</option>
                                                    <option value="3" ${md.asF == '3'? 'selected' : ''}>ASF 3YR FREE</option>
                                                    <option value="4" ${md.asF == '4'? 'selected' : ''}>ASF 4YR FREE</option>
                                                    <option value="5" ${md.asF == '5'? 'selected' : ''}>ASF 5YR FREE</option>
                                                    <option value="6" ${md.asF == '6'? 'selected' : ''}>ASF 6YR FREE</option>
                                                    <option value="7" ${md.asF == '7'? 'selected' : ''}>ASF 7YR FREE</option>
                                                    <option value="8" ${md.asF == '8'? 'selected' : ''}>ASF 8YR FREE</option>
                                                    <option value="9" ${md.asF == '9'? 'selected' : ''}>ASF 9YR FREE</option>
                                                    <option value="10" ${md.asF == '10'? 'selected' : ''}>ASF 10YR FREE</option>
                                                </select>
                                            </div>
                                            <div class="col-md-1">
                                               <button type="button" class="btn btn-sm btn-info" onclick="addASF(-1)">Add ASF</button>
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                        </div>
                                        
                                         <div id="asfRow" style="margin-left: 20px;">
                                                
                                        </div>
                                        
                                        
                                        <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-shopping_bag"></i> <strong> Courier </strong> Details</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div>
                                          <div class="form-group">
                                            <div class="col-md-3">
                                                <select id="courierType" name="courierType" class="form-control" size="1">
                                                    <option value="" ${courDet[2] == '' ? 'selected' : ''}>-- Courier Type --</option>
                                                    <option value="Courier" ${courDet[2] == 'Courier' ? 'selected' : ''}>Courier</option>
                                                    <option value="Speed Post" ${courDet[2] == 'Speed Post' ? 'selected' : ''}>Speed Post</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" id="cname" name="cname" value="${courDet[3]}" class="form-control" placeholder="Welcome Kit">
                                            </div>
                                            
                                            <div class="col-md-3">
                                                <input type="text" id="docatNo" name="docatNo" value="${courDet[4]}" class="form-control" placeholder="Docket No">
                                            </div>
                                            <div class="col-md-3">
                                               <div class="form-group" style="padding: 1px;">
                                                        <div class="input-group input-daterange" data-date-format="dd/mm/yyyy">
                                                            <input type="text" id="courierdate" name="courierdate"  class="form-control" value="${courDet[5]}" placeholder="Courier Date" autocomplete="off">
                                                            <span class="input-group-addon"><i class="gi gi-calendar"></i></span>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                        <!-- <div class="form-group" style="padding: 20px;">
                                            <h4 class="txt-dark capitalize-font"><i class="gi gi-shopping_bag"></i> <strong> Call </strong> File</h4>
                                            <hr class="light-grey-hr" style="margin-bottom: 0px;" />
                                         </div> -->
                                         <!-- <div class="form-group">
                                         	<div class="col-md-2">
                                               <label>Upload Call File</label>
                                            </div>
                                            <div class="col-md-3">
                                            	<input type="file" id="up1" name="" class="form-control" placeholder="Id Proof Attachment">
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                          </div> -->
                                          <%-- <div class="form-group">
                                          		<div class="table-responsive">
                                          			<table class="table table-vcenter table-condensed table-bordered" style="min-width: 50em;max-width: 50em;">
                                          				 <thead>
					                                        	<tr>
					                                            <th class="text-center" style="width: 60%;">File Name</th>
					                                            <th class="text-center">Created Date</th>
					                                            <th class="text-center">Delete</th>
					                                            </tr>
                                            			</thead>
                                            			<tbody>
                                            				<c:forEach var="callFileList" items="${callFileList}" varStatus="loopCount">
                                            					<tr id="maintr-${callFileList[0]}">
                                            						<td class="text-center"><a href="javascript:void(0)" > ${callFileList[1]} </a></td><td class="text-center">${callFileList[2]}</td><td class="text-center" onclick="deletecallfile(${callFileList[0]})"><i class="gi gi-bin"></i></td>
                                            					</tr>
                                            				</c:forEach>
                                            			</tbody>
                                          			</table>
                                          		</div>
	                                        	
	                                        </div> --%>
                                         <div class="form-group">
                                            <div class="col-md-3">
                                              
                                            </div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-4">
                                            	
                                            </div>
                                            <div class="col-md-2">
                                            	<input type="hidden" id="docUploadPathNew" name="docUploadPathNew" value="${docUploadPathNew}" >
												<input type="hidden" id="savePathNew" name="savePathNew" value="${savePathNew}">
												<input type="hidden" id="saveFullPathNew" name="saveFullPathNew" value="" >
												<input type="hidden" id="saveFilename" name="saveFilename" value="" >
                                            	<input type="hidden" name="memberId" id="memberId" value="${member_id}">
                                            	<input type="hidden" name="encmemberId" id="encmemberId" value="${encmember_id}">
                                            <button type="button" class="btn btn-sm btn-info" id="savebtn" onclick="savemember()">${member_id eq '0' ? 'SAVE' : 'UPDATE' }</button>
                                            	<button type="button" class="btn btn-sm btn-default" onclick="cancelmember()">CANCEL</button>
                                             
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
						
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css" /> 	
	<script src="${pageContext.request.contextPath}/resources/js/commonValidation.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.js"></script>
	
<script type="text/javascript">         
App.datatables();
$('#example-datatable').dataTable({
    //columnDefs: [ { orderable: false, targets: [ 1, 2 ] } ],
    pageLength: 10,
    lengthMenu: [[10, 20, 30, -1], [10, 20, 30, 'All']]
});
function getcampdetails(){
	var ismember = $("#enrollCamp").val() == "WEB" ? "0" : $("#enrollCamp").val() == "HFRP" ? "1" : "";
	if(ismember != ""){
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/getcampdetails",
			data:$("#member-form").serialize()+"&ismember="+ismember,
			dataType: 'json',
			async:false,
			success: function(response){
				if(response.length != 0){
					$("#campaignname").val(response[0][1]);
				}else{
					$("#campaigncode").val("");
					$("#campaignname").val("");
				}
			}
		});
	}
	
}
function changeplaceho(){
	$("#chequeNo").attr("placeholder", $("#paymentMode").val()+" Details");
}
function changecamp(){
	$("#campaigncode").val("");
	$("#campaignname").val("");
	if($("#enrollCamp").val() == "HFRP"){
		$("#campaigncode").attr("placeholder", "Member Code");
		$("#campaignname").attr("placeholder", "Member Name");
		$(".camp-div").show();
	}else if($("#enrollCamp").val() == "WEB"){
		$("#campaigncode").attr("placeholder", "Campaign Code");
		$("#campaignname").attr("placeholder", "Campaign Name");
		$(".camp-div").show();
	}else{
		$("#campaigncode").attr("placeholder", "");
		$("#campaignname").attr("placeholder", "");
		$(".camp-div").hide();
	}
}
function savemember(){
		var chk_req = validateData('.required-validate','required');
		var chk_num = validateData('.keyup-numeric','number');
		if(chk_req == false && chk_num == false){
			var chk_mobile = checkmobileandemail(".mobile-class");
			var chk_email = checkmobileandemail(".email-class");
			if(chk_mobile == false && chk_email == false){
				if($("#productId").val() != "" && $("#productSubType").val() != ""){
					var opids = "";
					var isup1 = "false",newids = "";
					$(".asf-class").each(function() {
					    var ids = ($(this).attr("id")).split("_")[1];
					    opids = opids == "" ? ids : opids + "," +ids;
					});
					if($("#asF").val() == "0" || ($("#asF").val() != "0" && opids != "")){
						var selemis = "";
						$(".emi-class").each(function() {
						    var ids = ($(this).attr("id")).split("_")[1];
						    selemis = selemis == "" ? ids : selemis + "," +ids;
						});
						
						var selemispay = "";var totalemipay = 0;
						$(".emipay-class").each(function() {
						    var ids = ($(this).attr("id")).split("_")[1];
						    selemispay = selemispay == "" ? ids : selemispay + "," +ids;
						    totalemipay = totalemipay + (parseInt($(this).val()));
						});
						if(totalemipay == parseInt($("#dpAmount").val())){
							if((selemis != "") || (selemis == "" && $("#paymentPlan").val() != "EMI")){
								if((parseInt($("#dpAmount").val()) == 0) || (parseInt($("#dpAmount").val()) != 0 && selemispay != "")){
									
									$("#top-loading-start").click();
									$('#page-wrapper').addClass('page-loading');
									$("#savebtn").text('Please Wait ...');
									setTimeout(function () {
										var image =document.getElementById("docUploadBtn").value;
											if(image != ''){
												uploadDocument($("#membercode").val(),"KYC");
												$("#documentPath").val($("#saveFullPath").val());
											}
										$(".remove-disable").prop("disabled",false);
									$.ajax({
										type:"POST",
										url:"${pageContext.servletContext.contextPath}/masters/savemember",
										data:$("#member-form").serialize()+"&opids="+opids+"&selemis="+selemis+"&selemispay="+selemispay+"&prdname="+$("#productId option:selected").text()+"&offername="+$("#offer_id option:selected").text(),
										dataType: 'json',
										async:false,
										success: function(response){
											if(response.split("~")[0] == "y"){
												var image =document.getElementById("up1").value;
												if(image != ''){
													uploadGroomBridePic("up1",response.split("~")[2]);
													isup1 = $("#saveFullPathNew").val();
												}
												newids = response.split("~")[2];
											}else{
												alertDiv("alert-danger",response.split("~")[1]);
											}
										}
									});
									if(isup1 != "false"){
										$.ajax({
											type:"POST",
											url:"${pageContext.servletContext.contextPath}/masters/updatecallfile",
											data:$("#member-form").serialize()+"&newids="+newids+"&isup1="+isup1,
											dataType: 'json',
											async:false,
											success: function(response){
											}
										});
									}
									if(newids != "0"){
										var msgText  = $("#memberId").val() == 0 ? "redirect_success_common" : "redirect_success_common_update";
										$("#top-loading-stop").click();	
										window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/1/"+msgText+"/0";
									}
									$('#page-wrapper').removeClass('page-loading');
									$("#savebtn").text($("#memberId").val() == 0 ? 'SAVE' : 'UPDATE');
									},10);
								}else{
									alert("Please add dp payment mode details !!");
								}
							}else{
								alert("Please add EMI details !!");
							}
						}else{
							alert("Please add down payment details, down payment is not match !!");
						}
					}else{
						alert("Please add ASF details !!");
					}
				}else{
					alert("Please select product !!");
				}
			}else{
				alert("Please check fields validation !!");
			}
	}else{
		alert("Please check mandatory fields !!");
		
	}
}

function uploadGroomBridePic(inputFileId,masterId){
	var uploadDoc = new FormData();
	uploadDoc.append("file",inputFileId == "up1" ? up1.files[0] : up2.files[0]);
	var text = $("#"+inputFileId).val();
	text = text.substring(text.lastIndexOf("\\") + 1, text.length);
	var updatedFile = text.substring(0,text.indexOf("."))+"."+text.substring(text.indexOf(".")+1,text.length);
	uploadDoc.append("name", updatedFile);
	uploadDoc.append("docUploadPath",$('#docUploadPathNew').val()+masterId+"/");
	uploadDoc.append("savePath",$('#savePathNew').val()+masterId+"/");
	uploadDoc.append("masterId",masterId);
	$("#saveFilename").val(updatedFile);
	$("#saveFullPathNew").val($("#savePathNew").val()+masterId+"/"+updatedFile);
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
function checkfullemi(){
	if($("#paymentPlan").val() != ""){
		$("#emIAmount").val(parseFloat($("#sellingprice").val())-parseFloat($("#dpAmount").val()));
	}
}
function setpaymentplan(){
	if($("#paymentPlan").val() != ""){
		if($("#paymentPlan").val() == "Full Payment"){
			$("#dpAmount").val($("#sellingprice").val());
			$("#emIAmount").val("0");
			$('#dpAmount,#emIAmount').prop('readonly', true);
		}else{
			$('#dpAmount').prop('readonly', false);
			$("#dpAmount").val($("#sellingprice").val());
		}
	}else{
		$("#dpAmount,#emIAmount").val("0");
	}
}
function calculatediscount(){
	if(parseFloat($("#sellingprice").val()) != 0.0){
		$("#dpDiscount").val(parseFloat($("#price").val())-parseFloat($("#sellingprice").val()));
	}else{
		$("#dpDiscount").val("0");
	}
	if(parseFloat($("#sellingprice").val()) != 0.0){
		var bsprice = (parseFloat($("#sellingprice").val())*100/118).toFixed(2);
		$("#basePrice").val(bsprice);
	}else{
		$("#basePrice").val("0");
	}
	
	$("#dpAmount").val("0");
	$("#emIAmount").val("0");
	$("#paymentPlan").val("")
}
function cancelmember(){
	window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/0/-1/0";
}
function getproductdetails(){
	if($("#productId").val() != "" && $("#productSubType").val() != ""){
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/getproductdetails",
			data:$("#member-form").serialize(),
			dataType: 'json',
			async:false,
			success: function(response){
				if($("#productSubType").val() == "White"){
					$("#price,#sellingprice").val(response.whitePrice);
				}else{
					$("#price,#sellingprice").val(response.purplePrice);
				}
				$("#planDays").val(response.planDays);
				$("#tenure").val(response.tenure);
				var bsprice = (parseFloat($("#price").val())*100/118).toFixed(2);
				$("#basePrice").val(bsprice);
				calculatediscount();
				setstartdatebooking();
			}
		});
	}else{
		$("#price,#sellingprice,#planDays,#basePrice,#dpDiscount,#tenure").val("0");
		$("#dpAmount,#emIAmount").val("0");$("#paymentPlan").val("")
		calculatediscount();
		setstartdatebooking();
	}
	
}
function getemployeedetails(codeid){
	var codeval = codeid == "tmecode" ? $("#tmecode").val() : codeid == "tmecodesup" ? $("#tmecodesup").val() : codeid == "salesAgentId" ? $("#salesAgentId").val() : $("#reportingmanagercode").val();
	if(codeval != ""){
		$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/getemployeedetails",
			data:$("#member-form").serialize()+"&codeval="+codeval,
			dataType: 'json',
			async:false,
			success: function(response){
				if(response.length != 0){
					var codevalname = codeid == "tmecode" ? $("#tmEName").val(response[0][1]) : codeid == "tmecodesup" ? $("#tmENamesup").val(response[0][1]) : codeid == "salesAgentId" ? $("#salesAgentName").val(response[0][1]) : $("#reportingManager").val(response[0][1]);
				}else{
					var codevalname = codeid == "tmecode" ? $("#tmEName").val('') : codeid == "tmecodesup" ? $("#tmENamesup").val('') : codeid == "salesAgentId" ? $("#salesAgentName").val('') : $("#reportingManager").val('');
				}
			}
		});
	}else{
		alert("Please enter code !!");
	}
	
}
function changeplaceholder(id){
	var ids = id.split("_");
	if(ids[0] == "epaymodepay"){
		if($("#"+id).val() == "NEFT"){
			$("#epaynopay_"+ids[1]).attr("placeholder", "Enter NEFT number");
		}else if($("#"+id).val() == "CHEQUE"){
			$("#epaynopay_"+ids[1]).attr("placeholder", "Enter CHEQUE number");
		}else if($("#"+id).val() == "CARD"){
			$("#epaynopay_"+ids[1]).attr("placeholder", "Enter CARD number");
		}else if($("#"+id).val() == "CASH"){
			$("#epaynopay_"+ids[1]).attr("placeholder", "Enter CASH details");
		}else if($("#"+id).val() == "ONLINE"){
			$("#epaynopay_"+ids[1]).attr("placeholder", "Enter ONLINE details");
		}else if($("#"+id).val() == "DEBIT CARD"){
			$("#epaynopay_"+ids[1]).attr("placeholder", "Enter DEBIT CARD details");
		}else if($("#"+id).val() == "OTHERES"){
			$("#epaynopay_"+ids[1]).attr("placeholder", "Enter Other details");
		}else{
			$("#epaynopay_"+ids[1]).attr("placeholder", "payment mode number");
		}
	}else if(ids[0] == "epaymode"){
		if($("#"+id).val() == "NEFT"){
			$("#epayno_"+ids[1]).attr("placeholder", "Enter NEFT number");
		}else if($("#"+id).val() == "CHEQUE"){
			$("#epayno_"+ids[1]).attr("placeholder", "Enter CHEQUE number");
		}else if($("#"+id).val() == "CARD"){
			$("#epayno_"+ids[1]).attr("placeholder", "Enter CARD number");
		}else if($("#"+id).val() == "CASH"){
			$("#epayno_"+ids[1]).attr("placeholder", "Enter CASH details");
		}else if($("#"+id).val() == "ONLINE"){
			$("#epayno_"+ids[1]).attr("placeholder", "Enter ONLINE details");
		}else if($("#"+id).val() == "DEBIT CARD"){
			$("#epayno_"+ids[1]).attr("placeholder", "Enter DEBIT CARD details");
		}else if($("#"+id).val() == "OTHERES"){
			$("#epayno_"+ids[1]).attr("placeholder", "Enter Other details");
		}else{
			$("#epayno_"+ids[1]).attr("placeholder", "payment mode number");
		}
	}
}
var paycnt = 1;
function generatePAYdiv(newcntpay){
	
	var innerHTML = ''
				   +'<div class="row" id="payrow_'+paycnt+'">'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group"><input type="hidden" value="'+(newcntpay == "-1" ? 'new_'+newcntpay : 'old_'+newcntpay)+'" id="isnewpay_'+paycnt+'" name="isnewpay_'+paycnt+'" />'
				   +'<select class="form-control required-validate" id="epaymodepay_'+paycnt+'" name="epaymodepay_'+paycnt+'" onchange="changeplaceholder(this.id)">'
				   +'<option value="">-- Payment Mode --</option>'
				   +'<option value="NEFT">NEFT</option>'
				   +'<option value="CHEQUE">CHEQUE</option>'
				   +'<option value="CARD">CARD</option>'
				   +'<option value="CASH">CASH</option>'
				   +'<option value="ONLINE">ONLINE</option>'
				   +'<option value="DEBIT CARD">DEBIT CARD</option>'
				   +'<option value="OTHERES">OTHERES</option>'
				   +'</select>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-1">'
				   +'<div class="form-group">'
				   +'<input class="form-control emipay-class keyup-numeric" id="eamountpay_'+paycnt+'" name="eamountpay_'+paycnt+'" placeholder="Amount" type="text" value=""/>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<input class="form-control" id="epaynopay_'+paycnt+'" name="epaynopay_'+paycnt+'" type="text" value="" placeholder="payment mode number"/>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<div class="input-group input-daterange" data-date-format="dd/mm/yyyy">'
				   +'<input type="text" id="edatepay_'+paycnt+'" name="edatepay_'+paycnt+'" class="form-control" placeholder="Down payment date" autocomplete="off">'
				   +'<span class="input-group-addon">'
				   +'<span class="fa fa-calendar"></span>'
				   +'</span>'
				   +'</div>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<input class="form-control" id="eremarkspay_'+paycnt+'" name="eremarkspay_'+paycnt+'" placeholder="Remarks" type="text" value="" />'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-1">'
				   +'<div class="form-group">'
				   +'<select class="form-control" id="eispaypay_'+paycnt+'" name="eispaypay_'+paycnt+'">'
				   +'<option value="Pending">Pending</option>'
				   +'<option value="RZ" selected>RZ</option>'
				   +'<option value="RT">RT</option>'
				   +'</select>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-1">'
				   +'<div class="form-group">'
				   +'<button type="button" class="btn btn-sm btn-danger" onclick="removepayemi('+paycnt+')"><i class="gi gi-bin"></i></button>'
				   +'</div>'
				   +'</div>'
				   +'</div>';
	$("#paymentRow").append(innerHTML);
	$('.input-datepicker, .input-daterange').datepicker();
	paycnt++;
	return (paycnt-1);
}
function removepayemi(id){
	var isold = ($("#isnewpay_"+id).val()).split("_");
	if(isold[0] == "old"){
		$("#isnewpay_"+id).val("del_"+isold[1]);
		$("#eamountpay_"+id).val("0");
		$("#payrow_"+id).hide();
	}else{
		$("#payrow_"+id).remove();
	}
}
function generateEMI(){
	$("#emiRow").html('');
	var no =  $("#eMINo").val() == "" || isNaN($("#eMINo").val()) ? 0 : parseInt($("#eMINo").val());
	var rate = 12.0;
	<c:forEach var="emirateList" items="${emirateList}" >
		if(parseInt("${emirateList[1]}") == no){
			rate = parseFloat("${emirateList[2]}");
		}
	</c:forEach>
	var emiamt = getEMI(parseFloat($("#emIAmount").val()),rate,parseInt($("#eMINo").val()));
	for(var i=0;i<no;i++){
		var curcnt = generateEMIdiv("-1");
		$("#eamount_"+curcnt).val(emiamt.toFixed(2));
		$("#epaymode_"+curcnt).val($("#emi_paymentmode").val());
	}
}
var asdcnt = 1;
function addASF(newcnt){
	var innerHTML = ''
				  +	'<div id="maindiv-'+asdcnt+'" class="row" id="row_asf_0">'
				  +	'<div class="col-lg-2">'
				  +	'<div class="form-group">'
				  +	'<input class="form-control asf-class required-validate keyup-numeric" id="asfamount_'+asdcnt+'" name="asfamount_'+asdcnt+'" placeholder="ASF Amount" type="text" value="" />'
				  +	'<input type="hidden" value="'+(newcnt == "-1" ? 'new_'+newcnt : 'old_'+newcnt)+'" id="isnew_'+asdcnt+'" name="isnew_'+asdcnt+'" /> </div>'
				  +	'</div>'
				  +	'<div class="col-lg-2">'
				  +	'<div class="form-group">'
				  +	'<div class="input-group input-daterange" data-date-format="dd/mm/yyyy">'
				  +	'<input type="text" id="asfdate_'+asdcnt+'" name="asfdate_'+asdcnt+'"  class="form-control" placeholder="ASF Date" autocomplete="off">'
				  +	'<span class="input-group-addon"><i class="gi gi-calendar"></i></span>'
				  +	'</div>'
				  +	'</div>'
				  +	'</div>'
				  +	'<div class="col-lg-2">'
				  +	'<div class="form-group">'
				  +	'<input class="form-control keyup-numeric" id="asfamountrec_'+asdcnt+'" name="asfamountrec_'+asdcnt+'" placeholder="ASF Received Amount" type="text" value="0" />'
				  +	'</div>'
				  +	'</div>'
				  +	'<div class="col-lg-2">'
				  +	'<div class="form-group">'
				  +	'<div class="input-group input-daterange" data-date-format="dd/mm/yyyy">'
				  +	'<input type="text" id="asfdaterec_'+asdcnt+'" name="asfdaterec_'+asdcnt+'" class="form-control" placeholder="ASF Received Date" autocomplete="off">'
				  +	'<span class="input-group-addon"><i class="gi gi-calendar"></i></span>'
				  +	'</div>'
				  +	'</div>'
				  +	'</div>'
				  +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<select class="form-control" id="asfstatus_'+asdcnt+'" name="asfstatus_'+asdcnt+'">'
				   +'<option value="">--SELECT--</option>'
				   +'<option value="Pending">Pending</option>'
				   +'<option value="Cleared">Cleared</option>'
				   +'</select>'
				   +'</div>'
				   +'</div>'
				  +	'<div class="col-lg-2">'
				  +	'<div class="form-group">'
				  +	'<button type="button" class="btn btn-sm btn-danger" onclick="removeASF('+asdcnt+')"><i class="gi gi-bin"></i></button>'
				  +	'</div>'
				  +	'</div>'
				  +	'</div>';
		$("#asfRow").append(innerHTML);
		$('.input-datepicker, .input-daterange').datepicker();
		asdcnt++;
		return (asdcnt-1);
}
function removeASF(id){
	var isold = ($("#isnew_"+id).val()).split("_");
	if(isold[0] == "old"){
		$("#isnew_"+id).val("del_"+isold[1]);
		$("#maindiv-"+id).hide();
	}else{
		$("#maindiv-"+id).remove();
	}
	
}
var emicnt = 1;
function generateEMIdiv(newcntemi){
	
	var innerHTML = ''
				   +'<div class="row" id="payemirow_'+emicnt+'">'
				   +'<div class="col-lg-1">'
				   +'<div class="form-group">'
				   +'<input class="form-control emi-class required-validate keyup-numeric" id="eamount_'+emicnt+'" name="eamount_'+emicnt+'" placeholder="Amount" type="text" value="" />'
				   +'<input type="hidden" value="'+(newcntemi == "-1" ? 'new_'+newcntemi : 'old_'+newcntemi)+'" id="isnewemi_'+emicnt+'" name="isnewemi_'+emicnt+'" /></div>'
				   +'</div>'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<select class="form-control required-validate" id="epaymode_'+emicnt+'" name="epaymode_'+emicnt+'" onchange="changeplaceholder(this.id)">'
				   +'<option value="">-- Payment Mode --</option>'
				   +'<option value="NEFT">NEFT</option>'
				   +'<option value="CHEQUE">CHEQUE</option>'
				   +'<option value="CARD">CARD</option>'
				   +'<option value="CASH">CASH</option>'
				   +'<option value="ONLINE">ONLINE</option>'
				   +'<option value="DEBIT CARD">DEBIT CARD</option>'
				   +'<option value="GPAY">GPAY</option>'
				   +'<option value="OTHERES">OTHERES</option>'
				   +'</select>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<input class="form-control" id="epayno_'+emicnt+'" name="epayno_'+emicnt+'" type="text" value="" placeholder="payment mode number"/>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<div class="input-group input-daterange" data-date-format="dd/mm/yyyy">'
				   +'<input type="text" id="edate_'+emicnt+'" name="edate_'+emicnt+'" class="form-control" placeholder="Emi date" autocomplete="off">'
				   +'<span class="input-group-addon">'
				   +'<span class="fa fa-calendar"></span>'
				   +'</span>'
				   +'</div>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-1">'
				   +'<div class="form-group">'
				   +'<select class="form-control" id="eispay_'+emicnt+'" name="eispay_'+emicnt+'">'
				   +'<option value="Pending">Pending</option>'
				   +'<option value="RZ">RZ</option>'
				   +'<option value="RT">RT</option>'
				   +'</select>'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-2">'
				   +'<div class="form-group">'
				   +'<input class="form-control" id="eremarks_'+emicnt+'" name="eremarks_'+emicnt+'" placeholder="Remarks" type="text" value="" />'
				   +'</div>'
				   +'</div>'
				   +'<div class="col-lg-1">'
				   +'<div class="form-group">'
				   +'<button type="button" class="btn btn-sm btn-danger" onclick="removeemi('+emicnt+')"><i class="gi gi-bin"></i></button>'
				   +'</div>'
				   +'</div>'
				   +'</div>';
	$("#emiRow").append(innerHTML);
	$('.input-datepicker, .input-daterange').datepicker();
	emicnt++;
	return (emicnt-1);
}
function removeemi(id){
	
	var isold = ($("#isnewemi_"+id).val()).split("_");
	if(isold[0] == "old"){
		$("#isnewemi_"+id).val("del_"+isold[1]);
		$("#payemirow_"+id).hide();
	}else{
		$("#payemirow_"+id).remove();
	}
}
function saveGallary(path,fileNameOnly,ismenu){
	$.ajax({
			type:"POST",
			url:"${pageContext.servletContext.contextPath}/masters/saveGallary",
			data:$("#gallaryForm").serialize()+"&fileMasterPath="+path+"&fileNameOnly="+fileNameOnly+"&ismenuavail="+ismenu+"&buid="+'${business_id}',
			dataType: 'json',
			async:false,
			success: function(response){
				if(response != "false"){
					var innerhtml = ''
				          + '<div id="fimg-'+response+'" class="col-xs-6 col-sm-2">'
				          + '<a href="${pageContext.request.contextPath}/resources/'+path+'" class="gallery-link" title="Image Info">'
				          + '<img src="${pageContext.request.contextPath}/resources/'+path+'" alt="image" height="200" width="200"></a>'
				          + '<div class="row col-xs-6" style="'+(ismenu == '1' ? '' : 'margin-left: 20%; margin-top: -2%;')+'"><label style="color: white;">a</label><input type="text" name="" id="" class="form-control" value="Remove" onclick="removeupdateimage('+response+',1)" style="background: #3498db; color: white;cursor: pointer;" readonly></div>';
						if(ismenu == '1'){
							innerhtml = innerhtml + ''
					          + '<div class="row col-xs-6" style="margin-left: 15%;">Price($): <input type="text" name="mprice-'+response+'" id="mprice-'+response+'" value="0" onchange="removeupdateimage('+response+',0)" class="form-control"></div>'
					          + '</div>';
						}
						$("#"+(ismenu == '1' ? 'menu-gallary' : 'main-gallary')).append(innerhtml);
					}
				
				}
		});
}
function removeupdateimage(fid,isdelete){
	$.ajax({
		type:"POST",
		url:"${pageContext.servletContext.contextPath}/masters/updatedeletegallary",
		data:$("#gallaryForm").serialize()+"&isdelete="+isdelete+"&fid="+fid+"&menuprice="+(isdelete == "0" ? $("#mprice-"+fid).val() : '0'),
		dataType: 'json',
		async:false,
		success: function(response){
			if(isdelete == "1"){
				$("#fimg-"+fid).remove();
			}
			
			}
	});
	
}

function setstartdatebooking(){
	if($("#tenure").val() != "" && !isNaN($("#tenure").val())  && parseInt($("#tenure").val()) != 0 && $("#mAFSignedDate").val() != ""){
		var nextmonthdate = moment($("#mAFSignedDate").val(), "DD/MM/YYYY").add(1, 'M').startOf("month");
		$("#startDate").val(moment(nextmonthdate).format('DD/MM/YYYY'));
		nextmonthdate = moment($("#mAFSignedDate").val(), "DD/MM/YYYY").add(parseInt($("#tenure").val()), 'Y').endOf("month");
		$("#endDate	").val(moment(nextmonthdate).format('DD/MM/YYYY'));
	}else{
		$("#startDate").val("");
		$("#endDate	").val("");
	}
	
}
function cancelpofile(){
	window.location.href = "${pageContext.request.contextPath}/masters/clientdashboard/businesses/PvkgaI6b5tKwB7Bkop3HxA==/0/-1/0";
}

if('${member_id}' != '0'){
	var updtid = 0;
	<c:forEach var="asfDet" items="${asfDet}" >
		updtid = addASF('${asfDet[0]}');
		$("#asfamount_"+updtid).val('${asfDet[2]}');
		$("#asfdate_"+updtid).val('${asfDet[3]}');
		$("#asfamountrec_"+updtid).val('${asfDet[4]}');
		$("#asfdaterec_"+updtid).val('${asfDet[5]}');
		$("#asfstatus_"+updtid).val('${asfDet[6]}');
	</c:forEach>
	
	<c:forEach var="emiDet" items="${emiDet}" >
		updtid = generateEMIdiv('${emiDet[0]}');
		$("#eamount_"+updtid).val('${emiDet[2]}');
		$("#epaymode_"+updtid).val('${emiDet[5]}');
		$("#epayno_"+updtid).val('${emiDet[6]}');
		$("#edate_"+updtid).val('${emiDet[3]}');
		$("#eispay_"+updtid).val('${emiDet[4]}');
		$("#eremarks_"+updtid).val('${emiDet[7]}');
		changeplaceholder("epaymode_"+updtid);
	</c:forEach>
	<c:forEach var="emiDet" items="${emiDetPay}" >
	updtid = generatePAYdiv('${emiDet[0]}');
	$("#eamountpay_"+updtid).val('${emiDet[2]}');
	$("#epaymodepay_"+updtid).val('${emiDet[5]}');
	$("#epaynopay_"+updtid).val('${emiDet[6]}');
	$("#edatepay_"+updtid).val('${emiDet[3]}');
	$("#eremarkspay_"+updtid).val('${emiDet[4]}');
	$("#eispaypay_"+updtid).val('${emiDet[7]}');
	changeplaceholder("epaymodepay_"+updtid);
</c:forEach>

if(parseFloat($("#emIAmount").val()) == 0){
	$("#emIAmount").val(parseFloat($("#sellingprice").val())-parseFloat($("#dpAmount").val()));
}

if('${md.enrollCamp}' == "HFRP"){
	$("#campaigncode").attr("placeholder", "Member Code");
	$("#campaignname").attr("placeholder", "Member Name");
	$(".camp-div").show();
}else if('${md.enrollCamp}' == "WEB"){
	$("#campaigncode").attr("placeholder", "Campaign Code");
	$("#campaignname").attr("placeholder", "Campaign Name");
	$(".camp-div").show();
}	
	$("#city_id").val('${md.resCity}');
}else{
	$("#city_id").val('');
}


</script>
</body>
</html>