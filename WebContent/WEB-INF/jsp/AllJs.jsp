<!-- jQuery, Bootstrap.js, jQuery plugins and Custom JS code -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootbox.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/pages/compCalendar.js"></script>
<script>$(function(){ CompCalendar.init(); });</script>

<!-- Load and execute javascript code used only in this page -->
<script src="${pageContext.request.contextPath}/resources/js/pages/formsValidation.js"></script>
<script>$(function(){ FormsValidation.init(); });</script>

<script src="${pageContext.request.contextPath}/resources/js/pages/uiProgress.js"></script>
<script>$(function(){ UiProgress.init(); });</script>

<script src="${pageContext.request.contextPath}/resources/js/pages/tablesDatatables.js"></script>
<script>
if('${sidePanelName}' != 'adminmember' && '${sidePanelName}' != 'agreements' && '${sidePanelName}' != 'lockdown' && '${sidePanelName}' != 'plcmembers' && '${sidePanelName}' != 'salemember' && '${sidePanelName}' != 'wcmember' && '${sidePanelName}' != 'ticket'){
	$(function(){ TablesDatatables.init(); });
}
	
</script> 

<!-- Load and execute javascript code used only in this page -->
<script src="${pageContext.request.contextPath}/resources/js/pages/ecomDashboard.js"></script>
<script>$(function(){ EcomDashboard.init(); });</script>

<!-- Load and execute javascript code used only in this page -->
<script src="${pageContext.request.contextPath}/resources/js/pages/ecomOrders.js"></script>
<script>$(function(){ EcomOrders.init(); });</script>

<script src="https://maps.googleapis.com/maps/api/js?key="></script>
<script src="${pageContext.request.contextPath}/resources/js/helpers/gmaps.min.js"></script>

<!-- Load and execute javascript code used only in this page -->
<script src="${pageContext.request.contextPath}/resources/js/pages/index2.js"></script>
<script>$(function(){ Index2.init(); });</script>
<script src="${pageContext.request.contextPath}/resources/js/pages/compCharts.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/helpers/ckeditor/ckeditor.js"></script>
