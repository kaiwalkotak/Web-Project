package com.system.justfeedback.controller;

import java.net.UnknownHostException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Current;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.system.justfeedback.bean.SessionBean;
import com.system.justfeedback.daos.TicketRaiseDao;
import com.system.justfeedback.model.ClientUser;
import com.system.justfeedback.model.RoleMaster;
import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblUser;
import com.system.justfeedback.model.TicketRaise;
import com.system.justfeedback.services.ClientuserService;
import com.system.justfeedback.services.CommonService;
import com.system.justfeedback.services.UserRoleService;
import com.system.justfeedback.utility.CommonKeywords;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
@PropertySource(value = { "classpath:resources/auditrailMessages.properties", "classpath:resources/link.properties" })
public class LoginController {


	
	
	@Autowired
	ClientuserService clientuserService;

	@Autowired
	UserRoleService userRoleService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	@Autowired
	CommonService commonService;
	
	@Autowired
	MastersController mastersController;

	@Autowired
	private Environment environment;
	
	@Autowired
	TicketRaiseDao ticketRice;

	@RequestMapping(value = { "/homee" }, method = RequestMethod.GET)
	public String home(ModelMap model, HttpServletRequest request) throws Exception {
		return "redirect:/clientuser/clientdashboard/dashboard/"+commonService.encryptionDecryption("dashboard", true)+"/0/-1";
	}

	@RequestMapping(value = { "/afterLoginHome/{isDirectly}/{isSOBack}" }, method = RequestMethod.GET)
	public String afterLoginHome(@PathVariable boolean isDirectly, @PathVariable int isSOBack, ModelMap model,
			HttpServletRequest request) throws Exception {
		SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		model.put("sessionBean", sessionBean);
		return "redirect:/homee";
	}

	@ModelAttribute("roles")
	public List<RoleMaster> initializeProfiles() {
		return userRoleService.findAll();
	}
	
	@RequestMapping(value = { "/adminlogin" }, method = RequestMethod.GET)
	public String clientlogin(ModelMap model,HttpServletRequest request) throws Exception {
		model.addAttribute("msg", request.getParameter("msg") != null && request.getParameter("msg").equalsIgnoreCase("pending") ? "Your account is de-activete, please contact your system administrator!!" : "");
		Map<String, Object> var = new HashMap<String, Object>();
		return "index";
	}

	@RequestMapping(value = {"/","/home","/login"}, method = RequestMethod.GET)
	public String loginPage(HttpServletRequest request, ModelMap model) {
		if (isCurrentAuthenticationAnonymous()) {
			model.addAttribute("msg",
					request.getParameter("msg") != null && request.getParameter("msg").equalsIgnoreCase("pending")
							? "Your account is de-activete, please contact your system administrator!!"
							: "");
			if(Integer.parseInt(environment.getRequiredProperty("isprocessclean")) == 1){
				 commonService.clearsleepprocess(); 
			 }
			//For Banner Banner Image 
			String query1 = "SELECT destination_image_path,title,location from Banner ORDER BY id DESC";
			model.put("bannerlist", clientuserService.getDynamicMultiplecolumnList(query1,null,""));
			
			//For index resort Display purpose
//			String query2 = "SELECT p.id,p.title,p.Description,p.videolink FROM VideoSlide p";
//			model.put("indexResort", clientuserService.getDynamicMultiplecolumnList(query2,null,""));
//			
//			//For index resort Image Display purpose
//			String query3 = "SELECT p.id,p.videoSlide.id,p.imagePath FROM VideoSlideImages p";
//			model.put("indexResortImage", clientuserService.getDynamicMultiplecolumnList(query3,null,""));
//			
			
			
			
			return "website/index";
		} else {
			SessionBean sessionBean = new SessionBean();
			String username = null, ipAddress = null;
			String[] uname = null;
			try {
				Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				ipAddress = request.getHeader("X-FORWARDED-FOR") != null ? request.getHeader("X-FORWARDED-FOR")
						: request.getRemoteAddr();
				if (principal instanceof UserDetails) {
					username = ((UserDetails) principal).getUsername();
				} else {
					username = principal.toString();
				}
				uname = username.split("NOITSASPLITNO");
				ClientUser user = clientuserService.findEmployeeByCode(uname[0]);
				if (user.getIsactive() == 0) {
					return "redirect:/logout?msg=pending";
				}
				sessionBean.setIpaddress(ipAddress);
				sessionBean.setCcode(uname[0]);
				sessionBean.setCid(user.getId());
				sessionBean.setCname(user.getCname());
				sessionBean.setRole(user.getUserProfiles().iterator().next());
				sessionBean.setLogo(user.getLogo());
				sessionBean.setMobile(user.getCmobile());
				sessionBean.setAdminpass(user.getAdminpass());
				System.out.println(getBaseURL(request));
				request.getSession().setAttribute(CommonKeywords.SESSIONOBJECT.toString(), sessionBean);
			} catch (Exception ex) {
				ex.printStackTrace();
			} finally {
				if(Integer.parseInt(environment.getRequiredProperty("isprocessclean")) == 1){
					 commonService.clearsleepprocess(); 
				 }
			}
			return "redirect:/homee";
		}
	}

	@RequestMapping(value = { "/index" }, method = RequestMethod.GET)
	public String index(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/index";
	}
	@RequestMapping(value = { "/privacy-policy" }, method = RequestMethod.GET)
	public String privacypolicy(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/privacy-policy";
	}
	@RequestMapping(value = { "/paynow" }, method = RequestMethod.GET)
	public String paynow(ModelMap model, HttpServletRequest request) throws Exception {
		String imagePath22 = "uploaded/customerdoc/";
		model.addAttribute("docUploadPath","resources/"+imagePath22);
		model.addAttribute("savePath",imagePath22);
		return "website/paynow";
	}
		
	/*
	 * @RequestMapping(value = { "/memberlogin" }, method = RequestMethod.GET)
	 * public String memberlogin(ModelMap model, HttpServletRequest request) throws
	 * Exception { return "website/login"; }
	 */
	@RequestMapping(value = { "/memberlogin" }, method = RequestMethod.GET)
	public String memberlogin(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/member-dashboard/memberlogin";
	}

	@RequestMapping(value = { "/paymentreceipt" }, method = RequestMethod.GET)
	public String paymentreceipt(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/paymentreceiptlogin";
	}
	@RequestMapping(value = { "/customer-dash/{sidePanelName}" }, method = RequestMethod.GET)
	public String dashboard(@PathVariable("sidePanelName")String sidePanelName,ModelMap model, HttpServletRequest request) throws Exception {
		try{
			String returnPage = "clientuser/clientdashboard"; 
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			model.put("sessionBean", sessionBean);
			if(sessionBean.getIsFirst() == 1){
				sidePanelName = "resetpassword";
			}
			Long member_id = sessionBean.getCid();
			switch(sidePanelName){
				case "holiday-utilization":
					String sql = "SELECT upHolidayBooked,CONCAT(duration,' Days'),travelingPerson,appBooked,DATE_FORMAT(checkIn,'%d/%m/%Y'),DATE_FORMAT(checkOut,'%d/%m/%Y'),resType,actualPrice,DATE_FORMAT(createdAt,'%d/%m/%Y') FROM tbl_t_reservation WHERE isActive = 1 AND memberId = "+member_id;
					model.addAttribute("bookingDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					sql = "SELECT CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END,CASE WHEN SUM(r.duration) IS NULL THEN t.planDays ELSE t.planDays-SUM(r.duration) END ,t.membercode FROM tbl_t_reservation r INNER JOIN tbl_m_member t ON r.memberId = t.id WHERE resType = 'Regular' AND memberId = "+member_id;
					Object[] dets = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
					model.addAttribute("memberother",dets);
					
					TblMember m = clientuserService.getMember(member_id);
					model.addAttribute("md",m);
					List<Object[]> entitied = new ArrayList<>();
					if(m.getStartDate() != null && m.getEndDate() != null){
						sql = "SELECT DATE_FORMAT(startDate,'%Y'),DATE_FORMAT(endDate,'%Y') FROM tbl_m_member WHERE id = "+member_id;
						Object[] dets1 = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
						int s = m.getPlanDays();
						int n = Integer.parseInt(dets1[1].toString())-Integer.parseInt(dets1[0].toString());
						if(n != 0){
							float nn = s%n;
							int ss = s/n;
							int cnt = 0;
							for (int i = 0; i < n; i++) {
								cnt = cnt + ss;
								if(nn != 0 && i == (n-1)){
									entitied.add(new Object[]{(1+i),Integer.parseInt(dets1[0].toString())+i,ss+(s-cnt)});
								}else{
									entitied.add(new Object[]{(1+i),Integer.parseInt(dets1[0].toString())+i,ss});
								}
							}
						}
						
					}
					model.addAttribute("entitied",entitied);
					
					returnPage = "website/member-dashboard/holiday-utilization";
					break;
				case "dashboard-payment":
					sql = "SELECT m.dpAmount,m.dpPaymentMode,DATE_FORMAT(m.createdAt,'%d/%m/%Y'),ROUND(SUM(emi.amount)+m.dpAmount,2) FROM tbl_emi_payments emi INNER JOIN tbl_m_member m ON emi.memberId = m.id WHERE emi.paymentStatus = 'RZ' AND m.id = "+member_id;
					model.addAttribute("payDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0));
					sql = "SELECT id,memberid,amount,DATE_FORMAT(emidate,'%d/%m/%Y') AS emidatee,paymentStatus,paymentMode,chequeNo FROM tbl_emi_payments WHERE memberId = "+member_id + " Order by emidate IS NULL,emidate";
					model.addAttribute("emiDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					model.addAttribute("md",clientuserService.getMember(member_id));
					sql = "SELECT CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END,CASE WHEN SUM(r.duration) IS NULL THEN t.planDays ELSE t.planDays-SUM(r.duration) END ,t.membercode FROM tbl_t_reservation r INNER JOIN tbl_m_member t ON r.memberId = t.id WHERE resType = 'Regular' AND memberId = "+member_id;
					dets = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
					model.addAttribute("memberother",dets);
					sql = "SELECT id,memberId,amount,DATE_FORMAT(aSFDate,'%d/%m/%Y') AS asfdate,amountrec,DATE_FORMAT(asFDaterec,'%d/%m/%Y'),status FROM tbl_m_asf WHERE memberId = "+member_id;
					model.addAttribute("asfDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					
					Object[] bookdetss = mastersController.getpaymentdetails(member_id);
					double pendingamaount = Float.valueOf(bookdetss[0].toString())-(Float.valueOf(bookdetss[2].toString())+Float.valueOf(bookdetss[3].toString()));
					model.addAttribute("pendingamaount",pendingamaount);
					model.addAttribute("alldet",bookdetss);
					model.addAttribute("totalpaid",(Float.valueOf(bookdetss[2].toString())+Float.valueOf(bookdetss[3].toString())));
					
					
					returnPage = "website/member-dashboard/payment-details";
					break;
				case "dashboard-changepassword":
					sql = "SELECT userId,password FROM tbl_m_user m WHERE m.memberId = "+member_id;
					model.addAttribute("payDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0));
					m = clientuserService.getMember(member_id);
					model.addAttribute("md",m);
					returnPage = "website/member-dashboard/change-password";
					break;
				case "myprofile":
					m = clientuserService.getMember(member_id);
					model.addAttribute("md",m);
					sql = "SELECT DATE_FORMAT(startDate,'%d/%m/%Y'),DATE_FORMAT(endDate,'%d/%m/%Y') FROM tbl_m_member WHERE id = "+member_id;
					Object[] dets1 = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
					model.addAttribute("dates", dets1);
					returnPage = "website/member-dashboard/myprofile";
					break;
				case "dashboard":
					sql = "SELECT upHolidayBooked,CONCAT(duration,' Days'),travelingPerson,appBooked,DATE_FORMAT(checkIn,'%d/%m/%Y'),DATE_FORMAT(checkOut,'%d/%m/%Y'),resType,actualPrice,DATE_FORMAT(createdAt,'%d/%m/%Y') FROM tbl_t_reservation WHERE isActive = 1 AND memberId = "+member_id;
					model.addAttribute("bookingDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					sql = "SELECT CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END,CASE WHEN SUM(r.duration) IS NULL THEN t.planDays ELSE t.planDays-SUM(r.duration) END ,t.membercode FROM tbl_t_reservation r INNER JOIN tbl_m_member t ON r.memberId = t.id WHERE resType = 'Regular' AND memberId = "+member_id;
					dets = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
					model.addAttribute("memberother",dets);
					
					m = clientuserService.getMember(member_id);
					model.addAttribute("md",m);
					
					bookdetss = mastersController.getpaymentdetails(member_id);
					pendingamaount = Float.valueOf(bookdetss[0].toString())-(Float.valueOf(bookdetss[2].toString())+Float.valueOf(bookdetss[3].toString()));
					model.addAttribute("pendingamaount",(int)Math.ceil(pendingamaount));
					model.addAttribute("totalpaid",(int)Math.ceil(Float.valueOf(bookdetss[2].toString())+Float.valueOf(bookdetss[3].toString())));
					returnPage = "website/member-dashboard/index";
					break;
					
				case "raise-trip":
					returnPage = "website/member-dashboard/raise-trip";
					String query = "SELECT a.city_id,c.city_name FROM all_resorts a INNER JOIN cities c ON a.city_id = c.city_id GROUP BY a.city_id";
					model.addAttribute("destinationList", clientuserService.getDynamicMultiplecolumnListSQL(query,null));
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
					Date date = new Date();
					model.addAttribute("currentDate",formatter.format(date));
					break;
					
				case "upgrade-membership":
					returnPage = "website/member-dashboard/upgrade-membership";
					break;
					
				case "mybookingstatus" :
					returnPage= "website/member-dashboard/mybookingstatus";
					sql = "SELECT DATE_FORMAT(rt.createdAt,'%d/%m/%Y'),ar.city_name,rt.total_days,rt.adults,rt.child,DATE_FORMAT(rt.start_date,'%d/%m/%Y'),DATE_FORMAT(rt.end_date,'%d/%m/%Y'),rt.approve ,rt.disapprove FROM `raise_trip` rt LEFT JOIN `cities` ar ON ar.city_id = rt.city_id  WHERE member_id = "+member_id+" ORDER BY rt.createdAt DESC ";
					//sql = "SELECT rt.createdAt,ar.resort_Name,rt.total_days,rt.adults,rt.child,rt.start_date,rt.end_date,rt.approve	FROM `raise_trip` rt LEFT JOIN `all_resorts` ar ON ar.resort_id = rt.resort_id WHERE member_id=2092;
					
					model.addAttribute("membertripstatus", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					break;
				case "TicketsRaise" :
					sql = "SELECT interaction_id,interactionname FROM `tbl_interaction`  ";
					model.addAttribute("InteractionAttribute", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					
					sql = "SELECT membercode,''  FROM tbl_m_member WHERE id = "+member_id;
					model.addAttribute("membercode", clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0));
					returnPage= "website/member-dashboard/TicketsRaise";
					break;
					
			
			}
			model.addAttribute("sidePanelName", sidePanelName);
			return returnPage;
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/logout";
		}
		
	}
	
	
	
	@RequestMapping(value = { "/dashboardpay" }, method = RequestMethod.GET)
	public String dashboardpay(ModelMap model, HttpServletRequest request) throws Exception {
		try{
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			model.put("sessionBean", sessionBean);
			return "website/dashboardpay";
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/logout";
		}
		
	}
	@RequestMapping(value = { "/agreementform" }, method = RequestMethod.GET)
	public String agreementform(ModelMap model, HttpServletRequest request) throws Exception {
		try{
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			model.put("sessionBean", sessionBean);
			String sql = "SELECT id,memberName,mobileNo,emailId,DATE_FORMAT(doB,'%Y-%m-%d') FROM tbl_m_member WHERE id = "+sessionBean.getCid();
			model.addAttribute("mds", clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0));
			return "website/verify";
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/logout";
		}
		
	}
	@RequestMapping(value = { "/resetpassword" }, method = RequestMethod.GET)
	public String resetpassword(ModelMap model, HttpServletRequest request) throws Exception {
		try{
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			model.put("sessionBean", sessionBean);
			return "website/resetpassword";
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/logout";
		}
		
	}
	@RequestMapping(value = { "/about" }, method = RequestMethod.GET)
	public String about(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/about";
	}
	@RequestMapping(value = { "/our-vision" }, method = RequestMethod.GET)
	public String ourvision(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/our-vision";
	}

	@RequestMapping(value = { "/our-mission" }, method = RequestMethod.GET)
	public String ourmission(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/our-mission";
	}

	@RequestMapping(value = { "/our-value" }, method = RequestMethod.GET)
	public String ourvalue(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/our-value";
	}

	@RequestMapping(value = { "/management-team" }, method = RequestMethod.GET)
	public String managementteam(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/management-team";
	}

	@RequestMapping(value = { "/event" }, method = RequestMethod.GET)
	public String event(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/event";
	}

	@RequestMapping(value = { "/photos" }, method = RequestMethod.GET)
	public String photos(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/photos";
	}

	@RequestMapping(value = { "/videos" }, method = RequestMethod.GET)
	public String videos(ModelMap model, HttpServletRequest request) throws Exception {
		String query = "SELECT videoLink FROM AdminVideo WHERE isActive=1 ORDER BY createdAt DESC";
		model.addAttribute("VideoList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
		return "website/videos";
	}

	/*
	 * @RequestMapping(value = { "/destinations" }, method = RequestMethod.GET)
	 * public String destinations(ModelMap model, HttpServletRequest request) throws
	 * Exception { String
	 * sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id GROUP BY ar.resort_id,ar.resort_name"
	 * ; List<Object[]> resortList =
	 * clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
	 * model.addAttribute("resortList", resortList); return "website/destinations";
	 * }
	 */
	
	@RequestMapping(value = { "/join-us" }, method = RequestMethod.GET)
	public String joinus(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/join-us";
	}
	
	@RequestMapping(value = { "/blogs" }, method = RequestMethod.GET)
	public String blogs(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/blogs";
	}
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/contact";
	}
	
	
	@RequestMapping(value = { "/tandc" }, method = RequestMethod.GET)
	public String tandc(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/tandc";
	}
	
	@RequestMapping(value = { "/paymentpolicy" }, method = RequestMethod.GET)
	public String paymentpolicy(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/paymentpolicy";
	}
	
	

@RequestMapping(value = { "/career" }, method = RequestMethod.GET)
public String career(ModelMap model, HttpServletRequest request) throws Exception {
	
	String resume = "uploaded/resume/";
		model.addAttribute("docUploadPath", "resources/" + resume);
		model.addAttribute("savePath", resume);
		model.addAttribute("imageIndex", "1");
	return "website/career";
}
	
	
	
	
@RequestMapping(value = "/logoutadmin", method = RequestMethod.GET)
public String logoutadmin(HttpServletRequest request, HttpServletResponse response) {
	SessionBean sessionBean = null;
	try {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		if (auth != null) {
			HttpSession session = request.getSession();
			session.invalidate();
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
	}
		return "redirect:/adminlogin?logout";

}
@RequestMapping(value = "/logoutclient", method = RequestMethod.GET)
public String logoutclient(HttpServletRequest request, HttpServletResponse response) {
	SessionBean sessionBean = null;
	try {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		if (auth != null) {
			HttpSession session = request.getSession();
			session.invalidate();
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
	}
		return "redirect:/memberlogin?logout";

}	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		SessionBean sessionBean = null;
		try {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			if (auth != null) {
				HttpSession session = request.getSession();
				session.invalidate();
				persistentTokenBasedRememberMeServices.logout(request, response, auth);
				SecurityContextHolder.getContext().setAuthentication(null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			/*
			 * commonService.saveAuditTrail(Long.valueOf(environment.getRequiredProperty(
			 * "logout")), 0L, sessionBean.getCcode(),
			 * sessionBean.getIpaddress(),environment.getRequiredProperty("logout_sucess"));
			 */
		}
		System.out.println(request.getParameter("msg"));
		if (request.getParameter("msg") != null && request.getParameter("msg").equals("pending")) {
			return "redirect:/login?msg=" + request.getParameter("msg");
		} else {
			return "redirect:/login?logout";
		}

	}

	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

	private boolean isCurrentAuthenticationAnonymous() {
		final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authentication);
	}

	// Document Upload
	@RequestMapping(value = "/documentUpload.html", method = RequestMethod.POST)
	public @ResponseBody String documentUpload(HttpServletRequest re, @RequestParam("name") String docName,
			@RequestParam("file") MultipartFile file) throws ParseException, UnknownHostException {
		return commonService.documentUpload(re, file, docName);
	}

	// Download Document
	@RequestMapping(value = "/downloadDocument", method = RequestMethod.GET)
	public void downloadDocument(HttpServletRequest re, HttpServletResponse res) {
		commonService.downloadDocument(re, res, "-1");
	}

	public String getBaseURL(HttpServletRequest request) {
		return commonService.getBaseURL(request);
	}
	@RequestMapping(value="/customerlogin",method = RequestMethod.POST)
	public @ResponseBody String checkuser(HttpServletRequest re){
		try {
			
			String sql = "SELECT memberId,username,password,firstName,mobileNo,isActive,isFirstLogin,isAgree FROM tbl_m_user WHERE username = '"+re.getParameter("l_user")+"'";
			List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
			if(sl.size() != 0){
				if(re.getParameter("l_pass").equals(sl.get(0)[2].toString())){
					if(Integer.parseInt(sl.get(0)[5].toString()) == 1){
						SessionBean sessionBean = new SessionBean();
						sessionBean.setCid(Long.valueOf(sl.get(0)[0].toString()));
			    		sessionBean.setCname(sl.get(0)[3].toString());
			    		sessionBean.setMobile(sl.get(0)[4].toString());
			    		sessionBean.setIsFirst(Integer.parseInt(sl.get(0)[6].toString()));
			    		if(Integer.parseInt(sl.get(0)[6].toString()) == 1){
			    			sessionBean.setCcode(sl.get(0)[2].toString());
			    			re.getSession().setAttribute(CommonKeywords.SESSIONOBJECT.toString(), sessionBean);
			    			return "first";
			    		}else{
			    			sessionBean.setCcode(sl.get(0)[1].toString());
			    			re.getSession().setAttribute(CommonKeywords.SESSIONOBJECT.toString(), sessionBean);
			    			if(Integer.parseInt(sl.get(0)[7].toString()) == 0){
				    			return "verify";
				    		}else{
				    			return "true";
				    		}
			    		}
			    		
					}else{
						return "block";
					}
					
				}else{
					return "false";
				}
			}else{
				return "false";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	@RequestMapping(value="/paymentlogin",method = RequestMethod.POST)
	public @ResponseBody String paymentlogin(HttpServletRequest re){
		try {
			
			String sql = "SELECT id,username as uname,password,username as name,phoneno FROM payment_login WHERE username = '"+re.getParameter("l_user")+"'";
			List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
			if(sl.size() != 0){
				if(re.getParameter("l_pass").equals(sl.get(0)[2].toString())){
						SessionBean sessionBean = new SessionBean();
						sessionBean.setCid(Long.valueOf(sl.get(0)[0].toString()));
						sessionBean.setCcode(sl.get(0)[1].toString());
			    		sessionBean.setCname(sl.get(0)[3].toString());
			    		sessionBean.setMobile(sl.get(0)[4].toString());
			    		re.getSession().setAttribute(CommonKeywords.SESSIONOBJECT.toString(), sessionBean);
						return "true";
				}else{
					return "false";
				}
			}else{
				return "false";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	@RequestMapping(value="/sendEMAIL",method = RequestMethod.POST)
	public @ResponseBody String sendEMAIL(HttpServletRequest re,HttpServletResponse res) throws NumberFormatException, Exception {
		String body = "",subject = "",toids="",result = "";
		if(re.getParameter("template").equals("1")){
			String sql = "SELECT memberId,username,password,firstName,mobileNo,emailID FROM tbl_m_user WHERE memberId = "+re.getParameter("memberId");
			List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
			body = "<p><img src='${pageContext.servletContext.contextPath}/resources/img/logo.png' alt='Karma Logo' width='500' height='400' /></p>"
					  + "<p>Welcome "+sl.get(0)[3]+",</p>"
					  + "<p>We extend a warm welcome to you and your family for joining Karma Resorts &amp; Hospitality as a member.</p>"
					  + "<p>Our team is looking forward to provide you a memorable holiday and provide a WOW experience on your every holidays.</p>"
					  + "<p>Please find the below creditails for your membership:-</p>"
					  + "<p>Username / Member Id : <strong>"+sl.get(0)[1]+"</strong></p>"
					  + "<p>Password : <strong>"+sl.get(0)[2]+"</strong></p>'"
					  + "<p>&nbsp;</p>"
					  + "<p>Thanks &amp; regards,<br />Member Experience<br />Karma Resorts and Hospitality</p>"
					  + "<p>&nbsp;</p>"
					  + "<p>** For any further query you can reach us on Email :-&nbsp;<a href='mailto:memberexperience@karmaresorts.in' target='_blank' rel='noopener'>memberexperience@karmaresorts.<wbr />in</a>&nbsp;Ph :- 18002585584</p>";
			subject = "Welcoming you & and your family to the Karma Family";
			toids = sl.get(0)[5].toString();
			
			result = commonService.sendEMAIL(re,body,subject,toids,""); 
			sql = "SELECT id,productName FROM tbl_m_member WHERE id = "+re.getParameter("memberId");
			List<Object[]> sl1 = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
			
			if(!sl1.get(0)[1].toString().equals(environment.getProperty("verificationproduct"))){
				body = "<p>Dear Mr./Ms. "+sl.get(0)[3]+",</p>"
						 + "<p>We would like to take this opportunity to welcome you as our customer at Karma Resorts and Hospitality. We are committed to providing you the highest possible standard of service in your holiday and we appreciate you placing your trust in us.</p>"
						 + "<p>Our excellent customer support team is available to help you with any questions. You can contact them at&nbsp;<a href='mailto:memberexperience@karmahospitality.in' target='_blank' rel='noopener'>memberexperience@<wbr />karmahospitality.in</a>&nbsp;or 1800-258-5584.</p>"
						 + "<p>Your satisfaction is a priority for us, so feel free to share any feedback you have &ndash; we take your opinion seriously and will do our best to implement solutions for you.</p>"
						 + "<p>Best regards,<br />Karma Resorts &amp; hospitality</p>";
					subject = "Member Card | KarmaResort and Hospitality";
					toids = sl.get(0)[5].toString();
					String filepath = mastersController.generatecardforemail(Long.valueOf(re.getParameter("memberId")),re,res);
					
					result = commonService.sendEMAIL(re,body,subject,toids,filepath); 
			}
			
		}
		return result;
	}
	
	@RequestMapping(value="/bookingcheck",method = RequestMethod.POST)
	public @ResponseBody String bookingcheck(HttpServletRequest re){
		
		  try {
			
			String sql = "SELECT memberId,username,password,firstName,mobileNo,isActive,isFirstLogin FROM tbl_m_user WHERE username = '"+re.getParameter("username")+"'";
			List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
			if(sl.size() != 0){
				// user available
				if(re.getParameter("password").equals(sl.get(0)[2].toString())){
					//password match
					if(Integer.parseInt(sl.get(0)[5].toString()) == 1){
						// user active
						// Persists enquire in database..
						//System.out.println("its readdy to persists !");
						//System.out.println(Long.parseLong(sl.get(0)[0].toString()));
						//System.out.println(commonService.changeDateFormate("yyyy-MM-dd","yyyy-MM-dd HH:mm:ss",re.getParameter("startdate")));
						try {
							TicketRaise tr=new TicketRaise();
							
							tr.setMember(new TblMember(Long.parseLong(sl.get(0)[0].toString())));
							tr.setStartDate(commonService.changeDateFormate("yyyy-MM-dd","yyyy-MM-dd HH:mm:ss",re.getParameter("startdate")));
							tr.setEndDate(commonService.changeDateFormate("yyyy-MM-dd","yyyy-MM-dd HH:mm:ss",re.getParameter("enddate")));
							tr.setNote(re.getParameter("note"));
							tr.setResort(re.getParameter("resortName"));
							
							ticketRice.addTicketRaise(tr);
							
							return "true";
						} catch (Exception e) {
							e.printStackTrace();
							return "error";
						}
					}else{
						//user not active
						return "activex";
					}
					
				}else{
					//password not match
					return "passx";
				}
			}else{
				//user not available 
				return "userx";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		
	
	}
	
	@RequestMapping(value = { "/app/{sidePanelName}" }, method = RequestMethod.GET)
	public String app(@PathVariable("sidePanelName")String sidePanelName,ModelMap model, HttpServletRequest request) throws Exception {
		String returnPage = "website/app/index"; 
		
		switch (sidePanelName) {
		case "aboutkarma" :
			returnPage= "website/app/app_about";
			break;
		case "gallery" :
			returnPage= "website/app/gallery";
			String query="SELECT ImagePath,'' FROM AdminImages where isActive=1 ORDER BY createdAt DESC";
		    model.addAttribute("adminimages", clientuserService.getDynamicMultiplecolumnList(query,null,""));
			break;
		case "videos" :
			returnPage= "website/app/videos";
			String queryy = "SELECT videoLink FROM AdminVideo WHERE isActive=1 ORDER BY createdAt DESC";
			model.addAttribute("VideoList", clientuserService.getDynamicMultiplecolumnList(queryy,null,""));
			break;
		case "payment" :
			returnPage= "website/app/payment";
			break;
		case "login" :
			returnPage= "website/app/page-login";
			break;
		
		}
		
		return returnPage;
		
		
	}// app()
	
	@RequestMapping(value = { "/forgetpassword" }, method = RequestMethod.GET)
	public String forgetpassword(ModelMap model, HttpServletRequest request) throws Exception {
		try{
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			model.put("sessionBean", sessionBean);
			return "website/member-dashboard/ForgetPassword";
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/logout";
		}
		
	}// forgetpassword()
	
	@RequestMapping(value="/forgetPasswordCheck",method = RequestMethod.POST)
	public @ResponseBody String forgetPasswordCheck(HttpServletRequest re){
		
		  try {
			
			//String sql = "SELECT memberId,username,password,firstName,mobileNo,isActive,isFirstLogin FROM tbl_m_user WHERE username = '"+re.getParameter("username")+"'";
			String sql1 = "SELECT username,emailID,isActive,memberID FROM tbl_m_user WHERE username = '"+re.getParameter("username").trim()+"'";
			List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql1, null);
			
			if(sl.size() != 0){
				// user available
				if(re.getParameter("email").trim().equals(sl.get(0)[1].toString())){
					//email match
					if(Integer.parseInt(sl.get(0)[2].toString()) == 1){
						// user active
						// Email Process..
						System.out.println("______________________________________-");
						System.out.println("its readdy to Email !");
						System.out.println("Email  DB      :"+sl.get(0)[1].toString());
						System.out.println("Email Clint    :"+re.getParameter("email"));
						
						System.out.println("Username DB    :"+re.getParameter("username"));
						System.out.println("Username Clint :"+sl.get(0)[0].toString());
						
						System.out.println((sl.get(0)[0].toString()).equals(re.getParameter("username").trim()));
						System.out.println((sl.get(0)[1].toString()).equals(re.getParameter("email").trim()));
						System.out.println("______________________________________-");
						String rANumber = commonService.randomAlphaNumeric(8);
						Boolean updateForgetPassword = clientuserService.UpdateForgetPassword(re.getParameter("username").trim(), rANumber);
						if (updateForgetPassword ==true) {
							// Email related Code Here..
							String sql2 = "SELECT firstName,username,password,emailID,memberId FROM tbl_m_user WHERE username = '"+re.getParameter("username").trim()+"'";
							List<Object[]> sl2 = clientuserService.getDynamicMultiplecolumnListSQL(sql2, null);
							String body = "<p><img src="+"https://www.karmasuites.in/resources/website/images/logo.png"+" alt='Karma Logo' width='500' height='130' /></p>"
									  + "<p>Hello "+sl2.get(0)[0]+",</p>"
									 
									 
									  + "<p> Below You Can Find The Temporary Password:-</p>"
									  + "<p>Username / Member Id : <strong>"+sl2.get(0)[1]+"</strong></p>"
									  + "<p>Password : <strong>"+sl2.get(0)[2]+"</strong></p>'"
									  + "<p>&nbsp;</p>"
									  + "<p>Thanks &amp; regards,<br />Member Experience<br />Karma Resorts and Hospitality</p>"
									  + "<p>&nbsp;</p>"
									  + "<p>** For any further query you can reach us on Email :-&nbsp;<a href='mailto:memberexperience@karmaresorts.in' target='_blank' rel='noopener'>memberexperience@karmaresorts.<wbr />in</a>&nbsp;Ph :- 18002585584</p>";
							String subject = "Welcoming you & and your family to the Karma Family";
							String toids = sl2.get(0)[3].toString();
							
							String result = commonService.sendEMAIL(null,body,subject,toids,""); 
							if (result.equals("true")) {
								System.out.println("Mail Sent !");
								return "true~"+sl2.get(0)[4];
							} else {
								System.out.println("Mail Not Sent !");
								return "error~0";
							}
							
							
						} else {
			                return "error~0";
						}
						
					}else{
						//user not active
						return "activex~0";
					}
					
				}else{
					//password not match
					return "emailx~0";
				}
			}else{
				//user not available 
				return "userx~0";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error~0";
		}
		//return "true";
		
	
	}// forgetPasswordCheck



	@RequestMapping(value = { "/resortDestinatin/{sidePanelName}" }, method = RequestMethod.GET)
	public String resortDestinatin(@PathVariable("sidePanelName") String sidePanelName, ModelMap model,
			HttpServletRequest request) throws Exception {
		System.out.println("LoginController.masters() :: In DestionationZons");
		String returnPage = "website/Error";
		String query = "";
		System.out.println("LoginController.resortDestinatin()" + sidePanelName);

		try {
			query = "SELECT r.resort_Name,r.description,r.location FROM all_resorts r where resort_id= '" + sidePanelName+"'";
			List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(query, null);
			
			model.addAttribute("resortName",resortList.get(0)[0]);
			model.addAttribute("description",resortList.get(0)[1]);
			model.addAttribute("location",resortList.get(0)[2]);
			
			query = "SELECT r.image_path,'' FROM resort_images r where resort_id= '" + sidePanelName+"'";
			model.addAttribute("resortImages", clientuserService.getDynamicMultiplecolumnListSQL(query, null));
			
			return returnPage = "website/Resort";
		} catch (Exception e) {
			e.printStackTrace();
			return returnPage = "website/Error";
		}
		
	}



	@RequestMapping(value = { "/destinationZones/{sidePanelName}" }, method = RequestMethod.GET)
	public String masters(@PathVariable("sidePanelName")String sidePanelName,ModelMap model,HttpServletRequest request) throws Exception {
		System.out.println("LoginController.masters() :: In DestionationZons");
		String returnPage = "clientuser/clientdashboard"; 
		String query = "";
		try {
			switch(sidePanelName){
			case "0":
				System.out.println("LoginController.masters() :: switch :: 0");				
				try {
					String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE ar.isActive=1   GROUP BY ar.resort_id,ar.resort_name";
					List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					model.addAttribute("resortList", resortList);
					String zone="All Destinations";
					model.addAttribute("desti", zone);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				returnPage ="website/destinations";
				break;
			case "1":
				System.out.println("LoginController.masters() :: switch :: 1");
				try {
					String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=1 and ar.isActive=1  GROUP BY ar.resort_id,ar.resort_name";
					List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					model.addAttribute("resortList", resortList);
					String zone="East";
					model.addAttribute("desti", zone);
				} catch (Exception e) {
					e.printStackTrace();
				}
				returnPage ="website/destinations";
				break;
			case "2":
				System.out.println("LoginController.masters() :: switch :: 2");
				try {
					String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=2 and ar.isActive=1  GROUP BY ar.resort_id,ar.resort_name";
					List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					model.addAttribute("resortList", resortList);
					String zone="West";
					model.addAttribute("desti", zone);
				} catch (Exception e) {
					e.printStackTrace();
				}
				returnPage ="website/destinations";
				break;
			case "3":
				System.out.println("LoginController.masters() :: switch :: 3");
				try {
					String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=3 and ar.isActive=1  GROUP BY ar.resort_id,ar.resort_name";
					List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					model.addAttribute("resortList", resortList);
					String zone="South";
					model.addAttribute("desti", zone);
				} catch (Exception e) {
					e.printStackTrace();
				}
				returnPage = "website/destinations";
				break;
			case "4":
				System.out.println("LoginController.masters() :: switch :: 4");
				try {
					String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=4 and ar.isActive=1  GROUP BY ar.resort_id,ar.resort_name";
					List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					model.addAttribute("resortList", resortList);
					String zone="North";
					model.addAttribute("desti", zone);
				} catch (Exception e) {
					e.printStackTrace();
				}
				returnPage = "website/destinations";
				break;
			case "5":
				System.out.println("LoginController.masters() :: switch :: 5");
				try {
					
					String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=5 and ar.isActive=1  GROUP BY ar.resort_id,ar.resort_name";
					List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					model.addAttribute("resortList", resortList);
					String zone="International";
					model.addAttribute("desti", zone);
				} catch (Exception e) {
					e.printStackTrace();
				}
				returnPage = "website/destinations";
				break;
			default:
				System.out.println("LoginController.masters() :: default");
				returnPage = "website/Error";
			}
			
		} catch (Exception e) {
			System.out.println("LoginController.masters() :: catch");
			returnPage = "website/Error";
		}
		return returnPage;
	}
	
	//Resort dynamic end
	
	@RequestMapping(value = { "/offers" }, method = RequestMethod.GET)
	public String offers(ModelMap model, HttpServletRequest request) throws Exception {
		return "website/offer/index";
	}
	
	//Application Destination Listing dynamic

		@RequestMapping(value = { "app/AppdestinationZones/{sidePanelName}" }, method = RequestMethod.GET)
		public String appdestinationZones(@PathVariable("sidePanelName")String sidePanelName,ModelMap model,HttpServletRequest request) throws Exception {
			System.out.println("LoginController.masters() :: In DestionationZons");
			String returnPage = "clientuser/clientdashboard"; 
			String query = "";
			try {
				switch(sidePanelName){
				case "0":
					System.out.println("LoginController.masters() :: switch :: 0");				
					try {
						String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id  GROUP BY ar.resort_id,ar.resort_name";
						List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
						model.addAttribute("resortList", resortList);
						String zone="All Destinations";
						model.addAttribute("desti", zone);
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					returnPage ="website/app/Resorts";
					break;
				case "1":
					System.out.println("LoginController.masters() :: switch :: 1");
					try {
						String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=1  GROUP BY ar.resort_id,ar.resort_name";
						List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
						model.addAttribute("resortList", resortList);
						String zone="East";
						model.addAttribute("desti", zone);
					} catch (Exception e) {
						e.printStackTrace();
					}
					returnPage ="website/app/Resorts";
					break;
				case "2":
					System.out.println("LoginController.masters() :: switch :: 2");
					try {
						String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=2  GROUP BY ar.resort_id,ar.resort_name";
						List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
						model.addAttribute("resortList", resortList);
						String zone="West";
						model.addAttribute("desti", zone);
					} catch (Exception e) {
						e.printStackTrace();
					}
					returnPage ="website/app/Resorts";
					break;
				case "3":
					System.out.println("LoginController.masters() :: switch :: 3");
					try {
						String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=3  GROUP BY ar.resort_id,ar.resort_name";
						List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
						model.addAttribute("resortList", resortList);
						String zone="South";
						model.addAttribute("desti", zone);
					} catch (Exception e) {
						e.printStackTrace();
					}
					returnPage = "website/app/Resorts";
					break;
				case "4":
					System.out.println("LoginController.masters() :: switch :: 4");
					try {
						String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=4  GROUP BY ar.resort_id,ar.resort_name";
						List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
						model.addAttribute("resortList", resortList);
						String zone="North";
						model.addAttribute("desti", zone);
					} catch (Exception e) {
						e.printStackTrace();
					}
					returnPage = "website/app/Resorts";
					break;
				case "5":
					System.out.println("LoginController.masters() :: switch :: 5");
					try {
						
						String sql=" SELECT min(ar.resort_id),min(ar.resort_name),min(ri.image_path) FROM `all_resorts` ar LEFT JOIN `resort_images` ri ON ar.resort_id = ri.resort_id WHERE zone_id=5  GROUP BY ar.resort_id,ar.resort_name";
						List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
						model.addAttribute("resortList", resortList);
						String zone="International";
						model.addAttribute("desti", zone);
					} catch (Exception e) {
						e.printStackTrace();
					}
					returnPage = "website/app/Resorts";
					break;
				default:
					System.out.println("LoginController.masters() :: default");
					returnPage = "website/Error";
				}
				
			} catch (Exception e) {
				System.out.println("LoginController.masters() :: catch");
				returnPage = "website/Error";
			}
			return returnPage;
		}
		
		//Application Destination Listing dynamic end
		
		// Application Resort
		
		@RequestMapping(value = { "app/AppresortDestinatin/{sidePanelName}" }, method = RequestMethod.GET)
		public String appResortDestinatin(@PathVariable("sidePanelName") String sidePanelName, ModelMap model,
				HttpServletRequest request) throws Exception {
			System.out.println("LoginController.masters() :: In DestionationZons");
			String returnPage = "website/Error";
			String query = "";
			System.out.println("LoginController.resortDestinatin()" + sidePanelName);

			try {
				query = "SELECT r.resort_Name,r.description,r.location FROM all_resorts r where resort_id= '" + sidePanelName+"'";
				List<Object[]> resortList = clientuserService.getDynamicMultiplecolumnListSQL(query, null);
				
				model.addAttribute("resortName",resortList.get(0)[0]);
				model.addAttribute("description",resortList.get(0)[1]);
				model.addAttribute("location",resortList.get(0)[2]);
				
				query = "SELECT r.image_path,'' FROM resort_images r where resort_id= '" + sidePanelName+"'";
				model.addAttribute("resortImages", clientuserService.getDynamicMultiplecolumnListSQL(query, null));
				
				return returnPage = "website/app/AppResort";
			} catch (Exception e) {
				e.printStackTrace();
				return returnPage = "website/Error";
			}
			
		}
		
		// Application Resort
		
		
		@RequestMapping(value = { "/Thankyou" }, method = RequestMethod.GET)
		public String Thankyou(ModelMap model, HttpServletRequest request) throws Exception {
			return "website/Thankyou";
		}


}// class End
