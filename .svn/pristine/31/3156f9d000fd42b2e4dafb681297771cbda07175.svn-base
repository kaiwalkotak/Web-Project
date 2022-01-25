<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Kamra Suites </title>

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
		</style>

   </head>
   <body class="page-loading">
        <!-- Page Wrapper -->
        <div id="page-wrapper">
        
            <!-- Preloader -->
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong></strong>CRM</h1>
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
                          <div class="content-header">
                            <div class="header-section">
                                <h1>
                                    <i class="fa fa-flag"></i>My Profile<br><small>Profile Detail</small>
                                </h1>
                            </div>
                        </div>
                       <!-- Advanced Gallery Widgets Row -->
                        <div class="row">
                            <div class="col-md-4">
                                <!-- Advanced Animated Gallery Widget -->
                                <div class="widget" style="padding-bottom: 0px;">
                                    <div class="widget-advanced widget-advanced-alt">
                                        <!-- Widget Header -->
                                        <div class="widget-header text-left" style="min-height: 300px;">
                                            <img src="img/profile.jpg" alt="background" class="widget-background animation-pulseSlow" style="top: 10px;left: 50px;height: 313px;">
                                        </div>
                                        <!-- END Widget Header -->

                                        <!-- Widget Main -->
                                        <div class="widget-main" style="text-align: center;padding: 0px;">
                                            <h3 class="widget-content clearfix">
                                                <a href="javascript:void(0)" class="themed-color-default"><strong>Admin</strong> <br></a><br>
                                            </h3>
                                        </div>
                                        <!-- END Widget Main -->
                                        
                                    </div>
                                </div>
                                <!-- END Advanced Animated Gallery Widget -->
                            </div>
                            <div class="col-md-8">
                            	<div class="block">
                                    <!-- Info Title -->
                                    <div class="block-title">
                                        <div class="block-options pull-right">
                                            <a class="btn btn-alt btn-sm btn-primary" data-toggle="tooltip" title="Edit Profile" onclick="newForm()"><i class="fa fa-pencil"></i></a>
                                        </div>
                                        <h2>About <strong>Company</strong></h2>
                                    </div>
                                    <!-- END Info Title -->

                                    <!-- Info Content -->
                                    <table class="table table-borderless table-striped">
                                        <tbody>
                                            <tr>
                                                <td><strong>Company Name</strong></td>
                                                <td>Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Address</strong></td>
                                                <td><a href="javascript:void(0)">Company Inc</a></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Slogan</strong></td>
                                                <td><a href="javascript:void(0)">University Name</a></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Phone No</strong></td>
                                                <td><a href="javascript:void(0)" class="label label-danger">168</a></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Mobile No</strong></td>
                                                <td><a href="javascript:void(0)" class="label label-danger">168</a></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Email</strong></td>
                                                <td><a href="javascript:void(0)" class="label label-danger">168</a></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Website</strong></td>
                                                <td><a href="javascript:void(0)" class="label label-danger">168</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- END Info Content -->
                                </div>
                              </div>
                        </div>
                        <!-- END Advanced Gallery Widgets Row -->
                         
                         



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
   		<div id="add-templatetype" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		     <div class="modal-dialog">
		     	<div class="modal-content">
				    <!-- Add Contact Block -->
                    <div class="block" style="margin-bottom: 0px;padding-bottom: 0px;">
                        <!-- Add Contact Title -->
                        <div class="block-title">
                            <h2><i class="fa fa-pencil"></i> Company Details</h2>
                        </div>
                        <!-- END Add Contact Title -->

                        <!-- Add Contact Content -->
					      <form id="form-validation" action="page_ready_contacts.html" method="post" class="form-horizontal form-bordered" onsubmit="return false;">
					          <div class="form-group">
					              <label class="col-xs-3 control-label" for="add-contact-name">Company Name :</label>
					              <div class="col-xs-9">
					                  <input type="text" name="example-clickable-username" class="form-control" placeholder="Enter Company Name">
					              </div>
					          </div>
					          <div class="form-group">
					              <label class="col-xs-3 control-label" for="add-contact-name">Address :</label>
					              <div class="col-xs-9">
					                  <textarea id="example-textarea-input" name="example-textarea-input" rows="3" class="form-control" placeholder="Address"></textarea>
					              </div>
					          </div>
					          <div class="form-group">
					              <label class="col-xs-3 control-label" for="add-contact-name">Slogan :</label>
					              <div class="col-xs-9">
					                  <input type="text" name="example-clickable-username" class="form-control" placeholder="Enter Slogan">
					              </div>
					          </div>
				           	  <div class="form-group">
					              <label class="col-xs-3 control-label" for="add-contact-name">Phone No :</label>
					              <div class="col-xs-9">
					                  <input type="text" name="example-clickable-username" class="form-control" placeholder="Enter Phone No">
					              </div>
					          </div>
					          <div class="form-group">
					              <label class="col-xs-3 control-label" for="add-contact-name">Mobile No :</label>
					              <div class="col-xs-9">
					                  <input type="text" name="example-clickable-username" class="form-control" placeholder="Enter Mobile No">
					              </div>
					          </div>
					          <div class="form-group">
					              <label class="col-xs-3 control-label" for="add-contact-name">Email Id :</label>
					              <div class="col-xs-9">
					                  <input type="text" name="example-clickable-username" class="form-control" placeholder="Enter Email Id">
					              </div>
					          </div>
					          <div class="form-group">
					              <label class="col-xs-3 control-label" for="add-contact-name">Website :</label>
					              <div class="col-xs-9">
					                  <input type="text" name="example-clickable-username" class="form-control" placeholder="Enter Website">
					              </div>
					          </div>
					          <div class="form-group form-actions">
					              <div class="col-xs-9 col-xs-offset-3" style="text-align: right;">
					                  <button data-dismiss="modal" type="submit" class="btn btn-sm btn-danger"><i class="fa fa-times"></i>Close</button>
					                  <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add</button>
					              </div>
					          </div>
					      </form>
					      <!-- END Add Contact Content -->
                      </div>
                                <!-- END Add Contact Block -->
					</div>
				</div>
			</div>    
<script type="text/javascript">         
App.datatables();

	function newForm(){
	$('#add-templatetype').modal({
		'show':true
	});
	
}
</script>        
    </body>
</html>