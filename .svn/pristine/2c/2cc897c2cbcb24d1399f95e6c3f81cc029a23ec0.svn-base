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
						<li class="breadcrumb-item"><a href="javascript:void(0)">App</a></li>
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Payment</a></li>
					</ol>
                </div>
                <div class="row">
                      <div class="col-lg-12">
                    <div class="booking-form booking-outer">
                        <form id="paynow-form" action="/Karmasuites/paynow" method="post">
                        	<div id="res-msg" style="text-align: center;background: #bbf9bb;padding: 2%;border: 1px solid #11ea11;display: none;">
		                		
		                	</div>
                            <div class="row">
                                <div class="form-group col-xs-12">
                                    <label>Name :</label>
                                    <input type="text" class="form-control blk" id="custname" name="custname" placeholder="Customer Name">
                                </div>
                                
                                <div class="form-group col-xs-6">
                                    <label>Phone Number :</label>
                                    <input type="text" class="form-control blk" id="mobileno" name="mobileno" placeholder="Mobile Number">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Email :</label>
                                    <input type="email" class="form-control blk" id="emailid" name="emailid" placeholder="Email ID">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Amount :</label>
                                    <input type="text" class="form-control blk-0" id="amount" name="amount" placeholder="Enter Amount" value="0">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Sales Executive Name :</label>
                                    <input type="text" class="form-control blk" id="salesexname" name="salesexname" placeholder="Salse Executive Name">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Select Id Proof Attachment :</label>
                                    <input type="file" id="up1" name="" class="form-control blk" placeholder="Id Proof Attachment">
                                </div>
                                <div class="form-group col-xs-6">
                                    <label>Select Second Id Proof attachment :</label>
                                    <input type="file" id="up2" name="" class="form-control blk" placeholder="Second Id Proof attachment">
                                </div>
                               
                                <div class="col-xs-12">
                                    <div class="checkbox-outer">
                                        <input type="checkbox" name="" id="tandcchk"> I agree to the <a href="/Karmasuites/privacy-policy">Privacy Policy.</a>
                                        <input type="hidden" id="docUploadPath" name="docUploadPath" value="resources/uploaded/customerdoc/" >
										<input type="hidden" id="savePath" name="savePath" value="uploaded/customerdoc/">
										<input type="hidden" id="saveFullPath" name="saveFullPath" value="" class="blk" />
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div id="paybtnDiv" class="comment-btn">
                                        <a href="javascript:void(0);" id="savebtn" onclick="customerpay();" class="btn-blue btn-red"> Pay Now</a>
                                    </div>
                                </div>
                            </div>
                        <div>
</div></form>
                    </div>
                </div>
                
                </div>
                
            <!--     <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
							<div class="card-header">
								<h4 class="card-title">Videos Gallery</h4>
							</div>
							<div class="card-body pb-1">
								<div class="row">
    								<div class="col-md-4 col-sm-12">
    								    <iframe width="360" height="200" src="https://www.youtube.com/embed/awyrQwDgtEI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								    <iframe width="360" height="200" src="https://www.youtube.com/embed/JrCr0PLwHtI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								   <iframe width="360" height="200" src="https://www.youtube.com/embed/6IDAOrQvx3A" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								    <iframe width="360" height="200" src="https://www.youtube.com/embed/xjQjuH34oIo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								    <iframe width="360" height="200" src="https://www.youtube.com/embed/1QnCb2jl8Bk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								   <iframe width="360" height="200" src="https://www.youtube.com/embed/zE9Qd-33RnQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								
    								<div class="col-md-4 col-sm-12">
    								  <iframe width="360" height="200" src="https://www.youtube.com/embed/Lm_76FNSo2k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								    <iframe width="360" height="200" src="https://www.youtube.com/embed/QyvQDJdu7jU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								    <iframe width="360" height="200" src="https://www.youtube.com/embed/f0d5PaSHuVA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								   <iframe width="360" height="200" src="https://www.youtube.com/embed/Iblfuolc3dM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								    <iframe width="360" height="200" src="https://www.youtube.com/embed/ukkEc_HHfQU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    								<div class="col-md-4 col-sm-12">
    								   <iframe width="360" height="200" src="https://www.youtube.com/embed/wvWXKqXRtj4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    								</div>
    							</div>
                        </div>
                        /# card
                    </div>
                </div>
                
                
            </div> -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->

        
     
      <jsp:include page="footer.jsp"></jsp:include>
      <!-- The image Modal -->

    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
 
   <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <jsp:include page="script.jsp"></jsp:include>
	<script>
		$('#lightgallery').lightGallery({
			loop:true,
			thumbnail:true,
			exThumbImage: 'data-exthumbimage'
		});
	</script>
 
</body>

</html>