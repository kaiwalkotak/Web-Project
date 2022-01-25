<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
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
    <body>
        <!-- Page Wrapper -->
     
        <div id="page-wrapper">
		<!-- Preloader -->
		<div class="preloader themed-background">
			<h1 class="push-top-bottom text-light text-center">
				<strong>Pro</strong>UI
			</h1>
			<div class="inner">
				<h3 class="text-light visible-lt-ie10">
					<strong>Loading..</strong>
				</h3>
				<div class="preloader-spinner hidden-lt-ie10"></div>
			</div>
		</div>
		<!-- END Preloader -->

            <!-- Page Container -->
          
            <div id="page-container" class="sidebar-mini sidebar-visible-lg-mini sidebar-no-animations">
                <!-- Alternative Sidebar -->
                 <jsp:include page="SidePanel.jsp"></jsp:include>

                <!-- Main Container -->
                <div id="main-container">
                    <!-- Header -->
                  <jsp:include page="HeadPanel.jsp"></jsp:include>

                    <!-- Page content -->
                    <div id="page-content">
                        <!-- Dashboard 2 Header -->
                        <div class="content-header">
                            <ul class="nav-horizontal text-center">
                                <li class="active">
                                    <a href="${pageContext.request.contextPath}/adminlogin"><i class="fa fa-home"></i> Home</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/0/-1/0"><i class="gi gi-group"></i>Members </a>
                                </li>
                                <c:if test="${sessionBeanF.role.rname eq 'DBA'}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/plcmembers/X6qqgKmWz+ollIIF4yTCAg==/0/-1/0"><i class="gi gi-show_big_thumbnails"></i>PLC Status </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/salemember/XQmMpRN+jJOY0qfEtd8nkw==/0/-1/0"><i class="gi gi-table"></i>Sales Status </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/wcmember/GGBuKTcEmtL+OQsPVRp2Hw==/0/-1/0"><i class="gi gi-table"></i>WC Status </a>
                                </li>
                                </c:if>
                                <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminproduct/lerLMbSlsU4F7LZI68gRNA==/0/-1/0"><i class="gi gi-shopping_bag"></i> Product </a>
                                </li>
                                </c:if>
                                <%-- <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}"> --%>
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/payment/5EPit+dRy5h6zv1bK3J1SA==/0/-1/0"><i class="gi gi-money"></i> Payments </a>
                                </li>
                                <%-- </c:if> --%>
                                <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminPaymentRecipt/T4vs2tOvtPdMgEVZHjUuog==/0/-1/0"><i class="fa fa-money"></i> Payment Receipt</a>
                                </li>
                                </c:if>
                                <%-- <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}"> --%>
                                <li>
                                    <a href="${pageContext.request.contextPath}/ticket/clientdashboard/ticket/mcnf63Q4AWdcV7TEWTIpNQ==/0/-1/0"><i class="fa fa-simplybuilt"></i>Ticket </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/agreements/XVzWgWxDnfV6HslRZmnxDA==/0/-1/0"><i class="gi gi-notes_2"></i> Agreement </a>
                                </li>
                                 <li>
                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/lockdown/eCGyCY6mntqmAhZD+UIc3w==/0/-1/0"><i class="gi gi-notes_2"></i> Lockdown Agreement </a>
                                </li>
                                <%-- </c:if> --%>
                                <li>
                                    <a href="javascript:void(0)"><i class="fa fa-pencil"></i> Profile</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><i class="fa fa-cogs"></i> Settings</a>
                                </li>
                            </ul>
                        </div>
                        <!-- END Dashboard 2 Header -->
                        
                        <!-- Mini Top Stats Row -->
                        <div class="row">
                           <div class="col-sm-6 col-lg-3">
                                <!-- Widget -->
                                <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/0/-1/0" class="widget widget-hover-effect1">
                                    <div class="widget-simple">
                                         <div class="widget-icon pull-left themed-background-autumn animation-fadeIn">
                                            <i class="gi gi-group sidebar-nav-icon"></i>
                                        </div>
                                        <h3 class="widget-content text-right animation-pullDown">
                                          <strong>${mcount}</strong>   + <br>
                                            <small>MEMBERS</small>
                                          <%--   ${memberCount} --%>
                                        </h3>
                                    </div>
                                </a>
                                <!-- END Widget -->
                            </div>
                             <div class="col-sm-6 col-lg-3">
                                <!-- Widget -->
                                <a href="${pageContext.request.contextPath}/masters/clientdashboard/AdminEnq/W2hb6IiYqztV9mD2Ntu3sA==/0/-1/0" class="widget widget-hover-effect1">
                                    <div class="widget-simple">
                                        <div class="widget-icon pull-left themed-background-spring animation-fadeIn">
                                            <i class="gi gi-pen"></i>
                                        </div>
                                        <h3 class="widget-content text-right animation-pullDown">
                                          <strong>${ecount}</strong>   + <br>
                                            <small>INQUIRY</small>
                                        </h3>
                                    </div>
                                </a>
                                <!-- END Widget -->
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <!-- Widget -->
                                <a href="javascript:void(0)" class="widget widget-hover-effect1">
                                    <div class="widget-simple">
                                          <div class="widget-icon pull-left themed-background-amethyst animation-fadeIn">
                                            <i class="gi gi-notes_2"></i>
                                        </div>
                                       <h3 class="widget-content text-right animation-pullDown">
                                          <strong>50</strong> +<br>
                                            <small>RESORTS</small>
                                        </h3>
                                    </div>
                                </a>
                                <!-- END Widget -->
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <!-- Widget -->
                                <a href="#!" class="widget widget-hover-effect1">
                                    <div class="widget-simple">
                                         <div class="widget-icon pull-left themed-background-fire animation-fadeIn">
                                           <i class="gi gi-stats"></i>
                                        </div>
                                       <h3 class="widget-content text-right animation-pullDown">
                                          <strong>46.43</strong> %<br>
                                            <small>GROWTH RATE</small>
                                        </h3>
                                    </div>
                                </a>
                                <!-- END Widget -->
                            </div>
                       
                        </div>
                        <!-- END Mini Top Stats Row -->
                        <div class="row">
                          <div class="col-md-3">
                                <!-- Your Plan Widget -->
                                <div class="widget">
                                    <div class="widget-extra themed-background-dark">
                                        <div class="widget-options">
                                            <!-- <div class="btn-group btn-group-xs">
                                                <a href="javascript:void(0)" class="btn btn-default" data-toggle="tooltip" title="Edit Widget"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-default" data-toggle="tooltip" title="Quick Settings"><i class="fa fa-cog"></i></a>
                                            </div> -->
                                        </div>
                                        <h3 class="widget-content-light">
                                            Package  <strong>Selling</strong>
                                            <small><a href="page_ready_pricing_tables.html"><strong></strong></a></small>
                                        </h3>
                                    </div>
                                    <div class="widget-extra-full">
                                        <div class="row text-center">
                                         <c:forEach var="tableDetails" items="${packlist}" varStatus="cnt">										
											
                                            <div class="col-xs-12 ">
                                                <h3>
                                                    <strong>${tableDetails[1]}</strong> <small></small><br>
                                                    <small><i class="fa fa-folder-open-o"></i> ${tableDetails[0]}</small>
                                                </h3>
                                            </div>
                                           
                                            </c:forEach>
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                                <!-- END Your Plan Widget -->
                                 </div>
                                 
                        
                        <div class="row">
                        
<%-- 
                        <!-- Dashboard 2 Content -->
                       
                            <div class="col-md-6">
                                <!-- Web Server Block -->
                                <div class="block full">
                                    <!-- Web Server Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                            <span id="dash-chart-live-info" class="label label-primary">%</span>
                                            <span class="label label-danger animation-pulse">CPU Load</span>
                                        </div>
                                        <h2><strong>Web</strong> Server #1</h2>
                                    </div>
                                    <!-- END Web Server Title -->

                                    <!-- Web Server Content -->
                                    <!-- Flot Charts (initialized in js/pages/index2.js), for more examples you can check out http://www.flotcharts.org/ -->
                                    <div id="dash-chart-live" class="chart"></div>
                                    <!-- END Web Server Content -->
                                </div>
                                <!-- END Web Server Block -->

                                <!-- Mini Sales Charts Block -->
                                <!-- Jquery Sparkline (initialized in js/pages/index2.js), for more examples you can check out http://omnipotent.net/jquery.sparkline/#s-about -->
                                <div class="block full">
                                    <!-- Mini Sales Charts Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                            <div class="btn-group btn-group-sm">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                                <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                                    <li>
                                                        <a href="javascript:void(0)"><i class="fa fa-check pull-right"></i> This Week</a>
                                                        <a href="javascript:void(0)">This Month</a>
                                                        <a href="javascript:void(0)">This Year</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2><strong>Sales</strong> This Week</h2>
                                    </div>
                                    <!-- END Mini Sales Charts Title -->

                                    <!-- Mini Sales Charts Content -->
                                    <div class="row text-center">
                                        <div class="col-sm-4">
                                            <span id="mini-sales1">2,5,6,7,10,16,18</span>
                                            <h4>WP Theme</h4>
                                        </div>
                                        <div class="col-sm-4">
                                            <span id="mini-sales2">5,6,8,3,11,15,35</span>
                                            <h4>Web App</h4>
                                        </div>
                                        <div class="col-sm-4">
                                            <span id="mini-sales3">7,8,9,8,8,10,12</span>
                                            <h4>Icon Set</h4>
                                        </div>
                                    </div>
                                    <!-- END Mini Sales Charts Content -->
                                </div>
                                <!-- END Mini Sales Charts Block -->

                                <!-- Mini Earnings Charts Block -->
                                <!-- Jquery Sparkline (initialized in js/pages/index2.js), for more examples you can check out http://omnipotent.net/jquery.sparkline/#s-about -->
                                <div class="block full">
                                    <!-- Mini Earnings Charts Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                            <div class="btn-group btn-group-sm">
                                                <a href="javascript:void(0)" class="btn btn-alt btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                                <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                                    <li>
                                                        <a href="javascript:void(0)"><i class="fa fa-check pull-right"></i> This Week</a>
                                                        <a href="javascript:void(0)">This Month</a>
                                                        <a href="javascript:void(0)">This Year</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2><strong>Earnings</strong> This Week</h2>
                                    </div>
                                    <!-- END Mini Earnings Charts Title -->

                                    <!-- Mini Earnings Charts Content -->
                                    <div class="row text-center">
                                        <div class="col-sm-4">
                                            <span id="mini-earnings1">200,500,600,700,1000,1600,1800</span>
                                            <h4>WP Theme</h4>
                                        </div>
                                        <div class="col-sm-4">
                                            <span id="mini-earnings2">500,600,800,300,1100,1500,3500</span>
                                            <h4>Web App</h4>
                                        </div>
                                        <div class="col-sm-4">
                                            <span id="mini-earnings3">700,800,900,800,800,1000,1200</span>
                                            <h4>Icon Set</h4>
                                        </div>
                                    </div>
                                    <!-- END Mini Earnings Charts Content -->
                                </div>
                                <!-- END Mini Earnings Charts Block -->

                                <!-- Quick Post Block -->
                                <div class="block">
                                    <!-- Quick Post Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                            <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-default" data-toggle="tooltip" title="Post Options"><i class="fa fa-pencil"></i></a>
                                        </div>
                                        <h2><strong>Quick</strong> Post</h2>
                                    </div>
                                    <!-- END Quick Post Title -->

                                    <!-- Quick Post Content -->
                                    <form action="index2.html" method="post" class="form-bordered" onsubmit="return false;">
                                        <div class="form-group">
                                            <input type="text" id="qpost-title" name="qpost-title" class="form-control" placeholder="Enter a title..">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" id="qpost-tags" name="qpost-tags" class="input-tags" value="tutorial, learn, javascript">
                                        </div>
                                        <div class="form-group">
                                            <textarea id="qpost-content" name="qpost-content" rows="11" class="form-control" placeholder="Enter content.."></textarea>
                                        </div>
                                        <div class="form-group form-actions">
                                            <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-check"></i> Publish</button>
                                            <button type="reset" class="btn btn-sm btn-warning"><i class="fa fa-repeat"></i> Reset</button>
                                        </div>
                                    </form>
                                    <!-- END Quick Post Content -->
                                </div>
                                <!-- END Quick Post Block -->
                            </div> --%>
                       <%--      <div class="col-md-6">
                                <!-- Timeline Block -->
                                <div class="block">
                                    <!-- Timeline Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                            <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-default" data-toggle="tooltip" title="Settings"><i class="fa fa-cog"></i></a>
                                        </div>
                                        <h2><strong>Latest</strong> Inquiry</h2>
                                    </div>
                                    <!-- END Timeline Title -->

                                    <!-- Timeline Content -->
                                    <div class="block-content-full">
                                        <div class="timeline">
                                         <c:forEach var="tableDetails" items="${enqlist}" varStatus="cnt">
										
											<c:forEach begin="0" end="${fn:length(tableDetails)-1}" varStatus="dataIndex">
                                           
                                           
                                            <!-- loop Here -->
                                            <c:if test="${dataIndex.index eq 0}">
                                             <ul class="timeline-list">
                                                <li class="active">
                                                    <div class="timeline-icon"><i class="gi gi-airplane"></i></div>
                                                    <div class="timeline-time"><small>${tableDetails[dataIndex.index]}</small></div>
                                                    </c:if>
                                                    <c:if test="${dataIndex.index eq 1}">
                                                    <div class="timeline-content">
                                                        <p class="push-bit"><a href="page_ready_user_profile.html"><strong>${tableDetails[dataIndex.index]}</strong></a></p>
                                                        
                                                         </c:if>
                                                        <c:if test="${dataIndex.index eq 2}">
                                                        <p class="push-bit">${tableDetails[dataIndex.index]}</p>
                                                         </div>
                                                         </c:if>
                                                   
                                                    
                                                </li>
                                                <!-- loop Here -->
                                                </c:forEach>
                                                </c:forEach>
                                                <li class="text-center">
                                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/AdminEnq/W2hb6IiYqztV9mD2Ntu3sA==/0/-1/0" class="btn btn-xs btn-default">View more..</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- END Timeline Content -->
                                </div> --%>
                                <!-- END Timeline Block -->
                                
                                <div class="col-md-4">
                                <!-- Timeline Widget -->
                                <div class="widget">
                                    <div class="widget-extra themed-background-dark">
                                        <!-- <div class="widget-options">
                                            <div class="btn-group btn-group-xs">
                                                <a href="javascript:void(0)" class="btn btn-default" data-toggle="tooltip" title="Edit Widget"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-default" data-toggle="tooltip" title="Quick Settings"><i class="fa fa-cog"></i></a>
                                            </div>
                                        </div> -->
                                        <h3 class="widget-content-light">
                                            Latest <strong>Inquiry</strong>
                                            <!-- <small><a href="page_ready_timeline.html"><strong>View all</strong></a></small> -->
                                        </h3>
                                    </div>
                                    <div class="widget-extra">
                                        <!-- Timeline Content -->
                                        <div class="timeline">
                                            <ul class="timeline-list">
                                               <c:forEach var="tableDetails" items="${enqlist}" varStatus="cnt">
                                            <!-- loop Here -->
                                                <li class="active">
                                                    <div class="timeline-icon"><i class="fa fa-pencil"></i></div>
                                                    <div class="timeline-time"><small>${tableDetails[0]}</small></div>
                                                    <div class="timeline-content">
                                                        <p class="push-bit"><a href="javascript:void(0)"><strong>${tableDetails[1]}</strong></a></p>
                                                        <p class="push-bit">${tableDetails[2]}</p>
                                                         </div>
                                                </li>
                                                <!-- loop Here -->
                                                </c:forEach>
                                             
                                                <li class="text-center">
                                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/AdminEnq/W2hb6IiYqztV9mD2Ntu3sA==/0/-1/0" class="btn btn-xs btn-default">View more..</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <!-- END Timeline Content -->
                                    </div>
                                </div>
                                <!-- END Timeline Widget -->
                            </div>
                            
                            <!-- raise Trip widget -->
                              <div class="col-md-4">
                                <!-- Timeline Widget -->
                                <div class="widget">
                                    <div class="widget-extra themed-background-dark">
                                        <!-- <div class="widget-options">
                                            <div class="btn-group btn-group-xs">
                                                <a href="javascript:void(0)" class="btn btn-default" data-toggle="tooltip" title="Edit Widget"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" class="btn btn-default" data-toggle="tooltip" title="Quick Settings"><i class="fa fa-cog"></i></a>
                                            </div>
                                        </div> -->
                                        <h3 class="widget-content-light">
                                            Latest <strong>Trip Raise</strong>
                                            <!-- <small><a href="page_ready_timeline.html"><strong>View all</strong></a></small> -->
                                        </h3>
                                    </div>
                                    <div class="widget-extra">
                                        <!-- Timeline Content -->
                                        <div class="timeline">
                                            <ul class="timeline-list">
                                               <c:forEach var="tableDetails" items="${raiseTrip}" varStatus="cnt">
                                            <!-- loop Here -->
                                                <li class="active">
                                                    <div class="timeline-icon"><i class="gi gi-airplane"></i></div>
                                                    <div class="timeline-time"><small>${tableDetails[0]}</small></div>
                                                    <div class="timeline-content">
                                                        <p class="push-bit"><a href="javascript:void(0)"><strong>${tableDetails[1]} ${tableDetails[2]}</strong></a></p>
                                                        <p class="push-bit">${tableDetails[3]}</p>
                                                        <span class="label label-success">${tableDetails[4]}</span>
                                                        <span class="label label-warning">TO</span>
                                                        <span class="label label-success">${tableDetails[5]}</span>
                                                        <span class="label label-info">${tableDetails[6]} Days</span>
                                                        <span class="label label-default">${tableDetails[7]}</span>
                                                       
                                                       
                                                       
                                                         </div>
                                                </li>
                                                <!-- loop Here -->
                                                </c:forEach>
                                             
                                                <li class="text-center">
                                                    <a href="${pageContext.request.contextPath}/masters/clientdashboard/raiseTrip/uuwjv9WT8DchTC36PXwkuQ==/0/-1/0" class="btn btn-xs btn-default">View more..</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <!-- END Timeline Content -->
                                    </div>
                                </div>
                                <!-- END Timeline Widget -->
                            </div>
                            <!-- raise Trip widget -->
                             </div>
						<div class="col-sm-6">
							<div class="block full">
								<div class="block-title">
									<h2>
										<strong>Classic</strong> Chart
									</h2>
								</div>
								<div id="chart-classic" class="chart"
									style="padding: 0px; position: relative;">
									<canvas class="flot-base" width="535" height="360"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 535px; height: 360px;"></canvas>
									<div class="flot-text"
										style="position: absolute; inset: 0px; font-size: smaller; color: rgb(84, 84, 84);">
										<div class="flot-x-axis flot-x1-axis xAxis x1Axis"
											style="position: absolute; inset: 0px; display: block;">
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 22px; text-align: center;">Jan</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 66px; text-align: center;">Feb</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 109px; text-align: center;">Mar</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 155px; text-align: center;">Apr</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 198px; text-align: center;">May</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 245px; text-align: center;">Jun</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 292px; text-align: center;">Jul</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 333px; text-align: center;">Aug</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 378px; text-align: center;">Sep</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 423px; text-align: center;">Oct</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 466px; text-align: center;">Nov</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 44px; top: 345px; left: 512px; text-align: center;">Dec</div>
										</div>
										<div class="flot-y-axis flot-y1-axis yAxis y1Axis"
											style="position: absolute; inset: 0px; display: block;">
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 332px; left: 19px; text-align: right;">0</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 267px; left: 0px; text-align: right;">1000</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 202px; left: 0px; text-align: right;">2000</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 137px; left: 0px; text-align: right;">3000</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 72px; left: 0px; text-align: right;">4000</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 7px; left: 0px; text-align: right;">5000</div>
										</div>
									</div>
									<canvas class="flot-overlay" width="535" height="360"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 535px; height: 360px;"></canvas>
									<div class="legend">
										<div
											style="position: absolute; width: 87px; height: 56px; top: 24px; left: 45px; background-color: rgb(255, 255, 255); opacity: 0.85;">
										</div>
										<table
											style="position: absolute; top: 24px; left: 45px;; font-size: smaller; color: #545454">
											<tbody>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(52, 152, 219); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">Earnings</td>
												</tr>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(51, 51, 51); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">Sales</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div> 
                        <!-- END Dashboard 2 Content -->
                        
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

        <!-- User Settings, modal which opens from Settings link (found in top right user menu) and the Cog link (found in sidebar user info) -->
        <div id="modal-user-settings" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header text-center">
                        <h2 class="modal-title"><i class="fa fa-pencil"></i> Settings</h2>
                    </div>
                    <!-- END Modal Header -->

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form action="index.html" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
                            <fieldset>
                                <legend>Vital Info</legend>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Username</label>
                                    <div class="col-md-8">
                                        <p class="form-control-static">Admin</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="user-settings-email">Email</label>
                                    <div class="col-md-8">
                                        <input type="email" id="user-settings-email" name="user-settings-email" class="form-control" value="admin@example.com">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="user-settings-notifications">Email Notifications</label>
                                    <div class="col-md-8">
                                        <label class="switch switch-primary">
                                            <input type="checkbox" id="user-settings-notifications" name="user-settings-notifications" value="1" checked>
                                            <span></span>
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Password Update</legend>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="user-settings-password">New Password</label>
                                    <div class="col-md-8">
                                        <input type="password" id="user-settings-password" name="user-settings-password" class="form-control" placeholder="Please choose a complex one..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="user-settings-repassword">Confirm New Password</label>
                                    <div class="col-md-8">
                                        <input type="password" id="user-settings-repassword" name="user-settings-repassword" class="form-control" placeholder="..and confirm it!">
                                    </div>
                                </div>
                            </fieldset>
                            <div class="form-group form-actions">
                                <div class="col-xs-12 text-right">
                                    <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-sm btn-primary">Save Changes</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- END Modal Body -->
                </div>
            </div>
        </div>
        <!-- END User Settings -->

        <jsp:include page="AllJs.jsp"></jsp:include> 
        
        
    </body>
    
</html>