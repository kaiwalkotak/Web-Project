<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- Header -->
<header class="navbar navbar-inverse">
    <!-- Left Header Navigation -->
<ul class="nav navbar-nav-custom">
    <!-- Main Sidebar Toggle Button -->
  <li>
      <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();">
          <i class="fa fa-bars fa-fw"></i>
      </a>
  </li>
  <!-- END Main Sidebar Toggle Button -->

  <!-- Template Options -->
  <!-- Change Options functionality can be found in js/app.js - templateOptions() -->
  <li class="dropdown">
      <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
          <i class="gi gi-settings"></i>
      </a>
      <ul class="dropdown-menu dropdown-custom dropdown-options">
          <li class="dropdown-header text-center">Header Style</li>
          <li>
              <div class="btn-group btn-group-justified btn-group-sm">
                  <a href="javascript:void(0)" class="btn btn-primary" id="options-header-default">Light</a>
                  <a href="javascript:void(0)" class="btn btn-primary" id="options-header-inverse">Dark</a>
              </div>
          </li>
          <li class="dropdown-header text-center">Page Style</li>
          <li>
              <div class="btn-group btn-group-justified btn-group-sm">
                  <a href="javascript:void(0)" class="btn btn-primary" id="options-main-style">Default</a>
                  <a href="javascript:void(0)" class="btn btn-primary" id="options-main-style-alt">Alternative</a>
              </div>
          </li>
          <!-- Theme Colors -->
     <!-- Change Color Theme functionality can be found in js/app.js - templateOptions() -->
     <ul class="sidebar-section sidebar-themes clearfix sidebar-nav-mini-hide">
         <!-- You can also add the default color theme
         <li class="active">
             <a href="javascript:void(0)" class="themed-background-dark-default themed-border-default" data-theme="default" data-toggle="tooltip" title="Default Blue"></a>
         </li>
         -->
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-night themed-border-night" data-theme="${pageContext.request.contextPath}/resources/css/themes/night.css" data-toggle="tooltip" title="Night"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-amethyst themed-border-amethyst" data-theme="${pageContext.request.contextPath}/resources/css/themes/amethyst.css" data-toggle="tooltip" title="Amethyst"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-modern themed-border-modern" data-theme="${pageContext.request.contextPath}/resources/css/themes/modern.css" data-toggle="tooltip" title="Modern"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-autumn themed-border-autumn" data-theme="${pageContext.request.contextPath}/resources/css/themes/autumn.css" data-toggle="tooltip" title="Autumn"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-flatie themed-border-flatie" data-theme="${pageContext.request.contextPath}/resources/css/themes/flatie.css" data-toggle="tooltip" title="Flatie"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-spring themed-border-spring" data-theme="${pageContext.request.contextPath}/resources/css/themes/spring.css" data-toggle="tooltip" title="Spring"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-fancy themed-border-fancy" data-theme="${pageContext.request.contextPath}/resources/css/themes/fancy.css" data-toggle="tooltip" title="Fancy"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-fire themed-border-fire" data-theme="${pageContext.request.contextPath}/resources/css/themes/fire.css" data-toggle="tooltip" title="Fire"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-coral themed-border-coral" data-theme="${pageContext.request.contextPath}/resources/css/themes/coral.css" data-toggle="tooltip" title="Coral"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-lake themed-border-lake" data-theme="${pageContext.request.contextPath}/resources/css/themes/lake.css" data-toggle="tooltip" title="Lake"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-forest themed-border-forest" data-theme="${pageContext.request.contextPath}/resources/css/themes/forest.css" data-toggle="tooltip" title="Forest"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-waterlily themed-border-waterlily" data-theme="${pageContext.request.contextPath}/resources/css/themes/waterlily.css" data-toggle="tooltip" title="Waterlily"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-emerald themed-border-emerald" data-theme="${pageContext.request.contextPath}/resources/css/themes/emerald.css" data-toggle="tooltip" title="Emerald"></a>
         </li>
         <li>
             <a href="javascript:void(0)" class="themed-background-dark-blackberry themed-border-blackberry" data-theme="${pageContext.request.contextPath}/resources/css/themes/blackberry.css" data-toggle="tooltip" title="Blackberry"></a>
         </li>
     </ul>
     <!-- END Theme Colors -->
      </ul>
  </li>
  <!-- END Template Options -->
   
</ul>
<!-- END Left Header Navigation -->

<!-- Search Form -->
<form action="#" method="post" class="navbar-form-custom">
  <div class="form-group">
      <input type="text" id="top-search" name="top-search" class="form-control" placeholder="Search..">
  </div>
</form>
<!-- END Search Form -->

<!-- Right Header Navigation -->
<ul class="nav navbar-nav-custom pull-right">
     
  <li>
      <!-- If you do not want the main sidebar to open when the alternative sidebar is closed, just remove the second parameter: App.sidebar('toggle-sidebar-alt'); -->
      <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar-alt', 'toggle-other');this.blur();" style="display: none;">
          <i class="gi gi-share_alt"></i>
          <span class="label label-primary label-indicator animation-floating">4</span>
      </a>
  </li>
  <!-- END Alternative Sidebar Toggle Button -->

  <!-- User Dropdown -->
  <li class="dropdown">
      <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
          <img src="${pageContext.request.contextPath}/resources/img/logo.jpg" alt="avatar"> <i class="fa fa-angle-down"></i>
      </a>
      <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
          <li>
              <a href="${pageContext.request.contextPath}/clientuser/clientdashboard/profile/Am4W6h03uxhhpjBiBV46fg==/0/-1"><i class="fa fa-user fa-fw pull-right"></i> My Profile</a>
              <a href="${pageContext.request.contextPath}/clientuser/clientdashboard/changepassword/MmZYvcGXfve24wRd5gzy+w==/0/-1"><i class="fa fa-lock fa-fw pull-right"></i> Change Password</a>
              <a href="${pageContext.request.contextPath}/logoutadmin"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
          </li>
          
      </ul>
  </li>
  <!-- END User Dropdown -->
</ul>
<!-- END Right Header Navigation -->
</header>
<!-- END Header -->
