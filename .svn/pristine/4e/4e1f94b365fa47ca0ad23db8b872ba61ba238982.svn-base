   <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="${pageContext.request.contextPath}/resources/website/app/vendor/global/global.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/website/app/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/website/app/vendor/chart.js/Chart.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/website/app/vendor/owl-carousel/owl.carousel.js"></script>
	
	<!-- Chart piety plugin files -->
    <script src="vendor/peity/jquery.peity.min.js"></script>
	
	<!-- Apex Chart -->
	<script src="vendor/apexchart/apexchart.js"></script>
	
    <!-- Dashboard 1 -->
	<script src="${pageContext.request.contextPath}/resources/website/app/js/dashboard/dashboard-1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/app/js/custom.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/website/app/js/deznav-init.js"></script>
    
    
    <!-- Daterangepicker -->
    <script src="${pageContext.request.contextPath}/resources/website/app/js/plugins-init/bs-daterange-picker-init.js"></script>
    <!-- Datatable -->
    <script src="${pageContext.request.contextPath}/resources/website/app/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/app/js/plugins-init/datatables.init.js"></script>
	<script>
		function carouselReview(){
			/*  testimonial one function by = owl.carousel.js */
			function checkDirection() {
				var htmlClassName = document.getElementsByTagName('html')[0].getAttribute('class');
				if(htmlClassName == 'rtl') {
					return true;
				} else {
					return false;
				
				}
			}
			
			jQuery('.testimonial-one').owlCarousel({
				loop:true,
				autoplay:true,
				margin:30,
				nav:false,
				dots: false,
				rtl: checkDirection(),
				left:true,
				navText: ['', ''],
				responsive:{
					0:{
						items:1
					},			
					1200:{
						items:2
					},
					1600:{
						items:3
					}
				}
			})			
		}
		jQuery(window).on('load',function(){
			setTimeout(function(){
				carouselReview();
			}, 1000); 
		});
	</script>