package com.system.justfeedback.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.system.justfeedback.bean.SessionBean;
import com.system.justfeedback.daos.UpgradePlanDao;
import com.system.justfeedback.model.TblAsf;
import com.system.justfeedback.model.TblCourier;
import com.system.justfeedback.model.TblEmi;
import com.system.justfeedback.model.TblInteractionSubtype;
import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblPaymentMode;
import com.system.justfeedback.model.TblProducts;
import com.system.justfeedback.model.TblTicket;
import com.system.justfeedback.model.TblTicketDetails;
import com.system.justfeedback.model.TblUser;
import com.system.justfeedback.services.ClientuserService;
import com.system.justfeedback.services.CommonService;
import com.system.justfeedback.services.UserRoleService;
import com.system.justfeedback.utility.CommonKeywords;

/**
 * @author Keval.soni
 */

@Controller
@RequestMapping("/ticket/")
@SessionAttributes("roles")
@PropertySource(value = { "classpath:resources/auditrailMessages.properties","classpath:resources/link.properties","classpath:resources/messages.properties" })
public class TicketController {
	
	@Autowired
	CommonService commonService;
	
	@Autowired
	ClientuserService clientuserService;
	
	@Autowired
	UserRoleService userRoleService;
	
	@Autowired
    private Environment environment;
	
	@Autowired
	UpgradePlanDao upgradeplandao;
	
	@RequestMapping(value="/getallticketcomment",method = RequestMethod.POST)
	public @ResponseBody List<TblTicketDetails> getallticketcomment(HttpServletRequest re) throws Exception {
		List<TblTicketDetails> tblLst = clientuserService.getAllTicketDetails(Long.valueOf(re.getParameter("tickid")));
		return tblLst;
	}
	
	@RequestMapping(value="/getallticket",method = RequestMethod.POST)
	public @ResponseBody List<TblTicket> getallticket(HttpServletRequest re) throws Exception {
		List<TblTicket> tblLst = clientuserService.getAllTicket(Long.valueOf(re.getParameter("memberMainId")));
		return tblLst;
	}
	
	@RequestMapping(value="/changeticket",method = RequestMethod.POST)
	public @ResponseBody String changeticket(HttpServletRequest re) throws Exception {
		String tblLst = clientuserService.updateTicketdata(re);
		return tblLst;
	}
	
	@RequestMapping(value="/getticketdata",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getagreements(HttpServletRequest re) throws Exception {
			String query = " SELECT t.ticket_id,m.id,t.ticketno,t.memberCode,t.ticketfrom,CONCAT(m.preMemberName,' ',m.memberName),t.interactiontype,t.typename,t.subtypename,"
						+  " DATE_FORMAT(t.approxresolveddate,'%d/%m/%Y'),DATE_FORMAT(t.actualresolveddate,'%d/%m/%Y'),DATE_FORMAT(t.careateddatetime,'%d/%m/%Y %h:%i %p'), "
						+  " t.employeeId,t.employeename,t.status FROM tbl_ticket t INNER JOIN tbl_m_member m ON t.memberId = m.id ORDER BY t.careateddatetime DESC";
			return clientuserService.getDynamicMultiplecolumnListSQL(query,null);
		
	}
	
	@RequestMapping(value = { "/clientdashboard/{sidePanelName}/{headingName}/{messageType}/{successMsg}/{isInnercall}" }, method = RequestMethod.GET)
	public String masters(@PathVariable("sidePanelName")String sidePanelName,@PathVariable("headingName")String headingName,@PathVariable("messageType")String messageType,@PathVariable("successMsg")String successMsg,@PathVariable("isInnercall") int isInnerCall,ModelMap model,HttpServletRequest request) throws Exception {
		try{
			model.addAttribute("sidePanelName", sidePanelName);
			model.addAttribute("headingName",commonService.encryptionDecryption(headingName, false));
			String returnPage = "clientuser/clientdashboard"; 
			String query = "";
			Map<String, Object> var = new HashMap<String, Object>();
			switch(sidePanelName){
				case "ticket":
					query = "SELECT p.id,p.emp_cd,p.emp_name FROM Employee p";
					model.addAttribute("empList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "ticket";
					break;
			}
			model.addAttribute("messageType", messageType);
			model.addAttribute("successMsg", !successMsg.equals("-1") ? environment.getRequiredProperty(successMsg) : "-1");
			return returnPage;
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/adminlogin?logout";
		}
	}
	
	@RequestMapping(value="/saveticketcomment",method = RequestMethod.POST)
	public @ResponseBody TblTicketDetails saveticketcomment(HttpServletRequest re) throws Exception {
		TblTicketDetails p = new TblTicketDetails();
		try{
			SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			p.setTicket(new TblTicket(Long.valueOf(re.getParameter("ticketId"))));
			p.setComment(re.getParameter("textcomment"));
			p.setCreateddatetime(commonService.getServerDateAndTime());
			p.setIsreplyfromuser(Integer.parseInt(re.getParameter("isfromuser")));
			p.setUsername(sessionBean.getCname());
			boolean isSuccess = clientuserService.saveTicketComment(p);;
			return p;
		}catch(Exception ex){			
			ex.printStackTrace();
			p.setComment("SAVE_ERROR");
			return p;
		}
		
	}
	@RequestMapping(value = "/saveticket", method = RequestMethod.POST)
	public @ResponseBody String savemember(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		try{
			Long memberid = Long.valueOf(re.getParameter("memberId"));
			Long membercode = Long.valueOf(re.getParameter("memberCd"));
			Date dd = commonService.getServerDateAndTime();
			int savecnt = Integer.parseInt(re.getParameter("savecnt"));
			TblTicket tk = new TblTicket();
			if((re.getParameter("isnewticket_"+savecnt).split("_")[0]).equals("old")){
				tk = clientuserService.getTicket(Long.valueOf(re.getParameter("isnewticket_"+savecnt).split("_")[1]));
			}else{
				
				tk.setTicketno(createTicketno(membercode,memberid));
				tk.setCareateddatetime(dd);
			}
			tk.setIsadminentry(Integer.parseInt(re.getParameter("isfromadmin_"+savecnt)));
			tk.setMemberCode(membercode);
			tk.setMember(new TblMember(memberid));
			tk.setInteractionsubtype(new TblInteractionSubtype(Long.valueOf(re.getParameter("intertypesubid_"+savecnt))));
			tk.setSubtypename(re.getParameter("subtype"));
			tk.setTypename(re.getParameter("onlytype"));
			tk.setInteractiontype(re.getParameter("inteonly"));
			tk.setTat(Integer.valueOf(re.getParameter("tat_"+savecnt)));
			tk.setApproxresolveddate(re.getParameter("approxresolveddate_"+savecnt) != null && StringUtils.hasLength(re.getParameter("approxresolveddate_"+savecnt)) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("approxresolveddate_"+savecnt)) : null);
			tk.setActualresolveddate(re.getParameter("actualresolveddate_"+savecnt) != null && StringUtils.hasLength(re.getParameter("actualresolveddate_"+savecnt)) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("actualresolveddate_"+savecnt)) : null);
			tk.setStatus(Integer.parseInt(re.getParameter("status_"+savecnt)));
			tk.setUsercomment(re.getParameter("usercomment_"+savecnt));
			tk.setMembercomment(re.getParameter("membercomment_"+savecnt));
			if(re.getParameter("employeeId_"+savecnt) != null && !"".equals(re.getParameter("employeeId_"+savecnt))){
				tk.setEmployeeId(Long.valueOf(re.getParameter("employeeId_"+savecnt)));
				tk.setEmployeename(re.getParameter("empname"));
			}else{
				tk.setEmployeeId(0);
				tk.setEmployeename("");
			}
			if(Integer.parseInt(re.getParameter("status_"+savecnt)) == 2){
				tk.setActualresolveddate(dd);
			}else{
				tk.setActualresolveddate(null);
			}
			tk.setTicketfrom(re.getParameter("ticketfrom_"+savecnt));
			
			isSuccess = clientuserService.saveOrUpdateticket(tk);
			return isSuccess ? "y~"+environment.getRequiredProperty(re.getParameter("memberid") != null && Integer.valueOf(re.getParameter("memberid")) != 0 ? "redirect_success_common" : "redirect_success_common_update")+"~"+tk.getId()+"~"+tk.getTicketno() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
		
	}
	
	public synchronized String createTicketno(long membercode,long memberId){
		String ticketno = "T-"+membercode;
		String sql = "SELECT ticketno,'' FROM tbl_ticket WHERE memberId =  "+memberId+" ORDER BY ticket_id DESC LIMIT 1";
		List<Object[]> ojlst = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
		if(ojlst.size() == 0){
			ticketno = ticketno+"-"+1;
		}else{
			ticketno = ticketno+"-"+(Integer.parseInt(ojlst.get(0)[0].toString().split("-")[2])+1);
		}
		return ticketno;
	}
	
	@RequestMapping(value="/getinteractionData",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getmemberdata(HttpServletRequest re) throws Exception {
		return clientuserService.getDynamicMultiplecolumnListSQL(re.getParameter("sqlquery"),null);
	}
}
