
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- Alternative Sidebar -->
<div id="sidebar-alt">
    <!-- Wrapper for scrolling functionality -->
    <div id="sidebar-alt-scroll">
        <!-- Sidebar Content -->
        <div class="sidebar-content">
            <!-- Chat -->
            <!-- Chat demo functionality initialized in js/app.js -> chatUi() -->
            <a href="page_ready_chat.html" class="sidebar-title">
                <i class="gi gi-comments pull-right"></i> <strong>Chat</strong>UI
            </a>
            <!-- Chat Users -->
            <ul class="chat-users clearfix">
                <li>
                    <a href="javascript:void(0)" class="chat-user-online">
                        <span></span>
                        <img src="${pageContext.request.contextPath}/resources/img/placeholders/avatars/avatar12.jpg" alt="avatar" class="img-circle">
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" class="chat-user-online">
                        <span></span>
                        <img src="${pageContext.request.contextPath}/resources/img/placeholders/avatars/avatar15.jpg" alt="avatar" class="img-circle">
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" class="chat-user-online">
                        <span></span>
                        <img src="${pageContext.request.contextPath}/resources/img/placeholders/avatars/avatar10.jpg" alt="avatar" class="img-circle">
                    </a>
                </li>
            </ul>
            <!-- END Chat Users -->

            <!-- Chat Talk -->
            <div class="chat-talk display-none">
                <!-- Chat Info -->
                <div class="chat-talk-info sidebar-section">
                    <button id="chat-talk-close-btn" class="btn btn-xs btn-default pull-right">
                        <i class="fa fa-times"></i>
                    </button>
                    <img src="${pageContext.request.contextPath}/resources/img/placeholders/avatars/avatar5.jpg" alt="avatar" class="img-circle pull-left">
                    <strong>John</strong> Doe
                </div>
                <!-- END Chat Info -->

                <!-- Chat Messages -->
                <ul class="chat-talk-messages">
                    <li class="text-center"><small>Yesterday, 18:35</small></li>
                    <li class="chat-talk-msg animation-slideRight">Hey admin?</li>
                    <li class="chat-talk-msg animation-slideRight">How are you?</li>
                    <li class="text-center"><small>Today, 7:10</small></li>
                    <li class="chat-talk-msg chat-talk-msg-highlight themed-border animation-slideLeft">I'm fine, thanks!</li>
                </ul>
                <!-- END Chat Messages -->

                <!-- Chat Input -->
                <form action="index.html" method="post" id="sidebar-chat-form" class="chat-form">
                    <input type="text" id="sidebar-chat-message" name="sidebar-chat-message" class="form-control form-control-borderless" placeholder="Type a message..">
                </form>
                <!-- END Chat Input -->
            </div>
            <!--  END Chat Talk -->
            <!-- END Chat -->

            <!-- Activity -->
            <a href="javascript:void(0)" class="sidebar-title">
                <i class="fa fa-globe pull-right"></i> <strong>Activity</strong>UI
            </a>
            <div class="sidebar-section">
                <div class="alert alert-danger alert-alt">
                    <small>just now</small><br>
                    <i class="fa fa-thumbs-up fa-fw"></i> Upgraded to Pro plan
                </div>
                <div class="alert alert-info alert-alt">
                    <small>2 hours ago</small><br>
                    <i class="gi gi-coins fa-fw"></i> You had a new sale!
                </div>
                <div class="alert alert-warning alert-alt">
                    <small>2 days ago</small><br>
                    Running low on space<br><strong>18GB in use</strong> 2GB left<br>
                    <a href="page_ready_pricing_tables.html" class="btn btn-xs btn-primary"><i class="fa fa-arrow-up"></i> Upgrade Plan</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main Sidebar -->
<div id="sidebar">
    <!-- Wrapper for scrolling functionality -->
    <div id="sidebar-scroll">
        <!-- Sidebar Content -->
        <div class="sidebar-content">
            <!-- Brand -->
            <a href="${pageContext.request.contextPath}/home" class="sidebar-brand">
                <span class="sidebar-nav-mini-hide"><strong>Karma</strong></span>
            </a>
            <!-- END Brand -->

            <!-- User Info -->
            <div class="sidebar-section sidebar-user clearfix sidebar-nav-mini-hide">
                <%-- <div class="sidebar-user-avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="avatar">
                    </a>
                </div> --%>
                <div class="sidebar-user-avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/logo.jpg" alt="avatar">
                    </a>
                </div>
                <div class="sidebar-user-name">Admin</div>
                <div class="sidebar-user-links">
                    <a href="${pageContext.request.contextPath}/clientuser/clientdashboard/profile/Am4W6h03uxhhpjBiBV46fg==/0/-1" data-toggle="tooltip" data-placement="bottom" title="Profile"><i class="gi gi-user"></i></a>
                    <a href="${pageContext.request.contextPath}/logout" data-toggle="tooltip" data-placement="bottom" title="Logout"><i class="gi gi-exit"></i></a>
                </div> 
            </div>
            <!-- END User Info -->

            <!-- Theme Colors -->

           <ul class="sidebar-nav">
             <li>
                 <a href="${pageContext.request.contextPath}/clientuser/clientdashboard/dashboard/VjymSu1tNTKdYSOGTQBs7g==/0/-1" data-toggle="tooltip"  data-placement="right" title="Dashboard"><i class="gi gi-pie_chart sidebar-nav-icon"></i> <span class="sidebar-nav-mini-hide">  Dashboard</span></a>
             </li>
           
             <li class="sidebar-header">
                 <span class="sidebar-header-options clearfix"><a href="javascript:void(0)" data-toggle="tooltip" title="Quick Settings"><i class="gi gi-settings"></i></a><a href="javascript:void(0)" data-toggle="tooltip" title=""></a></span>
                 <span class="sidebar-header-title">Widget Kit</span>
             </li>             
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/Adminstate/AKUmaIfcQaucrquJ7ccP3A==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="State Master"><i class="gi gi-group sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">State Master</span></a>
             </li>
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/Admincity/VWku18Lh7ZpfqC0lfCHvzA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="City Master"><i class="gi gi-group sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">City Master</span></a>
             </li>
                <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/emimaster/1+gpjhvzb6Az1Y93LXXtNQ==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Emi Master"><i class="gi gi-group sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">EMI Master</span></a>
             </li>
            
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/paymentlogin/qBfGJE3bYMqHYuRiKw9R3w==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Payment Login"><i class="hi hi-user sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Payment Login</span></a>
             </li>
            
             <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/employeemaster/XYOr+J3V++xqdnTX7hYM6w==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Employee"><i class="hi hi-user sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide"> Employee</span></a>
             </li>
            </c:if>
                <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/career/GTXZAIrMiiUPkBLq9Xwlpg==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Employee"><i class="hi hi-user sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide"> Careers</span></a>
             </li>
             
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/salebranch/cG8VhNYIqezMCTK0sDPmrQ==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Sale Branch"><i class="gi gi-bank sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide"> Sale Branch</span></a>
             </li>
             
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminmember/2AhMW61cgmINrf0XbHJA1g==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Member"><i class="gi gi-group sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide"> Member</span></a>
             </li>
            <%--  <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}"> --%>
              <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/payment/5EPit+dRy5h6zv1bK3J1SA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Payment"><i class="gi gi-money sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide"> Payments</span></a>
             </li>
	<%-- </c:if> --%>
	<c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminproduct/lerLMbSlsU4F7LZI68gRNA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Product"><i class="gi gi-shopping_bag sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Product</span></a>
             </li>
             </c:if>
             <%-- <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}"> --%>
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/agreements/XVzWgWxDnfV6HslRZmnxDA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Agreement"><i class="gi gi-notes_2 sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Agreement</span></a>
             </li>
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/lockdown/eCGyCY6mntqmAhZD+UIc3w==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Lockdown Agreement"><i class="gi gi-notes_2 sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Lockdown Agreement</span></a>
             </li>
			<%-- </c:if> --%>
              <!-- <li>
                 <a href="javascript:void(0)" data-toggle="tooltip"  data-placement="right" title="Payments"><i class="gi gi-money sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Payments</span></a>
             </li> -->

             
             <!--  <li>
                 <a href="javascript:void(0)" data-toggle="tooltip"  data-placement="right" title="Landing Page List"><i class="gi gi-book sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Landing Page List</span></a>
             </li> -->
            <c:if test="${sessionBeanF.role.rname eq 'ADMIN'}">
              <li>
                  <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminPaymentRecipt/T4vs2tOvtPdMgEVZHjUuog==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Admin Payment Recips"><i class="fa fa-money sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Admin Payment Recips</span></a>
             </li>
            </c:if>
              <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/CampaignMaster/tqpx6K0n8j20ThGlcVv5kA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Campaign Master"><i class="gi gi-group sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Campaign Master</span></a>
             </li>
               <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/offermaster/0Nvmp2YMIWvYvXRJce6vOg==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Offer Master"><i class="gi gi-group sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Offer Master</span></a>
             </li>
             
             
               
              
             
             
             
              <li>
                    <a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-show_big_thumbnails sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Karma Website</span></a>
                    <ul>
                         <li>
               			  <a href="${pageContext.request.contextPath}/masters/clientdashboard/banner/etmy3DbxTCjiC2XjJuCczw==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Banner"><i class="gi gi-nameplate_alt sidebar-nav-icon"> </i>Banner<span class="sidebar-nav-mini-hide"> </span></a>
            			 </li>
             
            			  <li>
             			     <a href="${pageContext.request.contextPath}/masters/clientdashboard/VideoSlide/C5PtPW1Hsu9g1OQCL4b0nA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Video Slide"><i class="gi gi-film sidebar-nav-icon"></i>Video Slide<span class="sidebar-nav-mini-hide"></span></a>
            			 </li>
                        
                         
            			 
            			  <li>
                   			 <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminvideo/B+uwXGHTfDUxNMOWwVRsaA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Admin Video"><i class="gi gi-film sidebar-nav-icon"></i>Video Gallery<span class="sidebar-nav-mini-hide"></span></a>
           				  </li>
           				  <li>
	               			  <a href="${pageContext.request.contextPath}/masters/clientdashboard/AdminImages/KdBYQUXvG1uhcbCrWzYLrw==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Images Gallery"><i class="gi gi-picture sidebar-nav-icon"></i>Images Gallery<span class="sidebar-nav-mini-hide"></span></a>
	            			 </li>
           				   <li>
                 			<a href="${pageContext.request.contextPath}/masters/clientdashboard/AdminEnq/W2hb6IiYqztV9mD2Ntu3sA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Contact Us List"><i class="gi gi-vcard sidebar-nav-icon"></i>Contact Us List<span class="sidebar-nav-mini-hide"></span></a>
             			  </li>
             			  <li>
                 			 <a href="${pageContext.request.contextPath}/masters/clientdashboard/joinusAdmin/x0FNh2gol6oSP6vfRGpsOA==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Join Us Request"><i class="fa fa-money sidebar-nav-icon"></i>Join Us Request<span class="sidebar-nav-mini-hide"></span></a>
            			 </li>
            			 
            		<%-- 		<li>
                 			 <a href="${pageContext.request.contextPath}/masters/clientdashboard/AdminAboutUs/rgDgr501xMQQzZS3AVJr5w==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="About Us"><i class="gi gi-user sidebar-nav-icon"></i>About Us<span class="sidebar-nav-mini-hide"></span></a>
            			 </li> --%>
            			   <li>
                 			 <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminResorts/rgDgr501xMQQzZS3AVJr5w==/0/-1/0"  data-toggle="tooltip"  data-placement="right" title="Resorts"><i class="gi gi-drink sidebar-nav-icon"></i>Resorts<span class="sidebar-nav-mini-hide"></span></a>
            			 </li>
            			
            			<!-- <li>
                     		<a href="javascript:void(0)" data-toggle="tooltip"  data-placement="right" title="Destination"><i class="gi gi-direction sidebar-nav-icon"></i>Destination<span class="sidebar-nav-mini-hide"></span></a>
            			 </li> -->
            			  <%--  <li>
	           				 <a href="${pageContext.request.contextPath}/masters/clientdashboard/adminTestimonial/JmV43DFJRdz55Y5mrQTqXg==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Testimonial"><i class="gi gi-comments sidebar-nav-icon"></i>Admin Testimonial<span class="sidebar-nav-mini-hide"> </span></a>
            				 </li> --%>
            				 <li>
	           				 <a href="${pageContext.request.contextPath}/masters/clientdashboard/websiteOffers/IW1gw4syG2CImCd0tfPpbQ==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Landing Page"><i class="gi gi-book sidebar-nav-icon"></i>Landing Page<span class="sidebar-nav-mini-hide"> </span></a>
            				 </li>
            				  <li>
            				  <a href="javascript:void(0)" data-toggle="tooltip"  data-placement="right" title=""><span class="sidebar-nav-mini-hide"></span></a>
            				   </li>
                    </ul>
                </li>
              <li>
                    <a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-show_big_thumbnails sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Karma Members</span></a>
         			  <ul>
         			       <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/upgradeplan/FJvjWxNtKIbf+cnckcTNGw==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Upgrade plans "><i class="gi gi-group sidebar-nav-icon"></i>Upgrade Plan<span class="sidebar-nav-mini-hide"> </span></a>
             </li>
             <li>
                 <a href="${pageContext.request.contextPath}/masters/clientdashboard/raiseTrip/TGipqeBsiEkS3ZSieolhpg==/0/-1/0" data-toggle="tooltip"  data-placement="right" title="Member Trip Raise"><i class="gi gi-group sidebar-nav-icon"></i>Member Trip Raise<span class="sidebar-nav-mini-hide"></span></a>
             </li>
              <li>
            	<a href="javascript:void(0)" data-toggle="tooltip"  data-placement="right" title=""><span class="sidebar-nav-mini-hide"></span></a>
              </li>
         </ul>
 			<li>
            	<a href="javascript:void(0)" data-toggle="tooltip"  data-placement="right" title=""><span class="sidebar-nav-mini-hide"></span></a>
      	   </li>
        </div>
        <!-- END Sidebar Content -->
        
        
        
        
    </div>
    <!-- END Wrapper for scrolling functionality -->
</div>
<!-- END Main Sidebar -->


