<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="dashboard-nav">
	<div class="dashboard-nav-inner">
		<ul>
			<li class="${sidePanelName eq 'dashboard' ? 'active' : ''}"><a
				href="${pageContext.request.contextPath}/customer-dash/dashboard"><i
					class="sl sl-icon-settings"></i> Account Details</a></li>
			<!-- <li><a href="dashboard-my-profile.php"><i class="sl sl-icon-user"></i> Edit Profile</a></li> -->
			<li class="${sidePanelName eq 'dashboard-payment' ? 'active' : ''}"><a
				href="${pageContext.request.contextPath}/customer-dash/dashboard-payment"><i
					class="sl sl-icon-list"></i> Payment</a></li>
			<li
				class="${sidePanelName eq 'dashboard-changepassword' ? 'active' : ''}"><a
				href="${pageContext.request.contextPath}/customer-dash/dashboard-changepassword"><i
					class="sl sl-icon-folder"></i> Change Password</a></li>
			<%-- <li><a href="${pageContext.request.contextPath}/customer-dash/dashboard-history"><i class="sl sl-icon-folder"></i> History</a></li>
                        <li><a href="${pageContext.request.contextPath}/customer-dash/dashboard-reviews"><i class="sl sl-icon-star"></i> Reviews</a></li>
                        <li><a href="${pageContext.request.contextPath}/customer-dash/dashboard-complaint"><i class="sl sl-icon-list"></i>Complaint</a></li> --%>
			<li><a href="${pageContext.request.contextPath}/logout"><i
					class="sl sl-icon-power"></i> Logout</a></li>
		</ul>
	</div>
</div>