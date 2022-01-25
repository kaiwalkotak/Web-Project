<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

 <!-- *Scripts* -->
    <script src="${pageContext.request.contextPath}/resources/website/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/main-1.js"></script>    
    <script src="${pageContext.request.contextPath}/resources/website/js/preloader.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/custom-swiper2.js"></script>
    <script src="${pageContext.request.contextPath}/resources/website/js/jquery-modal-video.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/website/js/custom-video.js"></script>
	<script src="${pageContext.request.contextPath}/resources/website/js/rangeslider.js"></script>
	
	<script src="//code.jivosite.com/widget/IJzok6bGdL" async></script>
	
<!-- GetButton.io widget -->
<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+91 97230 44448", // WhatsApp number
            call_to_action: "Support us", // Call to action
            position: "left", // Position may be 'right' or 'left'
            pre_filled_message: "Support in whatsapp Now", // WhatsApp pre-filled message
        };
        var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
    

</script>
<!-- /GetButton.io widget -->

<script>
		function submitenquiry() {
			
			if (document.getElementById("message").value != ''
					& document.getElementById("Name").value != ''
					& document.getElementById("email").value != ''
					& document.getElementById("phnumber").value != ''
					& document.getElementById("email").value != '') {
				$
						.ajax({
							type : "POST",
							url : "${pageContext.servletContext.contextPath}/masters/enquiry",
							data : $("#contactformside").serialize(),
							dataType : 'json',
							async : false,
							success : function(response) {
								if (response == "y") {
									
									alert("Your Enquiry is Submited !")
									window.location.href = "${pageContext.request.contextPath}/login";
								} else {
									alert("Please Try Again !")
								}
							}
						});
			}
		}
	</script>



<div class="feedback_container">
    <div class="feedback_hood clear_fix" data-enquiry="no" data-toggle="modal" data-target="#myModal">
        <img src="${pageContext.request.contextPath}/resources/website/images/Enquire_Now.jpg">
    </div>
        <div class="container">
    <h2>&nbsp;</h2>
  <!-- Modal -->
  <div class="modal right fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content -->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color: white;">Enquiry Now</h4>
        </div>
        <div class="modal-body">
         
            <div class="row">
            
             <div class="col-md-12">
					<div id="contact-form" class="contact-form">
						<div id="contactform-error-msg"></div>
						<form:form id="contactformside">
							<div class="row">
								<div class="form-group col-xs-12">
									<label>Name:</label> <input type="text" name="full_name"
										class="form-control" id="Name" placeholder="Enter full name"
										required><input type="hidden" id="isActive"
										name="isActive" value="1">
								</div>
								<div class="form-group col-xs-6">
									<label>Email:</label> <input type="email" name="email"
										class="form-control" id="email" placeholder="abc@xyz.com"
										required>
								</div>
								<div class="form-group col-xs-6 col-left-padding">
									<label>Phone Number:</label> <input type="text" name="phone"
										class="form-control" id="phnumber" placeholder="XXXX-XXXXXX"
										required>
								</div>
								<div class="textarea col-xs-12">
									<label>Message:</label>
									<textarea id="message" name="message" rows="1" placeholder="Enter a message" required></textarea>
								</div>
								<div class="col-xs-12">
									<div class="comment-btn">
										<input type="button" class="btn-blue btn-red" id="submit"
											onclick="submitenquiry()" value="Send Message">
											
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
           </div>
          </div>
      </div>
      
    </div>
  </div>
</div>
</div>