
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Dashboard | Karma Resorts and Hospitality</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/logo1.png">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--Custom CSS-->
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <!--Flaticons CSS-->
    <link href="font/flaticon.css" rel="stylesheet" type="text/css">
    <!--Plugin CSS-->
    <link href="css/plugin.css" rel="stylesheet" type="text/css">
    <!--Dashboard CSS-->
    <link href="css/dashboard.css" rel="stylesheet" type="text/css">
    <link href="css/icons.css" rel="stylesheet" type="text/css">
    <!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
<body>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status"></div>
    </div>
    <!-- Preloader Ends -->

    <!-- start Container Wrapper -->
    <div id="container-wrapper">
        <!-- Dashboard -->
        <div id="dashboard">

            <!-- Responsive Navigation Trigger -->
            <a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>  

            <!--   <?php include 'dashboard-header.php'; ?>-->
            <div class="dashboard-sticky-nav">
                <div class="content-left pull-left">
                    <a href="dashboard.php"><img src="images/logo-white.png" alt="logo"></a>
                </div>
                <div class="content-right pull-right">
                    <div class="search-bar">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" id="search" placeholder="Search Now">
                                <a href="#"><span class="search_btn"><i class="fa fa-search" aria-hidden="true"></i></span></a>
                            </div>
                        </form>
                    </div>
                    <div class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            <div class="profile-sec">
                                <div class="dash-image">
                                    <img src="images/comment.jpg" alt="">
                                </div>
                                <div class="dash-content">
                                    <h4>Mr. Bandish Shah</h4>
                                    <span>#11006</span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="dashboard-my-profile.php"><i class="sl sl-icon-user"></i>Profile</a></li>
                            <li><a href="change-password.php"><i class="sl sl-icon-lock"></i>Change Password</a></li>
                            <li><a href="login.php"><i class="sl sl-icon-power"></i>Logout</a></li>
                        </ul>
                    </div>
                    <div class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            <div class="dropdown-item">
                                <i class="sl sl-icon-bell"></i>
                                <span class="notify">3</span>
                            </div>
                        </a>
                        <div class="dropdown-menu notification-menu">
                            <h4> 599 Notifications</h4>
                            <ul>
                                <li>
                                    <a href="#">
                                        <div class="notification-item">
                                            <div class="notification-image">
                                                <img src="images/comment.jpg" alt="">
                                            </div>
                                            <div class="notification-content">
                                                <p>You have a notification.</p><span class="notification-time">2 hours ago</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="notification-item">
                                            <div class="notification-image">
                                                <img src="images/comment.jpg" alt="">
                                            </div>
                                            <div class="notification-content">
                                                <p>You have a notification.</p><span class="notification-time">2 hours ago</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="notification-item">
                                            <div class="notification-image">
                                                <img src="images/comment.jpg" alt="">
                                            </div>
                                            <div class="notification-content">
                                                <p>You have a notification.</p><span class="notification-time">2 hours ago</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <p class="all-noti"><a href="#">See all notifications</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end deshbord-header -->
            
          <!--  <?php include 'dashboard-sidebar.php'; ?> -->  
             <div class="dashboard-nav">
                <div class="dashboard-nav-inner">
                    <ul>
                        <li class="active"><a href="dashboard.php"><i class="sl sl-icon-settings"></i> Account Details</a></li>
                        <li><a href="dashboard-my-profile.php"><i class="sl sl-icon-user"></i> Edit Profile</a></li>
                        <li><a href="dashboard-payment.php"><i class="sl sl-icon-list"></i> Payment</a></li>
                        <li><a href="dashboard-history.php"><i class="sl sl-icon-folder"></i> History</a></li>
                        <li><a href="dashboard-reviews.php"><i class="sl sl-icon-star"></i> Reviews</a></li>
                        <li><a href="dashboard-complaint.php"><i class="sl sl-icon-list"></i>Complaint</a></li>
                        <li><a href="login.php"><i class="sl sl-icon-power"></i> Logout</a></li>
                    </ul>
                </div>
            </div>
            
            <!-- end dashboard-sidebar -->
            
            <div class="dashboard-content" >
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12" style="border: 2px solid #eceaea;">
                        <div class="dashboard-list-box" >
                            <h4 class="gray">#11006 | Mr. Bandish Shah</h4>
                             <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-address-card"></i>
                                        Membor ID  :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">#11006 </label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-user"></i>
                                        Membor Name  :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">Mr. Bandish Shah </label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-envelope"></i>
                                        Email  :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">bandish_mehta2000@yahoo.co.in</label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-phone"></i>
                                        Mobile No. :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;">+91 7984601524</label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-file"></i>
                                         Co Application :</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label style="text-align:left;"> </label>
                                    </div>
                                </div>
                                <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-shopping-bag"></i>
                                         Product :</label>
                                    </div>
                                    <div class="col-md-4">
                                        <label style="text-align:left;">Karma Lockdown</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align: right;"><i class="fa fa-clock-o"></i>
                                         Membership Tenure :</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align:left;">3 Years</label>
                                    </div>
                                </div>
                                 <div class="row with-forms">
                                    <div class="col-md-2">
                                        <label style="text-align: right;"><i class="fa fa-sun-o"></i>
                                         Utilized Nights :</label>
                                    </div>
                                    <div class="col-md-4">
                                        <label style="text-align:left;">23</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align: right;"><i class="fa fa-sun-o"></i>
                                          Balance Nights :</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="text-align:left;">37</label>
                                    </div>
                                </div>
                            
                            
                            
                            
                            
                            <div class="col-md-12">
                            <div class="table-box" style="margin: 10px;">
                            <table class="basic-table booking-table">
                                <thead>
                                    <tr>
                                        <th>Holiday booked</th>
                                        <th>Duration</th>
                                        <th>Person travelling</th>
                                        <th>Appartment booked</th>
                                        <th>Check in</th>
                                        <th>Check out</th>
                                        <th>Booked Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Goa</td>
                                        <td>2</td>
                                        <td>11006</td>
                                        <td>2</td>
                                        <td>27/12/2019</td>
                                        <td>29/12/2019</td>
                                        <td>20/12/2019</td>
                                    </tr>
                                    <tr>
                                        <td>Goa</td>
                                        <td>2</td>
                                        <td>11006</td>
                                        <td>2</td>
                                        <td>27/12/2019</td>
                                        <td>29/12/2019</td>
                                        <td>20/12/2019</td>
                                    </tr>
                                    <tr>
                                        <td>Goa</td>
                                        <td>2</td>
                                        <td>11006</td>
                                        <td>2</td>
                                        <td>27/12/2019</td>
                                        <td>29/12/2019</td>
                                        <td>20/12/2019</td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                            </div>
                            </div>
                </div>
                </div>
            </div>
            <!-- Copyrights -->
            <div class="copyrights">
                <p>Copyright  &copy; 2020 Karma Resorts and Hospitality. All Rights Reserved. Designed By <a href="#" target="_blank">SHREE INFOTECH</a></p>
            </div>
        </div>
        <!-- Dashboard / End -->
    </div>
    <!-- end Container Wrapper -->


    <!-- Back to top start -->
    <div id="back-to-top">
        <a href="#"></a>
    </div>
    <!-- Back to top ends -->
    
    
<!-- start php include 'dashboard-script.php';  -->
     
     
     <!-- *Scripts* -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugin.js"></script>
    <script src="js/preloader.js"></script>
    <script src="js/main.js"></script>
    <script src="js/canvasjs.min.js"></script>
    <script src="js/chart.js"></script>
    <script src="js/dashboard-custom.js"></script>
    <script src="js/jpanelmenu.min.js"></script>
    <script src="js/counterup.min.js"></script>
    
        
<!-- end php include 'dashboard-script.php';  -->
    
    
</body>

</html>