<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
            <!-- row -->
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-9 col-xxl-8">	
						<div class="row">
						<div class="col-xl-4 col-xxl-12 col-lg-4 col-md-12">
								<div class="card border-card">
									<div class="card-body">
										<div class="media">
											<div class="media-body mr-3">
												<h2 class="text-primary">Total ${md.planDays} Days</h2>
												<span class="position">${md.product.title}</span>
											</div>
											<span class="cd-icon bgl-warning">
												<svg width="42" height="42" viewBox="0 0 42 42" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M15.1812 22.0083C15.0651 21.9063 14.7969 21.6695 14.7015 21.5799C12.3755 19.3941 10.8517 15.9712 10.8517 12.1138C10.8517 5.37813 15.4869 0.0410156 21.0011 0.0410156C26.5152 0.0410156 31.1503 5.37813 31.1503 12.1138C31.1503 15.9679 29.6292 19.3884 27.3094 21.5778C27.2118 21.6699 26.9385 21.9116 26.8238 22.0125L26.8139 22.1799C26.8789 23.1847 27.5541 24.0553 28.5233 24.3626C35.7277 26.641 40.9507 32.0853 41.8277 38.538C41.9484 39.3988 41.6902 40.2696 41.1198 40.9254C40.5495 41.5813 39.723 41.9579 38.8541 41.9579C32.4956 41.9591 9.50675 41.9591 3.14821 41.9591C2.27873 41.9591 1.45183 41.5824 0.881272 40.9263C0.310711 40.2701 0.0524068 39.3989 0.172348 38.5437C1.05148 32.0851 6.27447 26.641 13.4778 24.3628C14.4504 24.0544 15.1263 23.1802 15.1885 22.1722L15.1812 22.0083Z" fill="#FF9B52"/>
												</svg>
											</span>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-xl-4 col-xxl-6 col-lg-4 col-sm-6">
								<div class="card border-card">
									<div class="card-body">
										<div class="media">
											<div class="media-body mr-3">
												<h2 class="text-primary">${memberother[0]}</h2>
												<span class="position">Utilized Nights</span>
											</div>
											<span class="cd-icon bgl-primary">
												<svg width="42" height="42" viewBox="0 0 42 42" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M33.25 8.75H31.5V5.25C31.5 4.78587 31.3156 4.34075 30.9874 4.01256C30.6593 3.68437 30.2141 3.5 29.75 3.5C29.2859 3.5 28.8407 3.68437 28.5126 4.01256C28.1844 4.34075 28 4.78587 28 5.25V8.75H14V5.25C14 4.78587 13.8156 4.34075 13.4874 4.01256C13.1592 3.68437 12.7141 3.5 12.25 3.5C11.7859 3.5 11.3408 3.68437 11.0126 4.01256C10.6844 4.34075 10.5 4.78587 10.5 5.25V8.75H8.75C7.35761 8.75 6.02226 9.30312 5.03769 10.2877C4.05312 11.2723 3.5 12.6076 3.5 14V15.75H38.5V14C38.5 12.6076 37.9469 11.2723 36.9623 10.2877C35.9777 9.30312 34.6424 8.75 33.25 8.75Z" fill="#3F9AE0"/>
													<path d="M3.5 33.25C3.5 34.6424 4.05312 35.9777 5.03769 36.9623C6.02226 37.9469 7.35761 38.5 8.75 38.5H33.25C34.6424 38.5 35.9777 37.9469 36.9623 36.9623C37.9469 35.9777 38.5 34.6424 38.5 33.25V19.25H3.5V33.25Z" fill="#3F9AE0"/>
												</svg>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-xxl-6 col-lg-4 col-sm-6">
								<div class="card border-card">
									<div class="card-body">
										<div class="media">
											<div class="media-body mr-3">
												<h2 class="text-primary">${memberother[1]}</h2>
												<span class="position">Balance Nights</span>
											</div>
											<span class="cd-icon bgl-success">
												<svg width="42" height="42" viewBox="0 0 42 42" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M38.4998 10.4995H35.0002V38.4999H38.4998C40.4245 38.4999 42 36.9238 42 34.9992V13.9992C42 12.075 40.4245 10.4995 38.4998 10.4995Z" fill="#2BC155"/>
													<path d="M27.9998 10.4995V6.9998C27.9998 5.07515 26.4243 3.49963 24.5001 3.49963H17.4998C15.5757 3.49963 14.0001 5.07515 14.0001 6.9998V10.4995H10.5V38.4998H31.5V10.4995H27.9998ZM24.5001 10.4995H17.4998V6.99929H24.5001V10.4995Z" fill="#2BC155"/>
													<path d="M3.50017 10.4995C1.57551 10.4995 0 12.075 0 13.9997V34.9997C0 36.9243 1.57551 38.5004 3.50017 38.5004H6.99983V10.4995H3.50017Z" fill="#2BC155"/>
												</svg>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-xxl-6 col-lg-4 col-sm-6">
								<div class="card border-card">
									<div class="card-body">
										<div class="media">
											<div class="media-body mr-3">
												<h2 class="text-primary">${totalpaid}</h2>
												<span class="position">Total Paid amount</span>
											</div>
											<span class="cd-icon bgl-success">
												<svg class="mb-sm-4 mb-3" width="80" height="80" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M0 11.6364C0 5.20978 5.20978 0 11.6364 0H68.3636C74.7902 0 80 5.20978 80 11.6364V68.3636C80 74.7902 74.7902 80 68.3636 80H11.6364C5.20978 80 0 74.7902 0 68.3636V11.6364Z" fill="#D3D3D3"/>
											<path d="M0 11.6364C0 5.20978 5.20978 0 11.6364 0H68.3636C74.7902 0 80 5.20978 80 11.6364V68.3636C80 74.7902 74.7902 80 68.3636 80H11.6364C5.20978 80 0 74.7902 0 68.3636V11.6364Z" fill="#81EF4D"/>
											<path d="M20.6216 20.6219C23.142 18.1015 26.1342 16.1022 29.4273 14.7381C32.7205 13.374 36.25 12.672 39.8145 12.672C43.3789 12.672 46.9085 13.374 50.2016 14.7381C53.4947 16.1022 56.4869 18.1015 59.0074 20.6219C61.5278 23.1424 63.5271 26.1346 64.8912 29.4277C66.2552 32.7208 66.9573 36.2504 66.9573 39.8148C66.9573 43.3793 66.2552 46.9088 64.8912 50.202C63.5271 53.4951 61.5278 56.4873 59.0074 59.0077L49.4109 49.4113C50.6711 48.1511 51.6708 46.6549 52.3528 45.0084C53.0348 43.3618 53.3859 41.5971 53.3859 39.8148C53.3859 38.0326 53.0348 36.2678 52.3528 34.6213C51.6708 32.9747 50.6711 31.4786 49.4109 30.2184C48.1507 28.9582 46.6546 27.9585 45.008 27.2765C43.3615 26.5944 41.5967 26.2434 39.8145 26.2434C38.0322 26.2434 36.2675 26.5944 34.6209 27.2765C32.9743 27.9585 31.4782 28.9582 30.218 30.2184L20.6216 20.6219Z" fill="#8FD7FF"/>
											<path d="M20.6215 59.0077C15.5312 53.9174 12.6715 47.0135 12.6715 39.8148C12.6715 32.6161 15.5312 25.7122 20.6215 20.6219C25.7118 15.5316 32.6157 12.6719 39.8144 12.6719C47.0131 12.6719 53.917 15.5316 59.0073 20.6219L49.4108 30.2183C46.8657 27.6732 43.4138 26.2434 39.8144 26.2434C36.215 26.2434 32.7631 27.6732 30.2179 30.2183C27.6728 32.7635 26.243 36.2154 26.243 39.8148C26.243 43.4141 27.6728 46.8661 30.2179 49.4112L20.6215 59.0077Z" fill="white"/>
										</svg>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-xxl-6 col-lg-4 col-sm-6">
								<div class="card border-card">
									<div class="card-body">
										<div class="media">
											<div class="media-body mr-3">
												<h2 class="text-primary" style="color:rgb(255, 72, 72) !important;">${pendingamaount}</h2>
												<span class="position">Pending Amount</span>
											</div>
											<span class="cd-icon bgl-secondary">
												<svg class="mb-sm-4 mb-3" width="80" height="80" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M0 11.6364C0 5.20978 5.20978 0 11.6364 0H68.3636C74.7902 0 80 5.20978 80 11.6364V68.3636C80 74.7902 74.7902 80 68.3636 80H11.6364C5.20978 80 0 74.7902 0 68.3636V11.6364Z" fill="#D3D3D3"/>
													<path d="M0 11.6364C0 5.20978 5.20978 0 11.6364 0H68.3636C74.7902 0 80 5.20978 80 11.6364V68.3636C80 74.7902 74.7902 80 68.3636 80H11.6364C5.20978 80 0 74.7902 0 68.3636V11.6364Z" fill="#FF4848"/>
													<path d="M20.6216 20.6219C23.142 18.1015 26.1342 16.1022 29.4273 14.7381C32.7205 13.374 36.25 12.672 39.8145 12.672C43.3789 12.672 46.9085 13.374 50.2016 14.7381C53.4947 16.1022 56.4869 18.1015 59.0074 20.6219C61.5278 23.1424 63.5271 26.1346 64.8912 29.4277C66.2552 32.7208 66.9573 36.2504 66.9573 39.8148C66.9573 43.3793 66.2552 46.9088 64.8912 50.202C63.5271 53.4951 61.5278 56.4873 59.0074 59.0077L49.4109 49.4113C50.6711 48.1511 51.6708 46.6549 52.3528 45.0084C53.0348 43.3618 53.3859 41.5971 53.3859 39.8148C53.3859 38.0326 53.0348 36.2678 52.3528 34.6213C51.6708 32.9747 50.6711 31.4786 49.4109 30.2184C48.1507 28.9582 46.6546 27.9585 45.008 27.2765C43.3615 26.5944 41.5967 26.2434 39.8145 26.2434C38.0322 26.2434 36.2675 26.5944 34.6209 27.2765C32.9743 27.9585 31.4782 28.9582 30.218 30.2184L20.6216 20.6219Z" fill="#8FD7FF"/>
													<path d="M20.6215 59.0077C15.5312 53.9174 12.6715 47.0135 12.6715 39.8148C12.6715 32.6161 15.5312 25.7122 20.6215 20.6219C25.7118 15.5316 32.6157 12.6719 39.8144 12.6719C47.0131 12.6719 53.917 15.5316 59.0073 20.6219L49.4108 30.2183C46.8657 27.6732 43.4138 26.2434 39.8144 26.2434C36.215 26.2434 32.7631 27.6732 30.2179 30.2183C27.6728 32.7635 26.243 36.2154 26.243 39.8148C26.243 43.4141 27.6728 46.8661 30.2179 49.4112L20.6215 59.0077Z" fill="white"/>
												</svg>
											</span>
										</div>
									</div>
								</div>
							</div>
							
							<!-- <div class="col-xl-12">
								<div class="card">
									<div class="card-header border-0 pb-0 flex-wrap">
										<h4 class="fs-20 text-black mr-4 mb-2">Vacancy Stats</h4>
										<div class="custom-control custom-switch toggle-switch text-right mr-3 mb-2">
											<input type="checkbox" class="custom-control-input" id="customSwitch1">
											<label class="custom-control-label" for="customSwitch1">Application Sent</label>
										</div>
										<div class="custom-control custom-switch toggle-switch text-right mr-3 mb-2">
											<input type="checkbox" class="custom-control-input" id="customSwitch2">
											<label class="custom-control-label" for="customSwitch2">Interviews</label>
										</div>
										<div class="custom-control custom-switch toggle-switch text-right mr-3 mb-2">
											<input type="checkbox" class="custom-control-input" id="customSwitch3">
											<label class="custom-control-label" for="customSwitch3">Rejected</label>
										</div>
										<div class="dropdown custom-dropdown mb-0 mt-3 mt-sm-0 mb-2">
											<div class="btn border text-black rounded" role="button" data-toggle="dropdown" aria-expanded="false">
												This Month
												<i class="las la-angle-down scale5 text-primary ml-3"></i>
											</div>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="javascript:void(0);">Details</a>
												<a class="dropdown-item text-danger" href="javascript:void(0);">Cancel</a>
											</div>
										</div>
									</div>
									<div class="card-body">	
										<div id="lineChart" class="line-chart"></div>
										<div class="d-flex flex-wrap align-items-center justify-content-center mt-3">
											<div class="fs-14 text-black mr-4">
												<svg class="mr-2" width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
													<rect width="19" height="19" rx="9.5" fill="#2BC155"/>
												</svg>
												Application Sent
											</div>
											<div class="fs-14 text-black mr-4">
												<svg class="mr-2" width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
													<rect width="19" height="19" rx="9.5" fill="#3F9AE0"/>
												</svg>
												Interviews
											</div>
											<div class="fs-14 text-black">
												<svg class="mr-2" width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
													<rect width="19" height="19" rx="9.5" fill="#FF424D"/>
												</svg>
												Rejected
											</div>
										</div>
									</div>
								</div>
							</div> -->
						</div>
					</div>
					<div class="col-xl-3 col-xxl-4">
						<div class="row">
							<div class="col-xl-12">
								<div class="card d-flex flex-xl-column flex-sm-column flex-md-row flex-column">
									<div class="card-body text-center border-bottom ">
										<div class="profile-image mb-4">
											<img src="${pageContext.request.contextPath}/resources/website/member-dashboard/images/logo-text.png" class="" alt="" style="max-width: 70%;">
										</div>
										<h4 class="fs-22 text-black mb-1">KARMA SUITES</h4>
										
										<div class="row">
											<div class="col-4 p-0">
												<div class="d-inline-block mb-2 relative donut-chart-sale">
													<span class="donut" data-peity='{ "fill": ["rgb(255, 224, 194)", "rgba(236, 236, 236, 0)"],   "innerRadius": 24, "radius": 10}'>7/9</span>
													<small class="text-primary">66%</small>
													<span class="circle bg-warning"></span>
												</div>
												<span class="d-block">TOTAL</span>
											</div>
											<div class="col-4 p-0">
												<div class="d-inline-block mb-2 relative donut-chart-sale">
													<span class="donut" data-peity='{ "fill": ["rgb(130, 255, 165)", "rgba(236, 236, 236, 0)"],   "innerRadius": 24, "radius": 10}'>4/9</span>
													<small class="text-primary">31%</small>
													<span class="circle bg-success"></span>
												</div>
												<span class="d-block">UTILIZED</span>
											</div>
											<div class="col-4 p-0">
												<div class="d-inline-block mb-2 relative donut-chart-sale">
													<span class="donut" data-peity='{ "fill": ["rgb(133, 211, 255)", "rgba(236, 236, 236, 0)"],   "innerRadius": 24, "radius": 10}'>2/9</span>
													<small class="text-primary">7%</small>
													<span class="circle bg-secondary"></span>
												</div>
												<span class="d-block">BALANCE</span>
											</div>
										</div>
									</div>
									
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
function calldestination(){
	window.open("${pageContext.request.contextPath}/destinations");
}
</script>
</html>