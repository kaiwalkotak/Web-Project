package com.system.justfeedback.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.ExceptionConverter;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPTableEvent;
import com.itextpdf.text.pdf.PdfWriter;
import com.system.justfeedback.bean.SessionBean;
import com.system.justfeedback.daos.UpgradePlanDao;
import com.system.justfeedback.model.AdminImages;
import com.system.justfeedback.model.AdminVideo;
import com.system.justfeedback.model.Banner;
import com.system.justfeedback.model.CampaignMaster;
import com.system.justfeedback.model.Career;
import com.system.justfeedback.model.Country;
import com.system.justfeedback.model.CustomerPay;
import com.system.justfeedback.model.Customermaster;
import com.system.justfeedback.model.Emimaster;
import com.system.justfeedback.model.Employee;
import com.system.justfeedback.model.Enquiry;
import com.system.justfeedback.model.JoinUs;
import com.system.justfeedback.model.OfferMaster;
import com.system.justfeedback.model.RaiseTrip;
import com.system.justfeedback.model.ResortImages;
import com.system.justfeedback.model.Resorts;
import com.system.justfeedback.model.SaleBranch;
import com.system.justfeedback.model.States;
import com.system.justfeedback.model.TblAgreement;
import com.system.justfeedback.model.TblAsf;
import com.system.justfeedback.model.TblCallfile;
import com.system.justfeedback.model.TblCourier;
import com.system.justfeedback.model.TblEmi;
import com.system.justfeedback.model.TblInteractionSubtype;
import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblPaymentMode;
import com.system.justfeedback.model.TblPaymentReceipt;
import com.system.justfeedback.model.TblPlcStatus;
import com.system.justfeedback.model.TblProducts;
import com.system.justfeedback.model.TblReservation;
import com.system.justfeedback.model.TblTicket;
import com.system.justfeedback.model.TblSalesStatus;
import com.system.justfeedback.model.TblUser;
import com.system.justfeedback.model.TblWcStatus;
import com.system.justfeedback.model.Testimonial;
import com.system.justfeedback.model.TicketRaise;
import com.system.justfeedback.model.VideoSlide;
import com.system.justfeedback.model.Websiteoffers;
import com.system.justfeedback.model.Zone;
import com.system.justfeedback.model.city;
import com.system.justfeedback.model.upgradeMembership;
import com.system.justfeedback.services.ClientuserService;
import com.system.justfeedback.services.CommonService;
import com.system.justfeedback.services.UserRoleService;
import com.system.justfeedback.utility.CommonKeywords;
import com.system.justfeedback.model.Paymentlogin;

/**
 * @author Keval.soni
 */

@Controller
@RequestMapping("/masters/")
@SessionAttributes("roles")
@PropertySource(value = { "classpath:resources/auditrailMessages.properties","classpath:resources/link.properties","classpath:resources/messages.properties" })
public class MastersController {
	
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

	
	
	@RequestMapping(value="/getmemberdata",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getmemberdata(HttpServletRequest re) throws Exception {
		String query = "SELECT id,membercode,concat(preMemberName,' ',memberName),mobileNo,emailId,product.title,resCity,sellingprice,DATE_FORMAT(createdAt,'%d/%m/%Y'),status,CASE WHEN statusOfPLC = 'Cleared' THEN 1 ELSE 0 END,isActive FROM TblMember order by membercode desc";
		return clientuserService.getDynamicMultiplecolumnList(query,null,"");
	}
	
	@RequestMapping(value="/getagreements",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getagreements(HttpServletRequest re) throws Exception {
		if(re.getParameter("sidepanel").equals("lockdown")){
			String query = " SELECT m.id,m.membercode,CONCAT(m.preMemberName,' ',m.memberName),m.mobileNo,m.emailId,m.productName,m.resCity,m.sellingprice,"
						+  " DATE_FORMAT(m.createdAt,'%d/%m/%Y'),m.status,CASE WHEN m.statusOfPLC = 'Cleared' THEN 1 ELSE 0 END,m.isActive FROM tbl_m_member m "
						+  " INNER JOIN tbl_m_user u ON m.id = u.memberId WHERE m.status = 1 AND m.isActive = 1 AND m.productName = '"+environment.getProperty("verificationproduct")+"' AND u.isAgree = 1 ORDER BY membercode DESC";
			return clientuserService.getDynamicMultiplecolumnListSQL(query,null);
		}else{
			String query = "SELECT id,membercode,concat(preMemberName,' ',memberName),mobileNo,emailId,productName,resCity,sellingprice,DATE_FORMAT(createdAt,'%d/%m/%Y'),status,CASE WHEN statusOfPLC = 'Cleared' THEN 1 ELSE 0 END,isActive FROM TblMember WHERE status = 1 and isActive = 1 AND productName <> '"+environment.getProperty("verificationproduct")+"' order by membercode desc";
			return clientuserService.getDynamicMultiplecolumnList(query,null,"");
		}
		
	}
	
	@RequestMapping(value = { "/clientdashboard/{sidePanelName}/{headingName}/{messageType}/{successMsg}/{isInnercall}" }, method = RequestMethod.GET)
	public String masters(@PathVariable("sidePanelName")String sidePanelName,@PathVariable("headingName")String headingName,@PathVariable("messageType")String messageType,@PathVariable("successMsg")String successMsg,@PathVariable("isInnercall") int isInnerCall,ModelMap model,HttpServletRequest request) throws Exception {
		try{
			model.addAttribute("sidePanelName", sidePanelName);
			model.addAttribute("headingName",commonService.encryptionDecryption(headingName, false));
			String returnPage = "clientuser/clientdashboard"; 
			String query = "";
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			Map<String, Object> var = new HashMap<String, Object>();
			switch(sidePanelName){
				case "adminproduct":
					model.addAttribute("datatableHeader",new String[]{"id","Title","Tenure","Description","Active","Display","Created Date"});
					query = "SELECT p.id,p.title,p.tenure,p.description,p.isActive,p.isDisplay,DATE_FORMAT(p.createdAt,'%d/%m/%Y  %h:%i%p') FROM TblProducts p";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,var,""));
					returnPage = "adminproduct";
					break;
				case "adminmember":
					String sql = "SELECT id,branch_name from sale_branch";
					model.addAttribute("branchList", clientuserService.getDynamicMultiplecolumnListSQL(sql,null));
					returnPage = "adminmember";
					break;
				case "agreements":
					/*model.addAttribute("datatableHeader",new String[]{"id","Code","Name","Mobile","Email","Product","City","Selling Price","Created Date"});
					query = "SELECT id,membercode,concat(preMemberName,' ',memberName),mobileNo,emailId,product.title,resCity,sellingprice,DATE_FORMAT(createdAt,'%d/%m/%Y') FROM TblMember WHERE status = 1 and isActive = 1 AND product.title <> '"+environment.getProperty("verificationproduct")+"'";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));*/
					returnPage = "agreement";
					break;
				case "lockdown":
					/*model.addAttribute("datatableHeader",new String[]{"id","Code","Name","Mobile","Email","Product","City","Selling Price","Created Date"});
					query = "SELECT id,membercode,concat(preMemberName,' ',memberName),mobileNo,emailId,product.title,resCity,sellingprice,DATE_FORMAT(createdAt,'%d/%m/%Y') FROM TblMember WHERE status = 1 and isActive = 1 AND product.title <> '"+environment.getProperty("verificationproduct")+"'";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));*/
					returnPage = "agreement";
					break;
				case "employeemaster":
					query = "SELECT cat.id,cat.branch_name FROM SaleBranch cat ";
					List<Object[]> mnLst = clientuserService.getDynamicMultiplecolumnList(query,var,"");
					model.addAttribute("branchList", mnLst);
					
					model.addAttribute("datatableHeader",new String[]{"id","Image","Employee Code","Employee Name","Email Id","Mobile No","Branch Name","Created Date"});
					query = "SELECT p.id,p.imagepath,p.emp_cd,p.emp_name,p.email_id,p.mob_no,p.branch.branch_name,DATE_FORMAT(p.createdAt,'%d/%m/%Y  %h:%i%p') FROM Employee p";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,var,""));
					String imagePath = "uploaded/employee/"+sessionBean.getCid()+"/";
					model.addAttribute("docUploadPath","resources/"+imagePath);
					model.addAttribute("savePath",imagePath);
					model.addAttribute("imageIndex", "1");
					returnPage = "employeemaster";
					break;
				case "salebranch":
					model.addAttribute("datatableHeader",new String[]{"id","Branch Name","Address","Created Date"});
					query = "SELECT p.id,p.branch_name,p.address,DATE_FORMAT(p.createdAt,'%d/%m/%Y  %h:%i%p') FROM SaleBranch p";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,var,""));
					returnPage = "salebranch";
					break;	
				case "banner":				
					model.addAttribute("datatableHeader",
							new String[] { "id",  "image", "title", "location", "description", "Created Date" });
					query = "SELECT p.id,p.destination_image_path, p.title, p.location, p.description, DATE_FORMAT(p.createdAt,'%d/%m/%Y  %h:%i%p') FROM Banner p";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query, var, ""));
					String destination_image_path = "uploaded/banner/" + sessionBean.getCid() + "/";
					model.addAttribute("docUploadPath", "resources/" + destination_image_path);
					model.addAttribute("savePath", destination_image_path);
					model.addAttribute("imageIndex", "1");
					returnPage = "banner";
					break;
				case "adminTestimonial":
					model.addAttribute("datatableHeader",
							new String[]{"id","Image","Name","Location","Description","Active","Created Date"});
					query = "SELECT p.id,p.image_path,p.name,p.location,p.description,p.isActive,DATE_FORMAT(p.createdAt,'%d/%m/%Y  %h:%i%p') FROM Testimonial p";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,var,""));
					String image_path = "uploaded/testimonial/" + sessionBean.getCid() + "/";
					model.addAttribute("docUploadPath", "resources/" + image_path);
					model.addAttribute("savePath", image_path);
					model.addAttribute("imageIndex", "1");
					returnPage = "adTestimoni";
					break;
					
				case "VideoSlide":
					model.addAttribute("datatableHeader",
							new String[]{"id","Title","Description","Video","Active","Created Date"});
					query = "SELECT p.id,p.title,p.Description,p.videolink,p.isActive,DATE_FORMAT(p.createdAt,'%d/%m/%Y  %h:%i%p') FROM VideoSlide p";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,var,""));
					String videoSlide_image_path = "uploaded/videoslide/" + sessionBean.getCid() + "/";
					model.addAttribute("docUploadPath", "resources/" + videoSlide_image_path);
					model.addAttribute("savePath", videoSlide_image_path);
					model.addAttribute("imageIndex", "1");
					returnPage = "VideoSlide";
					break;
					
				case "adminPaymentRecipt":
					model.addAttribute("datatableHeader",
							new String[]{"id","PAYMENT TYPE","MEMBER ID","RECEIPT NO","NAME","LOCATION","PAYMENT TOWARDS","PAYMENT MODE","AMOUNT","MOBILE","EMAIL","RECEIVED","Created Date"});
					query = "SELECT p.id,p.paymentType,"+ "p.memberCode,"
							+ "p.receiptNo,"
							+ "p.memberName,"
							+ "p.location,"
							+ "p.paymentTowards,"
							+ "p.paymentMode,"
							+ "p.amount,"
							+ "mobileNo,"
							+ "emailId,"
							+ "receivedBy,"
							+ "DATE_FORMAT(p.createdDate,'%d/%m/%Y') FROM TblPaymentReceipt p ORDER BY p.createdDate DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,var,""));
				
					returnPage = "AdPaymentrcpt";
					break;
				case "payment":
					model.addAttribute("datatableHeader",new String[]{"id","Pay ID #","Name","Email","Phone","Amount","Method","Sales Person","Created Date"});
					query = "SELECT id,razor_payment_id,custname,payemail,contact,amount,method,salesexname,DATE_FORMAT(createdAt,'%d/%m/%Y') FROM CustomerPay WHERE ispaymentdone = 1 ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "paymentlist";
					break;	
				case "AdminEnq":					
					model.addAttribute("datatableHeader",new String[]{"id","Name","Email","Phone","DESCRIPTION","Created Date"});
					query = "SELECT id,Name,Email,Phone,Description,DATE_FORMAT(CreatedDate,'%d/%m/%Y %h:%i %p') FROM Enquiry ORDER BY CreatedDate DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "AdminEnq";
					break;
				case "joinusAdmin":					
					model.addAttribute("datatableHeader",new String[]{"id","first name","last name","Address","state","city","postal/zip","phnumber","email","created Date"});
					query = "SELECT id,f_name,l_name,addr,state,city,postal,phnumber,email,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM JoinUs ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "joinusAdmin";
					break;
				case "TestResort":					
					model.addAttribute("datatableHeader",new String[]{"id","first name","last name","Address","state","city","postal/zip","phnumber","email","created Date"});
					query = "SELECT id,f_name,l_name,addr,state,city,postal,phnumber,email,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM JoinUs";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "TestResort";
					break;
				case "CampaignMaster":					
					model.addAttribute("datatableHeader",new String[]{"id","campaign id","campaign name","created Date"});
					query = "SELECT id,campaign_id,name,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM CampaignMaster ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "Campaignmaster";
					break;
				case "offermaster":					
					model.addAttribute("datatableHeader",new String[]{"id","name","description","created Date"});
					query = "SELECT id,name,description,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM OfferMaster ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "offermaster";
					break;
				case "Adminstate":					
					model.addAttribute("datatableHeader",new String[]{"state id","state name"});
					query = "SELECT id,statename FROM States";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					//query = "SELECT id,cityname FROM city";
				//	model.addAttribute("cityList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "AdminState";
					break;
				case "Admincity":					
					model.addAttribute("datatableHeader",new String[]{"city name","State Name"});
					query = "SELECT id,cityname,state.statename,state.id FROM city";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					//for DropDown option
					query = "SELECT id,statename FROM States ORDER BY statename ASC";
					model.addAttribute("statesList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "AdminCity";
					break;
				case "ticketraised":
					model.addAttribute("datatableHeader",new String[]{"member ID","member name","contact No","resort","note","from","to","createdAt","resolved?"});
					query="SELECT id,t.member.membercode,t.member.memberName,t.member.mobileNo,t.resort,t.note,DATE_FORMAT(t.startDate,'%d/%m/%Y'),DATE_FORMAT(t.endDate,'%d/%m/%Y'),DATE_FORMAT(t.createdAt,'%d/%m/%Y'),t.resolved FROM TicketRaise t ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "ticketraise";
					break;
				case "adminvideo":
					model.addAttribute("datatableHeader",new String[]{"title","video","status","Active","createdAt"});
					query="SELECT id,title,videoLink,isActive,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p')FROM AdminVideo ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "adminvideo";
					break;
				case "career":
					model.addAttribute("datatableHeader",new String[]{"id"," name","email","Phone","Exp_lvl","Intrest","State","resume","created Date"});
					query = "SELECT id,name,email,phoneno,exp_lvl,intrest,state,resume,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM Career ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "career";
					break;
				case "emimaster":
					model.addAttribute("datatableHeader",new String[]{" EMI_Name","EMI %","created Date"});
					query = "SELECT id,emi_name,emi_per,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM Emimaster ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "emimaster";
					break;
				case "AdminImages":
						model.addAttribute("datatableHeader",new String[]{"title","Image","status","Active","createdAt"});
						query="SELECT id,title,ImagePath,isActive,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p')FROM AdminImages ORDER BY createdAt DESC";
					    model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					    String admin_image_path = "uploaded/adminimages/" + sessionBean.getCid() + "/";
						model.addAttribute("docUploadPath", "resources/" + admin_image_path);
						model.addAttribute("savePath", admin_image_path);
						model.addAttribute("imageIndex", "1");
					    returnPage = "AdminImages";
						break;
				case "raiseTrip":
						model.addAttribute("datatableHeader",new String[]{"member ID","City name","from","to","total Days","adult","child","child Age","note","createdAt","approve","disapprove","pending/ resolved"});
						query="SELECT "
								+ "id,"
								+ "r.member.membercode,"
								+ "r.city.cityname,"
								+ "DATE_FORMAT(r.startDate,'%d/%m/%Y'),"
								+ "DATE_FORMAT(r.endDate,'%d/%m/%Y'),"
								+ "r.totalDays,"
								+ "r.adults,"
								+ "r.child,"
								+ "r.child1,r.child2,r.child3,r.child4,r.child5,r.child6,r.child7,r.child8,r.child9,r.child10,"
								+ "r.remarks,"
								+ "DATE_FORMAT(r.createdAt,'%d/%m/%Y %h:%i %p'),"
								+ "r.approve ,"
								+ "r.disapprove ,"
								+ "r.pending "
								+ "FROM RaiseTrip r "
								+ "ORDER BY r.createdAt DESC";
						
						List<Object[]> newList = clientuserService.getDynamicMultiplecolumnList(query,null,"");
						List<Object[]> finalList = new ArrayList<>();
						
						for (int i = 0; i < newList.size(); i++) {
							Object[] narrObjects = new Object[14];
							narrObjects[0] = newList.get(i)[0];
							narrObjects[1] = newList.get(i)[1];
							narrObjects[2] = newList.get(i)[2];
							narrObjects[3] = newList.get(i)[3];
							narrObjects[4] = newList.get(i)[4];
							narrObjects[5] = newList.get(i)[5];
							narrObjects[6] = newList.get(i)[6];
							narrObjects[7] = newList.get(i)[7];
							
							if(Integer.parseInt(newList.get(i)[7].toString()) == 0) {
								narrObjects[8] = "-";
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 1) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 2) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 3) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 4) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10] + "<BR> Child4 :"+newList.get(i)[11];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 5) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10] + "<BR> Child4 :"+newList.get(i)[11] + "<BR> Child5 :"+newList.get(i)[12];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 6) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10] + "<BR> Child4 :"+newList.get(i)[11] + "<BR> Child5 :"+newList.get(i)[12] + "<BR> Child6 :"+newList.get(i)[13];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 7) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10] + "<BR> Child4 :"+newList.get(i)[11] + "<BR> Child5 :"+newList.get(i)[12] + "<BR> Child6 :"+newList.get(i)[13] + "<BR> Child7 :"+newList.get(i)[14];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 8) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10] + "<BR> Child4 :"+newList.get(i)[11] + "<BR> Child5 :"+newList.get(i)[12] + "<BR> Child6 :"+newList.get(i)[13] + "<BR> Child7 :"+newList.get(i)[14] + "<BR> Child8 :"+newList.get(i)[15];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 9) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10] + "<BR> Child4 :"+newList.get(i)[11] + "<BR> Child5 :"+newList.get(i)[12] + "<BR> Child6 :"+newList.get(i)[13] + "<BR> Child7 :"+newList.get(i)[14] + "<BR> Child8 :"+newList.get(i)[15] + "<BR> Child9 :"+newList.get(i)[16];
							}else if(Integer.parseInt(newList.get(i)[7].toString()) == 10) {
								narrObjects[8] = "Child1 : "+newList.get(i)[8] + "<BR> Child2 :"+newList.get(i)[9] + "<BR> Child3 :"+newList.get(i)[10] + "<BR> Child4 :"+newList.get(i)[11] + "<BR> Child5 :"+newList.get(i)[12] + "<BR> Child6 :"+newList.get(i)[13] + "<BR> Child7 :"+newList.get(i)[14] + "<BR> Child8 :"+newList.get(i)[15] + "<BR> Child9 :"+newList.get(i)[16] + "<BR> Child9 :"+newList.get(i)[17];
							}
							
							narrObjects[9] = newList.get(i)[18];
							narrObjects[10] = newList.get(i)[19];
							narrObjects[11] = newList.get(i)[20];
							narrObjects[12] = newList.get(i)[21];
							narrObjects[13] = newList.get(i)[22];
							finalList.add(narrObjects);	
						}
						model.addAttribute("dataTableList", finalList);
					    returnPage = "RaiseTripAdmin";
						
						break;
				case "upgradeplan":
					model.addAttribute("datatableHeader",new String[]{"Member Id","Plans","created Date"});
					query = "SELECT u.id,u.member.membercode,u.comment,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM upgradeMembership u ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					returnPage = "upgradeplan";
					break;
				case "paymentlogin":
					model.addAttribute("datatableHeader",new String[]{"Username","Password","Phone Number","Email","Created Date","isActive"});
					query = "SELECT id,username,password,phoneno,email,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p'),isActive FROM Paymentlogin ORDER BY createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					returnPage = "paymentlogin";
					break;
				case "adminResorts":
					model.addAttribute("datatableHeader",new String[]{"name","zone","Country","state","city","Active","createdAt"});
					query="SELECT r.id,r.resortName,r.zone.zoneName,r.country.name,r.state.statename,r.city.cityname,r.isActive,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM Resorts r ORDER BY r.createdAt DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					query = "SELECT id,zoneName FROM Zone ";
					model.addAttribute("zoneList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					query = "SELECT id,name FROM Country ORDER BY name ASC";
					model.addAttribute("countryList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					query = "SELECT id,statename FROM States ORDER BY statename ASC";
					model.addAttribute("statesList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					query = "SELECT id,cityname FROM city ORDER BY cityname ASC";
					model.addAttribute("cityList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					String resort_image_path = "uploaded/resorts/" + sessionBean.getCid() + "/";
					model.addAttribute("docUploadPath", "resources/" + resort_image_path);
					model.addAttribute("savePath", resort_image_path);
					model.addAttribute("imageIndex", "1");
					
				 
					
					returnPage = "AdminResorts";
					break;
				case "websiteOffers":
					model.addAttribute("datatableHeader",new String[]{"id","Name","Age","Email","Phone","City","Created Date"});
					query = "SELECT id,Name,Age,Email,Mobile,City,DATE_FORMAT(CreatedDate,'%d/%m/%Y %h:%i %p') FROM Websiteoffers ORDER BY CreatedDate DESC";
					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					returnPage = "websiteOffers";
					break;
				case "AdminAboutUs":
					model.addAttribute("datatableHeader",new String[]{"id","About-Top","About-Bottom","Created Date"});
//					query = "SELECT id,Name,Age,Email,Mobile,City,DATE_FORMAT(CreatedDate,'%d/%m/%Y %h:%i %p') FROM Websiteoffers ORDER BY CreatedDate DESC";
//					model.addAttribute("dataTableList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					returnPage = "AdminAboutUs";
					break;
				case "plcmembers":
					sql = "SELECT id,branch_name from sale_branch";
					model.addAttribute("branchList", clientuserService.getDynamicMultiplecolumnListSQL(sql,null));
					returnPage = "plcmembers";
					break;
				case "salemember":
					sql = "SELECT id,branch_name from sale_branch";
					model.addAttribute("branchList", clientuserService.getDynamicMultiplecolumnListSQL(sql,null));
					returnPage = "salemember";
					break;
				case "wcmember":
					sql = "SELECT id,branch_name from sale_branch";
					model.addAttribute("branchList", clientuserService.getDynamicMultiplecolumnListSQL(sql,null));
					returnPage = "wcmember";
					break;	
			}
			model.addAttribute("isInnerCall", isInnerCall);
			model.addAttribute("messageType", messageType);
			model.addAttribute("successMsg", !successMsg.equals("-1") ? environment.getRequiredProperty(successMsg) : "-1");
			return returnPage;
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/adminlogin?logout";
		}
	}
	@RequestMapping(value = { "/member/{sidePanelName}/{headingName}/{messageType}/{successMsg}/{member_id}" }, method = RequestMethod.GET)
	public String order(@PathVariable("sidePanelName")String sidePanelName,@PathVariable("headingName")String headingName,@PathVariable("messageType")String messageType,@PathVariable("successMsg")String successMsg,@PathVariable("member_id")Long member_id,ModelMap model,HttpServletRequest request) throws Exception {
		try{
			model.addAttribute("sidePanelName", sidePanelName);
			model.addAttribute("headingName",commonService.encryptionDecryption(headingName, false));
			String returnPage = "clientdashboard"; 
			String query = "";
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			Long s  = 0l;
			switch(sidePanelName){
				case "newmember":
					String sql = "SELECT id,title from tbl_m_products WHERE isactive = 1 order by tenure DESC";
					model.addAttribute("productList", clientuserService.getDynamicMultiplecolumnListSQL(sql,null));
					
					query = "SELECT city_id,cityname FROM tbl_city";
					model.addAttribute("cityList", clientuserService.getDynamicMultiplecolumnListSQL(query,null));
					
					query = "SELECT state_id,statename FROM tbl_state";
					model.addAttribute("stateList", clientuserService.getDynamicMultiplecolumnListSQL(query,null));
					
					sql = "SELECT id,branch_name from sale_branch";
					model.addAttribute("branchList", clientuserService.getDynamicMultiplecolumnListSQL(sql,null));
					
					sql = "SELECT id,name from offer_master";
					model.addAttribute("offerList", clientuserService.getDynamicMultiplecolumnListSQL(sql,null));
					
					sql = "SELECT id,emi_name,emi_per FROM emi_master ORDER BY emi_name ";
					model.addAttribute("emirateList", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					
					String imagePath22 = "uploaded/kycdoc/";
					String imagePath22New = "uploaded/callfile/";
					model.addAttribute("docUploadPath","resources/"+imagePath22);
					model.addAttribute("savePath",imagePath22);
					model.addAttribute("docUploadPathNew","resources/"+imagePath22New);
					model.addAttribute("savePathNew",imagePath22New);
					
					if(member_id != 0l){
						TblMember m = clientuserService.getMember(member_id);
						model.addAttribute("md", m);
						s = m.getMembercode();
						sql = "SELECT id,memberid,amount,DATE_FORMAT(emidate,'%d/%m/%Y') AS emidate,paymentStatus,paymentMode,chequeNo,others FROM tbl_emi_payments WHERE memberId = "+member_id;
						model.addAttribute("emiDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
						sql = "SELECT downpay_id,memberid,amount,DATE_FORMAT(emidate,'%d/%m/%Y') AS emidate,others,paymentMode,chequeNo,status FROM tbl_m_downpayment WHERE memberId = "+member_id;
						model.addAttribute("emiDetPay", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
						sql = "SELECT id,memberId,amount,DATE_FORMAT(aSFDate,'%d/%m/%Y') AS asfdate,amountrec,DATE_FORMAT(asFDaterec,'%d/%m/%Y') AS asfdaterec,status FROM tbl_m_asf WHERE memberId = "+member_id;
						model.addAttribute("asfDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
						sql = "SELECT id,memberId,courierType,cname,docatNo,DATE_FORMAT(courierdate,'%d/%m/%Y') AS cdate FROM tbl_courierdetails WHERE memberId = "+member_id;
						List<Object[]> courLis = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
						model.addAttribute("courDet", courLis.size() == 0 ? new Object[]{"0","","","",""} : courLis.get(0));
						String sss1 = "";
						if(m.getDocumentPath() != null && !m.getDocumentPath().equals("")){
							sss1= m.getDocumentPath().substring(m.getDocumentPath().lastIndexOf("/")+1, m.getDocumentPath().length());
						}
						model.addAttribute("filename", sss1);
					}
					
					model.addAttribute("encmember_id", commonService.encryptionDecryption(member_id+"", true));
					model.addAttribute("member_code", member_id == 0l ? getmembercode() : s);
					returnPage = "createmember";
				break;
				case "viewmember":
					String sss1 = "";
					TblMember m = clientuserService.getMember(member_id);
					model.addAttribute("md", m);
					sql = "SELECT payrec_id,receiptNo,membername,location,paymentTowards,paymentMode,amount,mobileNo,emailId,receivedBy,DATE_FORMAT(createdDate,'%d/%m/%Y') as crddt FROM tbl_t_paymentreceipt WHERE membercode = "+m.getMembercode()+" ORDER BY createdDate ";
					model.addAttribute("payrecDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					sql = "SELECT id,memberid,amount,DATE_FORMAT(emidate,'%d/%m/%Y') AS emidatee,paymentStatus,paymentMode,chequeNo FROM tbl_emi_payments WHERE memberId = "+member_id+" ORDER BY emidate IS NULL,emidate";
					model.addAttribute("emiDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					sql = "SELECT downpay_id,memberid,amount,DATE_FORMAT(emidate,'%d/%m/%Y') AS emidate,others,paymentMode,chequeNo,status FROM tbl_m_downpayment WHERE memberId = "+member_id;
					model.addAttribute("emiDetPay", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					sql = "SELECT id,memberId,amount,DATE_FORMAT(aSFDate,'%d/%m/%Y') AS asfdate,DATE_FORMAT(createdAt,'%d/%m/%Y'),amountrec,DATE_FORMAT(asFDaterec,'%d/%m/%Y'),status FROM tbl_m_asf WHERE memberId = "+member_id;
					model.addAttribute("asfDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					sql = "SELECT id,memberId,courierType,cname,docatNo,DATE_FORMAT(courierdate,'%d/%m/%Y') AS cdate,DATE_FORMAT(createdAt,'%d/%m/%Y') FROM tbl_courierdetails WHERE memberId = "+member_id;
					List<Object[]> courLis = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					model.addAttribute("courDet", courLis.size() == 0 ? new Object[]{"0","","","",""} : courLis.get(0));
					
					if(m.getDocumentPath() != null && !m.getDocumentPath().equals("")){
						sss1= m.getDocumentPath().substring(m.getDocumentPath().lastIndexOf("/")+1, m.getDocumentPath().length());
					}
					model.addAttribute("filename", sss1);
					
					sql = "SELECT upHolidayBooked,CONCAT(duration,' Days'),travelingPerson,appBooked,DATE_FORMAT(checkIn,'%d/%m/%Y'),DATE_FORMAT(checkOut,'%d/%m/%Y'),resType,actualPrice,DATE_FORMAT(createdAt,'%d/%m/%Y') FROM tbl_t_reservation WHERE isActive = 1 AND memberId = "+member_id;
					model.addAttribute("bookingDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					
					sql = "SELECT CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END,CASE WHEN SUM(r.duration) IS NULL THEN t.planDays ELSE t.planDays-SUM(r.duration) END ,t.membercode FROM tbl_t_reservation r INNER JOIN tbl_m_member t ON r.memberId = t.id WHERE resType = 'Regular' AND memberId = "+member_id;
					Object[] detsa = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
					model.addAttribute("member_code",detsa[2]);
					model.addAttribute("remNights",detsa[1]);
					model.addAttribute("utiNights",detsa[0]);
					
					Object[] bookdetss = getpaymentdetails(member_id);
					double pendingamaount = Float.valueOf(bookdetss[0].toString())-(Float.valueOf(bookdetss[2].toString())+Float.valueOf(bookdetss[3].toString()));
					model.addAttribute("pendingamaount",pendingamaount);
					model.addAttribute("alldet",bookdetss);
					sql = "SELECT interaction_id,interactionname FROM tbl_interaction";
					model.addAttribute("interactionList", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					
					query = "SELECT p.id,p.emp_cd,p.emp_name FROM Employee p";
					model.addAttribute("empList", clientuserService.getDynamicMultiplecolumnList(query,null,""));
					
					sql = "SELECT subtype_id,tat FROM tbl_interactionsubtype";
					model.addAttribute("tatList", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					
					returnPage = "MemberDetails";
					break;
				case "booking":
					sql = "SELECT upHolidayBooked,duration,travelingPerson,appBooked,DATE_FORMAT(checkIn,'%d/%m/%Y'),DATE_FORMAT(checkOut,'%d/%m/%Y'),resType,actualPrice,DATE_FORMAT(createdAt,'%d/%m/%Y'),reserv_id FROM tbl_t_reservation WHERE isActive = 1 AND memberId = "+member_id;
					model.addAttribute("bookingDet", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					sql = "SELECT CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END,CASE WHEN SUM(r.duration) IS NULL THEN t.planDays ELSE t.planDays-SUM(r.duration) END ,t.membercode FROM tbl_t_reservation r INNER JOIN tbl_m_member t ON r.memberId = t.id WHERE resType = 'Regular' AND memberId = "+member_id;
					Object[] dets = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
					
					model.addAttribute("member_code",dets[2]);
					model.addAttribute("remNights",dets[1]);
					model.addAttribute("utiNights",dets[0]);
					
					Object[] bookdets = getpaymentdetails(member_id);
					int boolingeligible = Integer.parseInt(environment.getProperty("bookingeligible"));
					double selling = (Float.valueOf(bookdets[0].toString())*boolingeligible)/100;
					double receivedamaount = Float.valueOf(bookdets[2].toString())+Float.valueOf(bookdets[3].toString());
					model.addAttribute("iseligible", selling <= receivedamaount ? "yes" : "no");
					returnPage = "memberbooking";
					break;
				case "callfile":
					sql = "SELECT callfile_id,fileName,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') AS credate,filinamepath FROM tbl_m_callfile WHERE isActive = 1 AND memberId = "+member_id;
					model.addAttribute("callFileList", clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					imagePath22 = "uploaded/callfile/";
					model.addAttribute("docUploadPath","resources/"+imagePath22);
					model.addAttribute("savePath",imagePath22);
					
					sql = "SELECT id,membercode FROM tbl_m_member WHERE id = "+member_id;
					model.addAttribute("memberDet",clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0));
					returnPage = "callfile";
					break;
				case "payment":	
					returnPage = "memberbooking";
					break;
case "plcstatuslist":
					
					query = "SELECT COUNT(DISTINCT c.id) FROM tbl_emi_payments c WHERE c.memberId="+member_id;
					List<Object[]> emiList = clientuserService.getDynamicMultiplecolumnListSQL(query,null);
					model.addAttribute("emiList", emiList);
					
					query = "SELECT COUNT(DISTINCT c.downpay_id) FROM tbl_m_downpayment c WHERE c.memberId="+member_id;
					List<Object[]> dpList = clientuserService.getDynamicMultiplecolumnListSQL(query,null);
					model.addAttribute("dpList", dpList);
					
					if(member_id != 0l){
						TblMember m1 = clientuserService.getMember(member_id);
						model.addAttribute("md", m1);
						s = m1.getMembercode();
						
						List<TblPlcStatus> m2 = clientuserService.getPlcStatus(member_id);
						if(m2.size() != 0)
							model.addAttribute("ps", m2.get(0));
						
					}
					
					model.addAttribute("encmember_id", commonService.encryptionDecryption(member_id+"", true));
					model.addAttribute("member_code", member_id == 0l ? getmembercode() : s);
					returnPage = "plcstatuslist";
				break;	
				case "salestatuslist":
					
					if(member_id != 0l){
						TblMember m1 = clientuserService.getMember(member_id);
						model.addAttribute("md", m1);
						s = m1.getMembercode();
						
						List<TblSalesStatus> m2 = clientuserService.getSalesStatus(member_id);
						if(m2.size() != 0)
							model.addAttribute("ps", m2.get(0));
						
					}
					
					model.addAttribute("encmember_id", commonService.encryptionDecryption(member_id+"", true));
					model.addAttribute("member_code", member_id == 0l ? getmembercode() : s);
					returnPage = "salestatuslist";
				break;
				case "wcstatuslist":
					Map<String, Object> var = new HashMap<String, Object>();
					query = "SELECT cat.id,cat.emp_name FROM Employee cat ";
					List<Object[]> mnLst = clientuserService.getDynamicMultiplecolumnList(query,var,"");
					model.addAttribute("empList", mnLst);
					
					if(member_id != 0l){
						TblMember m1 = clientuserService.getMember(member_id);
						model.addAttribute("md", m1);
						s = m1.getMembercode();
						
						List<TblWcStatus> m2 = clientuserService.getWcStatus(member_id);
						if(m2.size() != 0)
							model.addAttribute("ps", m2.get(0));
						
					}
					
					model.addAttribute("encmember_id", commonService.encryptionDecryption(member_id+"", true));
					model.addAttribute("member_code", member_id == 0l ? getmembercode() : s);
					returnPage = "wcstatuslist";
				break;
			}
			model.addAttribute("member_id", member_id);
			model.addAttribute("messageType", messageType);
			model.addAttribute("clientCode", sessionBean.getCcode());
			model.addAttribute("successMsg", !successMsg.equals("-1") ? environment.getRequiredProperty(successMsg) : "-1");
			return returnPage;
		}catch (Exception ex){
			ex.printStackTrace();
			return "redirect:/adminlogin?logout";
		}
		
	}
	public Object[] getpaymentdetails(long memberId){
		String sql = "SELECT MIN(m.sellingprice),MIN(m.dpAmount),CASE WHEN SUM(emi.amount) IS NULL THEN 0 ELSE ROUND(SUM(emi.amount),2) END AS emiaount, "
				+ "(SELECT SUM(d.amount) FROM tbl_m_downpayment d WHERE d.memberId = m.id AND d.status = 'RZ' GROUP BY d.memberId) AS dpAmount FROM tbl_m_member m LEFT JOIN tbl_emi_payments emi ON m.id = emi.memberId AND emi.paymentStatus = 'RZ' "
				+ " WHERE m.id = "+memberId+" GROUP BY emi.memberId";
		Object[] bookdets = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
		double princReali = (Float.valueOf(bookdets[2].toString())+Float.valueOf(bookdets[3].toString()))*100/Float.valueOf(bookdets[0].toString());
		Object[] bookdetsPri = new Object[]{bookdets[0],bookdets[1],bookdets[2],bookdets[3],princReali};
		bookdets = null;
		return bookdetsPri;
	}
	@RequestMapping(value="/downloadDocument",method = RequestMethod.GET)
	public void downloadDocument(HttpServletRequest re,HttpServletResponse res) throws NumberFormatException, Exception {  
		String rootPath = re.getSession().getServletContext().getRealPath("/");
		if(re.getParameter("doctype").equals("KYC")){
			TblMember m = clientuserService.getMember(Long.valueOf(re.getParameter("mem_id")));
			rootPath = rootPath + "resources/"+m.getDocumentPath();
		}else if(re.getParameter("doctype").equals("CALL")){
			TblCallfile c = clientuserService.getCallFile(Long.valueOf(re.getParameter("mem_id")));
			rootPath = rootPath + "resources/"+c.getFilinamepath();
		}
		commonService.downloadDocument(re,res,rootPath);
	}
	public synchronized Long getmembercode(){
		String sql = "SELECT CASE WHEN MAX(membercode) IS NULL THEN 1 ELSE MAX(membercode)+1 END AS membercode,'' FROM tbl_m_member";
		return Long.valueOf(clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0)[0].toString());
	}
	public synchronized String getreceiptno(String charmatch){
		String sql = "SELECT receiptNo,'' FROM tbl_t_paymentreceipt WHERE receiptNo LIKE '"+charmatch+"-%' ORDER BY payrec_id LIMIT 1";
		List<Object[]> ojlst = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
		String receiptno = "";
		if(ojlst.size() == 0){
			receiptno = charmatch+"-"+1;
		}else{
			receiptno = charmatch+"-"+(Integer.parseInt(ojlst.get(0)[0].toString().split("-")[1])+1);
		}
		return receiptno;
	}
	@RequestMapping(value = "/savemember", method = RequestMethod.POST)
	public @ResponseBody String savemember(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			Date dd = commonService.getServerDateAndTime();
			Long memberid = Long.valueOf(commonService.encryptionDecryption(re.getParameter("encmemberId"), false));
			TblMember  cat = new TblMember();
			TblCourier tblco = new TblCourier();
			TblUser tbluser = null;
			TblProducts pp = clientuserService.getProductdetials(Long.valueOf(re.getParameter("productId")));
			if(memberid != 0){
				cat = clientuserService.getMember(memberid);
				tblco = clientuserService.getCourier(memberid);
				
			}else{
				
				Long code = getmembercode();
				
				tbluser = new TblUser();
				tbluser.setRoleID(2);
				tbluser.setFirstName(re.getParameter("memberName"));
				tbluser.setMobileNo(re.getParameter("mobileNo"));
				tbluser.setEmailID(re.getParameter("emailId"));
				tbluser.setPassword(commonService.randomAlphaNumeric(8));
				tbluser.setIsActive(0);
				tbluser.setCreatedAt(dd);
				tbluser.setUpdatedAt(dd);
				tbluser.setUsername(code+"");
				tbluser.setIsFirstLogin(1);
				if((environment.getProperty("verificationproduct")).equalsIgnoreCase(re.getParameter("prdname"))){
					tbluser.setIsAgree(0);
				}else{
					tbluser.setIsAgree(1);
				}
				cat.setMembercode(code);
				cat.setCreatedAt(dd);
				cat.setStatus(0);
				cat.setIsActive(1);
				cat.setWcstatus("");
			}
			System.out.println((environment.getProperty("verificationproduct")).equalsIgnoreCase(re.getParameter("prdname")));
			System.out.println(environment.getProperty("verificationproduct")+"---------------------------"+re.getParameter("prdname"));
			cat.setmAFSignedDate(re.getParameter("mAFSignedDate") != null && StringUtils.hasLength(re.getParameter("mAFSignedDate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("mAFSignedDate")) : null);
			cat.setPassword(re.getParameter("password"));
			cat.setPreMemberName(re.getParameter("preMemberName"));
			cat.setMemberName(re.getParameter("memberName"));
			cat.setMemberType(re.getParameter("memberType"));
			cat.setStatusOfPLC(re.getParameter("statusOfPLC"));
			cat.setMobileNo(re.getParameter("mobileNo"));
			cat.setAltMobileNo(re.getParameter("altMobileNo"));
			cat.setEmailId(re.getParameter("emailId"));
			cat.setAddress(re.getParameter("address"));
			cat.setResCity(re.getParameter("city_id"));
			cat.setResState(re.getParameter("state_id"));
			cat.setPinCode(re.getParameter("pinCode"));
			cat.setLocationname(re.getParameter("locationname"));
			cat.setCoAppDetails(re.getParameter("coAppDetails"));
			cat.setSalesChannel(re.getParameter("salesChannel"));
			cat.setSalesBranch(re.getParameter("salesBranch"));
			cat.setEnrollCamp(re.getParameter("enrollCamp"));
			cat.setCampaigncode(re.getParameter("campaigncode"));
			cat.setCampaignname(re.getParameter("campaignname"));
			cat.setChequeNo(re.getParameter("chequeNo"));
			cat.setCancellationReason(re.getParameter("cancellationReason"));
			cat.setCancellationPostedOn(re.getParameter("cancellationPostedOn") != null && StringUtils.hasLength(re.getParameter("cancellationPostedOn")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("cancellationPostedOn")) : null);
			cat.setStartDate(re.getParameter("startDate") != null && StringUtils.hasLength(re.getParameter("startDate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("startDate")) : null);
			cat.setEndDate(re.getParameter("endDate") != null && StringUtils.hasLength(re.getParameter("endDate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("endDate")) : null);
			cat.setOrganizationUnit(re.getParameter("organizationUnit"));
			cat.setTmecode(re.getParameter("tmecode"));
			cat.setTmEName(re.getParameter("tmEName"));
			cat.setTmecodesup(re.getParameter("tmecodesup"));
			cat.setTmENamesup(re.getParameter("tmENamesup"));
			cat.setAsF(Integer.parseInt(re.getParameter("asF")));
			cat.setSalesAgentId(re.getParameter("salesAgentId"));
			cat.setSalesAgentName(re.getParameter("salesAgentName"));
			cat.setReportingmanagercode(re.getParameter("reportingmanagercode"));
			cat.setReportingManager(re.getParameter("reportingManager"));
			cat.setReceiptNo(re.getParameter("receiptNo"));
			cat.setSalesstatus(re.getParameter("salesstatus"));
			cat.setOffer_id(Long.valueOf(re.getParameter("offer_id")));
			if(Long.valueOf(re.getParameter("offer_id")) != 0){
				cat.setOffername(re.getParameter("offername"));
			}
			System.out.println(re.getParameter("doB"));
			cat.setDoB(re.getParameter("doB") != null && StringUtils.hasLength(re.getParameter("doB")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("doB")) : null);
			cat.setCoAppDOB(re.getParameter("coAppDOB") != null && StringUtils.hasLength(re.getParameter("coAppDOB")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("coAppDOB")) : null);
			cat.setChildDOB(re.getParameter("childDOB") != null && StringUtils.hasLength(re.getParameter("childDOB")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("childDOB")) : null);
			cat.setAnniversaryDate(re.getParameter("anniversaryDate") != null && StringUtils.hasLength(re.getParameter("anniversaryDate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("anniversaryDate")) : null);
			cat.setRemarks(re.getParameter("remarks"));
			cat.setProduct(new TblProducts(Long.valueOf(re.getParameter("productId"))));
			cat.setProductSubType(re.getParameter("productSubType"));
			cat.setPrice(Float.valueOf(re.getParameter("price")));
			cat.setSellingprice(Float.valueOf(re.getParameter("sellingprice")));
			cat.setPlanDays(Integer.valueOf(re.getParameter("planDays")));
			cat.setBasePrice(Float.valueOf(re.getParameter("basePrice")));
			cat.setPaymentPlan(re.getParameter("paymentPlan"));
			cat.setDpDiscount(Float.valueOf(re.getParameter("dpDiscount")));
			cat.setDpAmount(Float.valueOf(re.getParameter("dpAmount")));
			cat.setEmIAmount(Float.valueOf(re.getParameter("emIAmount")));
			cat.setDpPaymentMode(re.getParameter("dpPaymentMode"));
			cat.setPaymentMode(re.getParameter("paymentMode"));
			cat.setReferby(re.getParameter("referby"));
			cat.setAadharcard(re.getParameter("aadharcard"));
			cat.setPancard(re.getParameter("pancard"));
			cat.setKyC(re.getParameter("kyC"));
			cat.setKyCNo(re.getParameter("kyCNo"));
			cat.setTenure(re.getParameter("tenure"));
			cat.setProductName(pp.getTitle());
			cat.setUpdatedAt(dd);
			cat.setDocumentPath(re.getParameter("documentPath"));
			cat.setPremiumOption(re.getParameter("premiumOption"));
			
			List<TblAsf> plist = new ArrayList<>();
			List<TblEmi> plistser = new ArrayList<>();
			List<TblPaymentMode> plistserpay = new ArrayList<>();
			String[] cids = re.getParameter("opids").split(",");
			String delasf = "", delemi = "",delpay = "";
			for (int i = 0; i < cids.length; i++) {
				if(re.getParameter("asfamount_"+cids[i]) != null){
					if((re.getParameter("isnew_"+cids[i]).split("_")[0]).equals("del")){
						delasf = delasf.equals("") ? re.getParameter("isnew_"+cids[i]).split("_")[1] : delasf + "," + re.getParameter("isnew_"+cids[i]).split("_")[1];
					}else{
						TblAsf p = new TblAsf();
						if((re.getParameter("isnew_"+cids[i]).split("_")[0]).equals("old")){
							p.setId(Long.valueOf(re.getParameter("isnew_"+cids[i]).split("_")[1]));
						}
						p.setAmount(Float.valueOf(re.getParameter("asfamount_"+cids[i])));
						p.setaSFDate(re.getParameter("asfdate_"+cids[i]) != null && StringUtils.hasLength(re.getParameter("asfdate_"+cids[i])) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("asfdate_"+cids[i])) : null);
						p.setCreatedAt(dd);
						p.setAmountrec(re.getParameter("asfamountrec_"+cids[i]) != null && StringUtils.hasLength(re.getParameter("asfamountrec_"+cids[i])) ? Float.valueOf(re.getParameter("asfamountrec_"+cids[i])) : 0.0f);
						p.setAsFDaterec(re.getParameter("asfdaterec_"+cids[i]) != null && StringUtils.hasLength(re.getParameter("asfdaterec_"+cids[i])) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("asfdaterec_"+cids[i])) : null);
						p.setStatus(re.getParameter("asfstatus_"+cids[i]));
						plist.add(p);
						p = null;
					}
					
				}
			}
			
			if(!re.getParameter("selemis").equals("")){
				String[] cidser = re.getParameter("selemis").split(",");
				for (int i = 0; i < cidser.length; i++) {
					if(re.getParameter("eamount_"+cidser[i]) != null){
						if((re.getParameter("isnewemi_"+cidser[i]).split("_")[0]).equals("del")){
							delemi = delemi.equals("") ? re.getParameter("isnewemi_"+cidser[i]).split("_")[1] : delemi + "," + re.getParameter("isnewemi_"+cidser[i]).split("_")[1];
						}else{
							TblEmi p = new TblEmi();
							if((re.getParameter("isnewemi_"+cidser[i]).split("_")[0]).equals("old")){
								p.setId(Long.valueOf(re.getParameter("isnewemi_"+cidser[i]).split("_")[1]));
							}
							p.setAmount(Float.valueOf(re.getParameter("eamount_"+cidser[i])));
							p.setPaymentMode(re.getParameter("epaymode_"+cidser[i]));
							p.setChequeNo(re.getParameter("epayno_"+cidser[i]));
							p.setEmidate(re.getParameter("edate_"+cidser[i]) != null && StringUtils.hasLength(re.getParameter("edate_"+cidser[i])) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("edate_"+cidser[i])) : null);
							p.setPaymentStatus(re.getParameter("eispay_"+cidser[i]));
							p.setOthers(re.getParameter("eremarks_"+cidser[i]));
							p.setCreatedAt(dd);
							p.setUpdatedAt(dd);
							plistser.add(p);
							p = null;
						}
						
					}
					
				}
			}
			
			if(!re.getParameter("selemispay").equals("")){
				String[] cidser = re.getParameter("selemispay").split(",");
				for (int i = 0; i < cidser.length; i++) {
					if(re.getParameter("eamountpay_"+cidser[i]) != null){
						if((re.getParameter("isnewpay_"+cidser[i]).split("_")[0]).equals("del")){
							delpay = delpay.equals("") ? re.getParameter("isnewpay_"+cidser[i]).split("_")[1] : delpay + "," + re.getParameter("isnewpay_"+cidser[i]).split("_")[1];
						}else{
							TblPaymentMode p = new TblPaymentMode();
							if((re.getParameter("isnewpay_"+cidser[i]).split("_")[0]).equals("old")){
								p.setId(Long.valueOf(re.getParameter("isnewpay_"+cidser[i]).split("_")[1]));
							}
							p.setAmount(Float.valueOf(re.getParameter("eamountpay_"+cidser[i])));
							p.setPaymentMode(re.getParameter("epaymodepay_"+cidser[i]));
							p.setChequeNo(re.getParameter("epaynopay_"+cidser[i]));
							p.setOthers(re.getParameter("eremarkspay_"+cidser[i]));
							p.setStatus(re.getParameter("eispaypay_"+cidser[i]));
							p.setEmidate(re.getParameter("edatepay_"+cidser[i]) != null && StringUtils.hasLength(re.getParameter("edatepay_"+cidser[i])) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("edatepay_"+cidser[i])) : null);
							p.setCreatedAt(dd);
							plistserpay.add(p);
							p = null;
						}
						
					}
					
				}
			}
			
			tblco.setCourierdate(re.getParameter("courierdate") != null && StringUtils.hasLength(re.getParameter("courierdate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("courierdate")) : null);
			tblco.setCourierType(re.getParameter("courierType"));
			tblco.setCreatedAt(dd);
			tblco.setDocatNo(re.getParameter("docatNo"));
			tblco.setCname(re.getParameter("cname"));
			tblco.setUpdatedAt(dd);
			
			isSuccess = clientuserService.saveOrUpdateMember(cat,plist,plistser,tblco,tbluser,plistserpay,delasf,delemi,delpay);
			return isSuccess ? "y~"+environment.getRequiredProperty(re.getParameter("memberid") != null && Integer.valueOf(re.getParameter("memberid")) != 0 ? "redirect_success_common" : "redirect_success_common_update")+"~"+cat.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
		
	}
	@RequestMapping(value="/getemployeedetails",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getemployeedetails(HttpServletRequest re) throws Exception {
		String sql = "SELECT id,emp_name FROM employee WHERE emp_cd = '"+re.getParameter("codeval")+"'";
		return clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
	}
	@RequestMapping(value="/getcampdetails",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getcampdetails(HttpServletRequest re) throws Exception {
		String sql = "";
		if(re.getParameter("ismember").equals("0")){
			sql = "SELECT id,name FROM campaign_master WHERE campaign_id = '"+re.getParameter("campaigncode")+"'";
		}else{
			sql = "SELECT id,memberName FROM tbl_m_member WHERE membercode = "+re.getParameter("campaigncode");
		}
		return clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
	}
	@RequestMapping(value="/getPartydetails",method = RequestMethod.POST)
	public @ResponseBody Customermaster getPartydetails(HttpServletRequest request) throws Exception {
		return clientuserService.getCustomerDetails(Long.valueOf(request.getParameter("mainPartyId")));
	}
	@RequestMapping(value="/getproductdetails",method = RequestMethod.POST)
	public @ResponseBody TblProducts getproductdetails(HttpServletRequest request) throws Exception {
		return clientuserService.getProductdetials(Long.valueOf(request.getParameter("productId")));
	}
	
	@RequestMapping(value="/updateImagepath",method = RequestMethod.POST)
	public @ResponseBody String updateImagepath(HttpServletRequest request) throws Exception {
		return clientuserService.getUpdateImagePath(request);
	}
	
	
	@RequestMapping(value="/changememberstatus",method = RequestMethod.POST)
	public @ResponseBody String changememberstatus(HttpServletRequest re) throws Exception {
		return clientuserService.changememberstatus(re);
	}
	@RequestMapping(value="/changeactiveinactive",method = RequestMethod.POST)
	public @ResponseBody String changeactiveinactive(HttpServletRequest re) throws Exception {
		return clientuserService.changeactiveinactive(re);
	}
	/*@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public @ResponseBody String addMenu(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			Product p = new Product();
			if(re.getParameter("productId") != null && Integer.valueOf(re.getParameter("productId")) != 0){
				p = clientuserService.getProductdetials(Long.valueOf(re.getParameter("productId")));
				p.setImage(re.getParameter("imagePath"));
			}
			p.setName(re.getParameter("name") != null ? re.getParameter("name") : "");
			p.setPrice(re.getParameter("price") != null ? Float.valueOf(re.getParameter("price")) : 0.0f);
			
			p.setUser(new ClientUser(sessionBean.getCid()));
			isSuccess = clientuserService.saveOrUpdateProduct(p,re.getParameter("productId") != null ? Integer.valueOf(re.getParameter("productId")) : 0);
			return isSuccess ? "y~"+environment.getRequiredProperty(re.getParameter("productId") != null && Integer.valueOf(re.getParameter("productId")) != 0 ? "redirect_success_common" : "redirect_success_common_update")+"~"+p.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
	}*/
	
	@RequestMapping(value = "/addTblProduct", method = RequestMethod.POST)
	public @ResponseBody String addTblProduct(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			TblProducts p = new TblProducts();
			if(re.getParameter("prd_id") != null && Integer.valueOf(re.getParameter("prd_id")) != 0){
				p = clientuserService.getTblProductdetials(Long.valueOf(re.getParameter("prd_id")));
			}
			p.setTitle(re.getParameter("title") != null ? re.getParameter("title") : "");
			p.setTenure(re.getParameter("tenure") != null ? re.getParameter("tenure") : "");
			p.setPlanDays(Integer.parseInt(re.getParameter("planDays")));
			p.setDescription(re.getParameter("description") != null ? re.getParameter("description") : "");
			p.setWhitePrice(Float.valueOf(re.getParameter("whitePrice")));
			p.setPurplePrice(Float.valueOf(re.getParameter("purplePrice")));
			p.setWhiteBasePrice(Float.valueOf(re.getParameter("whiteBasePrice")));
			p.setPurpleBasePrice(Float.valueOf(re.getParameter("purpleBasePrice")));
			
			isSuccess = clientuserService.saveOrUpdateTblProduct(p,re.getParameter("prd_id") != null ? Integer.valueOf(re.getParameter("prd_id")) : 0);
			return isSuccess ? "y~"+environment.getRequiredProperty(re.getParameter("prd_id") != null && Integer.valueOf(re.getParameter("prd_id")) != 0 ? "redirect_success_common" : "redirect_success_common_update")+"~"+p.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
	}
	@RequestMapping(value = "/savecustomerpay", method = RequestMethod.POST)
	public @ResponseBody String savecustomerpay(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		try{
			CustomerPay p = new CustomerPay();
			p.setCustname(re.getParameter("custname"));
			p.setMobileno(re.getParameter("mobileno"));
			p.setEmailid(re.getParameter("emailid"));
			p.setAmount(re.getParameter("amount") != null && !re.getParameter("amount").equals("") ? Float.valueOf(re.getParameter("amount")) : 0.0f);
			p.setSalesexname(re.getParameter("salesexname"));
			p.setCreatedat(commonService.getServerDateAndTime());
			p.setIspaymentdone(0);
			
			isSuccess = clientuserService.saveOrUpdateCustomerpay(p,0);
			return isSuccess ? "y~"+environment.getRequiredProperty("redirect_success_common")+"~"+p.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
	}
	@RequestMapping(value="/getcustpaydetails",method = RequestMethod.POST)
	public @ResponseBody Object[] getcustpaydetails(HttpServletRequest re) throws Exception {
		String query = "SELECT id,razor_payment_id,custname,payemail,contact,amount,method,salesexname,entity,currency,card_id,bank,status,DATE_FORMAT(createdAt,'%d/%m/%Y %h:%i %p') FROM CustomerPay WHERE id = "+re.getParameter("custpay");
		return clientuserService.getDynamicMultiplecolumnList(query, null,"" ).get(0);
	}
	@RequestMapping(value = "/savepayreceipt", method = RequestMethod.POST)
	public @ResponseBody String savepayreceipt(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		try{
			TblPaymentReceipt p = new TblPaymentReceipt();
			p.setMemberCode(re.getParameter("memberCode"));
			p.setMemberName(re.getParameter("memberName"));
			p.setPaymentType(re.getParameter("paymentType").split("~")[1]);
			p.setLocation(re.getParameter("location"));
			p.setPaymentTowards(re.getParameter("paymentTowards"));
			p.setPaymentMode(re.getParameter("paymentMode"));
			p.setCardNumber(re.getParameter("cardNumber"));
			p.setMobileNo(re.getParameter("mobileNo"));
			p.setEmailId(re.getParameter("emailId"));
			p.setReceivedBy(re.getParameter("receivedBy"));
			p.setReceiptNo(getreceiptno(re.getParameter("paymentType").split("~")[0]));
			p.setAmount(re.getParameter("amount") != null && !re.getParameter("amount").equals("") ? Float.valueOf(re.getParameter("amount")) : 0.0f);
			p.setIsActive(1);
			Date d = commonService.getServerDateAndTime();
			p.setCreatedDate(d);
			p.setUpdatedDate(d);
			
			isSuccess = clientuserService.saveOrUpdatePaymentreceipt(p,0);
			return isSuccess ? "y~"+environment.getRequiredProperty("redirect_success_common")+"~"+p.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
	}
	
	@RequestMapping(value = "/saveverifydetails", method = RequestMethod.POST)
	public @ResponseBody String saveverifydetails(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		try{
			TblAgreement p = new TblAgreement();
			p.setMember(new TblMember(Long.valueOf(re.getParameter("mid"))));
			p.setName(re.getParameter("name"));
			p.setEmail(re.getParameter("email"));
			p.setPhone(re.getParameter("phone"));
			p.setAddress(re.getParameter("address"));
			p.setDob(commonService.changeDateFormate("yyyy-MM-dd","yyyy-MM-dd HH:mm:ss",re.getParameter("dob")));
			p.setIsactive(1);
			
			Date d = commonService.getServerDateAndTime();
			p.setCreatedDate(d);
			p.setUpdatedDate(d);
			
			isSuccess = clientuserService.saveOrUpdateVerifydetails(p,0);
			return isSuccess ? "y~"+environment.getRequiredProperty("redirect_success_common")+"~"+p.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
	}
	@RequestMapping(value = "/savememberbooking", method = RequestMethod.POST)
	public @ResponseBody TblReservation savememberbooking(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		try{
			String sql = "SELECT CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END,CASE WHEN SUM(r.duration) IS NULL THEN t.planDays ELSE t.planDays-SUM(r.duration) END ,t.membercode FROM tbl_t_reservation r INNER JOIN tbl_m_member t ON r.memberId = t.id WHERE resType = 'Regular' AND memberId = "+re.getParameter("memberId");
			Object[] dets = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
			TblReservation p = new TblReservation();
			int duration = Integer.parseInt(dets[1].toString());
			if(Integer.parseInt(re.getParameter("reservationId")) != 0){
				p = clientuserService.getReservationDetailsByReservationId(Long.valueOf(re.getParameter("reservationId")));
				duration = duration + p.getDuration();
			}
			if(duration == 0){
				p.setResType("NO_DAYS_AVAILABLE");
			}else if(duration < Integer.parseInt(re.getParameter("duration"))){
				p.setResType("LESS_DAYS_AVAILABLE");
				p.setDuration(duration);
			}else{
				p.setMembercode(re.getParameter("membercode"));
				p.setUpHolidayBooked(re.getParameter("upHolidayBooked"));
				p.setAppBooked(Integer.parseInt(re.getParameter("appBooked")));
				p.setTravelingPerson(Integer.parseInt(re.getParameter("travelingPerson")));
				p.setDuration(Integer.parseInt(re.getParameter("duration")));
				p.setResType(re.getParameter("resType"));
				p.setActualPrice(re.getParameter("actualPrice") != null && !re.getParameter("actualPrice").equals("") ? Float.valueOf(re.getParameter("actualPrice")) : 0.0f);
				p.setCreatedAt(commonService.getServerDateAndTime());
				p.setUpdatedAt(commonService.getServerDateAndTime());
				p.setCheckIn(commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("checkIn")));
				p.setCheckOut(commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("checkOut")));
				p.setMember(new TblMember(Long.valueOf(re.getParameter("memberId"))));
				p.setIsActive(1);
				isSuccess = clientuserService.saveOrUpdateMemberBooking(p,Integer.parseInt(re.getParameter("reservationId")));
			}
			
			return p;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	@RequestMapping(value="/updatecustomerdocument",method = RequestMethod.POST)
	public @ResponseBody String updatecustomerdocument(HttpServletRequest request) throws Exception {
		return clientuserService.updateCustomerdocumentdetails(request);
	}
	@RequestMapping(value="/deletebooking",method = RequestMethod.POST)
	public @ResponseBody String deletebooking(HttpServletRequest request) throws Exception {
		return clientuserService.deletebooking(request);
	}
	@RequestMapping(value="/updatecallfile",method = RequestMethod.POST)
	public @ResponseBody String updatecallfile(HttpServletRequest request) throws Exception {
		return clientuserService.updatecallfile(request);
	}
	@RequestMapping(value="/deletecallfile",method = RequestMethod.POST)
	public @ResponseBody String deletecallfile(HttpServletRequest request) throws Exception {
		return clientuserService.deletecallfile(request);
	}
	@RequestMapping(value="/getTblproductdetails",method = RequestMethod.POST)
	public @ResponseBody TblProducts getTblproductdetails(HttpServletRequest request) throws Exception {
		return clientuserService.getTblProductdetials(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value="/deleteTblProduct",method = RequestMethod.GET)
	public @ResponseBody String deleteTblProduct(HttpServletRequest re){
		return clientuserService.deleteTblProduct(re);
	}
	
	@RequestMapping(value="/setPrdType",method = RequestMethod.GET)
	public @ResponseBody String updatePrdType(HttpServletRequest request) throws Exception {
		return clientuserService.updatePrdType(request);
	}
	
	@RequestMapping(value = "/addSaleBranch", method = RequestMethod.POST)
	public @ResponseBody String addSaleBranch(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			SaleBranch p = new SaleBranch();
			if(re.getParameter("branch_id") != null && Integer.valueOf(re.getParameter("branch_id")) != 0){
				p = clientuserService.getSaleBranchdetials(Long.valueOf(re.getParameter("branch_id")));
			}
			p.setBranch_name(re.getParameter("branch_name") != null ? re.getParameter("branch_name") : "");
			p.setAddress(re.getParameter("address") != null ? re.getParameter("address") : "");
			
			isSuccess = clientuserService.saveOrUpdateSaleBranch(p,re.getParameter("branch_id") != null ? Integer.valueOf(re.getParameter("branch_id")) : 0);
			return isSuccess ? "y~"+environment.getRequiredProperty(re.getParameter("branch_id") != null && Integer.valueOf(re.getParameter("branch_id")) != 0 ? "redirect_success_common" : "redirect_success_common_update")+"~"+p.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
	}
	
	@RequestMapping(value="/getSaleBranch",method = RequestMethod.POST)
	public @ResponseBody SaleBranch getSaleBranch(HttpServletRequest request) throws Exception {
		return clientuserService.getSaleBranchdetials(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value="/deleteSaleBranch",method = RequestMethod.GET)
	public @ResponseBody String deleteSaleBranch(HttpServletRequest re){
		return clientuserService.deleteSaleBranch(re);
	}
	
	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public @ResponseBody String addEmployee(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			Employee p = new Employee();
			if(re.getParameter("emp_id") != null && Integer.valueOf(re.getParameter("emp_id")) != 0){
				p = clientuserService.getEmployeedetials(Long.valueOf(re.getParameter("emp_id")));
				p.setImagepath(re.getParameter("itemimage"));
			}
			p.setEmp_cd(re.getParameter("emp_cd") != null ? re.getParameter("emp_cd") : "");
			p.setEmp_name(re.getParameter("emp_name") != null ? re.getParameter("emp_name") : "");
			p.setAddress(re.getParameter("address") != null ? re.getParameter("address") : "");
			p.setEmail_id(re.getParameter("email_id") != null ? re.getParameter("email_id") : "");
			p.setMob_no(re.getParameter("mob_no") != null ? re.getParameter("mob_no") : "");
			p.setSalary(re.getParameter("salary") != null ? Integer.parseInt(re.getParameter("salary")) : 0);
			p.setBranch(new SaleBranch(Long.valueOf(re.getParameter("branch_id"))));
			
			isSuccess = clientuserService.saveOrUpdateEmployee(p,re.getParameter("emp_id") != null ? Integer.valueOf(re.getParameter("emp_id")) : 0);
			return isSuccess ? "y~"+environment.getRequiredProperty(re.getParameter("emp_id") != null && Integer.valueOf(re.getParameter("emp_id")) != 0 ? "redirect_success_common" : "redirect_success_common_update")+"~"+p.getId() : "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
	}
	
	@RequestMapping(value="/getEmployee",method = RequestMethod.POST)
	public @ResponseBody Employee getEmployee(HttpServletRequest request) throws Exception {
		return clientuserService.getEmployeedetials(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value="/deleteEmployee",method = RequestMethod.GET)
	public @ResponseBody String deleteEmployee(HttpServletRequest re){
		return clientuserService.deleteEmployee(re);
	}
	
	@RequestMapping(value = "/addBanner", method = RequestMethod.POST)
	public @ResponseBody String addBanner(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			Banner p = new Banner();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getBannerDetials(Long.valueOf(re.getParameter("bnr_id")));
				//p.setDestination_image_path(re.getParameter("destination_image_path"));
			}

//			 p.setDestination_image_path(re.getParameter("destination_image_path") != null
//			 ? re.getParameter("destination_image_path") : "");
			p.setTitle(re.getParameter("title") != null ? re.getParameter("title") : "");
			p.setLocation(re.getParameter("location") != null ? re.getParameter("location") : "");
			p.setDescription(re.getParameter("description") != null ? re.getParameter("description") : "");

			isSuccess = clientuserService.saveOrUpdateBanner(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}

	@RequestMapping(value = "/getBanner", method = RequestMethod.POST)
	public @ResponseBody Banner getBanner(HttpServletRequest request) throws Exception {
		return clientuserService.getBannerDetials(Long.valueOf(request.getParameter("mainPrdId")));
	}

	@RequestMapping(value = "/deleteBanner", method = RequestMethod.GET)
	public @ResponseBody String deleteBanner(HttpServletRequest re) {
		return clientuserService.deleteBanner(re);
	}
	
	@RequestMapping(value = "/addTestimonial", method = RequestMethod.POST)
	public @ResponseBody String addTestimonial(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			Testimonial p = new Testimonial();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getTestimonialDetials(Long.valueOf(re.getParameter("bnr_id")));
				p.setImage_path(re.getParameter("image_path"));
			}

			p.setImage_path(re.getParameter("image_path") != null ? re.getParameter("image_path") : "");
			p.setName(re.getParameter("name") != null ? re.getParameter("name") : "");
			p.setLocation(re.getParameter("location") != null ? re.getParameter("location") : "");
			p.setDescription(re.getParameter("description") != null ? re.getParameter("description") : "");
			p.setIsActive(re.getParameter("isActive") != null ? re.getParameter("isActive") : "");

			isSuccess = clientuserService.saveOrUpdateTestimonial(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}
	
	@RequestMapping(value = "/getTestimonial", method = RequestMethod.POST)
	public @ResponseBody Testimonial getTestimonial(HttpServletRequest request) throws Exception {
		return clientuserService.getTestimonialDetials(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value = "/deleteTestimonial", method = RequestMethod.GET)
	public @ResponseBody String deleteTestimonial(HttpServletRequest re) {
		return clientuserService.deleteTestimonial(re);
	}
	
	@RequestMapping(value="/setTestiType",method = RequestMethod.GET)
	public @ResponseBody String updateTestiType(HttpServletRequest request) throws Exception {
		return clientuserService.updateTestiType(request);
	}
	
	@RequestMapping(value = "/getvideodetails", method = RequestMethod.POST)
	public @ResponseBody VideoSlide getvideodetails(HttpServletRequest request) throws Exception {
		return clientuserService.getvideodetails(Long.valueOf(request.getParameter("mainPrdTr")));
	}
	
	public @ResponseBody String deleteVideoSlide(HttpServletRequest re) {
		return clientuserService.deleteVideoSlide(re);
	}
	
	@RequestMapping(value="/setvideoActive",method = RequestMethod.GET)
	public @ResponseBody String updateVideoActive(HttpServletRequest request) throws Exception {
		return clientuserService.updateVideoActive(request);
	}
	
	@RequestMapping(value="/changepassword",method = RequestMethod.POST)
	public @ResponseBody String changepassword(HttpServletRequest request) throws Exception {
		String s = clientuserService.changepassword(request); 
		if(Integer.parseInt(request.getParameter("isreset")) == 1){
			request.getSession().setAttribute(CommonKeywords.SESSIONOBJECT.toString(), null);
		}
		return s; 
	}
	
	
	
	@RequestMapping(value = "/addVideoSlideInfo", method = RequestMethod.POST)
	public @ResponseBody String addVideoSlideInfo(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			VideoSlide p = new VideoSlide();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getvideodetails(Long.valueOf(re.getParameter("bnr_id")));
			
			}

			
			p.setTitle(re.getParameter("title") != null ? re.getParameter("title") : "");
			p.setDescription(re.getParameter("description") != null ? re.getParameter("description") : "");
			p.setVideolink(re.getParameter("videolink") != null ? re.getParameter("videolink") : "");
			
			p.setIsActive(re.getParameter("isActive") != null ? re.getParameter("isActive") : "");

			isSuccess = clientuserService.saveOrUpdateVideoSlideinfo(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}
	public static float mmToPt(float mm){
        //70pt = 25.4mm
        return ( 72 * mm / 25.4f);
    }
	private static com.itextpdf.text.Font ex_mainCategoryFont = new com.itextpdf.text.Font(FontFamily.COURIER, 17, Font.NORMAL, BaseColor.WHITE);
	private static com.itextpdf.text.Font ex_regFormFont = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 12, Font.BOLDITALIC, BaseColor.WHITE);
	private static com.itextpdf.text.Font ex_regFormCityFont = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 14, Font.NORMAL, new BaseColor(53,56,57));
	private static com.itextpdf.text.Font ex_regFormClientinfoFont = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 13, Font.NORMAL, new BaseColor(53,56,57));
	private static com.itextpdf.text.Font ex_regFormClientFont = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 19, Font.BOLD, new BaseColor(65,105,225));
	@RequestMapping(value="/generatecard/{memberId}",method = RequestMethod.GET)
	public void generatecard(@PathVariable("memberId")Long memberId,HttpServletRequest re,HttpServletResponse res) throws Exception {
		try{
			float w = mmToPt(210); 
			 float h = mmToPt(230); 
			 Rectangle pagesize = new Rectangle(w, h);
			Document document = new Document(pagesize);
			String rootPath = re.getSession().getServletContext().getRealPath("/");
			String datetimeforfile = new SimpleDateFormat("yyyyMMddhhmmss").format(commonService.getServerDateAndTime());
			File outputPath = new File(rootPath+"resources/tempDownload/"+memberId+"/");
			if(!outputPath.exists()){if(outputPath.mkdirs()){System.out.println("Directory Created!!!");}else{System.out.println("Error!!!");}}
			/*FileUtils.cleanDirectory(outputPath); */
			File pdfFile = new File(outputPath+"/Card_"+datetimeforfile+".pdf");
			
			PdfWriter writer=PdfWriter.getInstance(document, new FileOutputStream(pdfFile));
			
			TblMember m = clientuserService.getMember(memberId);
			
	        
			document.open();
			document.setMargins(5, 5, 10, 10);
			//EventMaster e = eventsService.getEvent(eventId);
			
			String IMGMAIN = re.getSession().getServletContext().getRealPath("/resources/img/KARMA.png");
			PdfPTable tablemain = new PdfPTable(2);
			tablemain.setWidthPercentage(100); 
			tablemain.setHorizontalAlignment(Element.ALIGN_LEFT);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
			Image imagemain = Image.getInstance(IMGMAIN);
    		tablemain.setTableEvent(new ImageBackgroundEventForMenucategory(imagemain));
    		    
    		PdfPCell tcellmain = new PdfPCell(new Paragraph(m.getMembercode().toString().replaceAll(".(?!$)", "$0 "),ex_mainCategoryFont)); 
    		tcellmain.setHorizontalAlignment(Element.ALIGN_CENTER);
    		tcellmain.setBorder(PdfPCell.NO_BORDER);
    		tcellmain.setColspan(2);
    		tcellmain.setPaddingTop(205);
    		tablemain.addCell(tcellmain);
    		document.add(tablemain);
    		
    		tablemain = new PdfPTable(1);
			tablemain.setWidthPercentage(100); 
			tablemain.setHorizontalAlignment(Element.ALIGN_LEFT);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
    		
			tcellmain = new PdfPCell(new Paragraph("Name: "+m.getPreMemberName()+" "+m.getMemberName(),ex_regFormFont)); 
    		tcellmain.setHorizontalAlignment(Element.ALIGN_LEFT);
    		tcellmain.setBorder(PdfPCell.NO_BORDER);
    		tcellmain.setColspan(2);
    		tcellmain.setPaddingTop(10);
    		tcellmain.setPaddingLeft(42);
    		tablemain.addCell(tcellmain);
    		
    		List<Object[]> sqlst = clientuserService.getDynamicMultiplecolumnListSQL("SELECT CASE WHEN startDate IS NOT NULL THEN DATE_FORMAT(startDate,'%m/%Y') ELSE '' END,CASE WHEN endDate IS NOT NULL THEN DATE_FORMAT(endDate,'%m/%Y') ELSE '' END FROM tbl_m_member WHERE id = "+m.getId(), null);
    		
    		PdfPCell tcellmain1 = new PdfPCell(new Paragraph("Valid From: "+sqlst.get(0)[0]+"    Valid Till: "+sqlst.get(0)[1],ex_regFormFont)); 
    		tcellmain1.setHorizontalAlignment(Element.ALIGN_LEFT);
    		tcellmain1.setBorder(PdfPCell.NO_BORDER);
    		tcellmain1.setColspan(2);
    		tcellmain1.setPaddingTop(5);
    		tcellmain1.setPaddingLeft(42);
    		tablemain.addCell(tcellmain1);
    		
    		document.add(tablemain);
		    
			document.close();
			
		    /*setWatermark(re.getSession().getServletContext().getRealPath(sessionBean.getLogo() != null && !sessionBean.getLogo().equals("") ? ("/resources/"+sessionBean.getLogo()) : ("/resources/image/noimage.png")),outputPath,pdfFile.getName(),"/ExclusiveMenu_"+datetimeforfile+".pdf");*/
		    commonService.downloadDocument(re,res,outputPath.getAbsolutePath()+"/Card_"+datetimeforfile+".pdf");
		    System.out.println(new File(outputPath.getAbsolutePath()+"/Card_"+datetimeforfile+".pdf").delete());
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	class ImageBackgroundEventForMenucategory implements PdfPTableEvent {
	    public Image image;
	    public ImageBackgroundEventForMenucategory(Image image) {
	        this.image = image;
	    }
	    public void tableLayout(PdfPTable table, float[][] widths, float[] heights,
	            int headerRows, int rowStart, PdfContentByte[] canvases) {
	        try {
	            PdfContentByte cb = canvases[PdfPTable.BACKGROUNDCANVAS];
	            //image.scaleAbsolute(120f, 155.25f);
	            image.scaleToFit(595, 842);
	            image.setAbsolutePosition(0,0);
	            cb.addImage(image);
	        } catch (DocumentException e) {
	            throw new ExceptionConverter(e);
	        }
	    }
	}
	
	public String generatecardforemail(Long memberId,HttpServletRequest re,HttpServletResponse res) throws Exception {
		try{
				float w = mmToPt(210); 
				 float h = mmToPt(230); 
				 Rectangle pagesize = new Rectangle(w, h);
				Document document = new Document(pagesize);
				String rootPath = re.getSession().getServletContext().getRealPath("/");
				String datetimeforfile = new SimpleDateFormat("yyyyMMddhhmmss").format(commonService.getServerDateAndTime());
				File outputPath = new File(rootPath+"resources/tempDownload/"+memberId+"/");
				if(!outputPath.exists()){if(outputPath.mkdirs()){System.out.println("Directory Created!!!");}else{System.out.println("Error!!!");}}
				/*FileUtils.cleanDirectory(outputPath); */
				File pdfFile = new File(outputPath+"/Card_"+datetimeforfile+".pdf");
				
				PdfWriter writer=PdfWriter.getInstance(document, new FileOutputStream(pdfFile));
				
				TblMember m = clientuserService.getMember(memberId);
				
		        
				document.open();
				document.setMargins(5, 5, 10, 10);
				//EventMaster e = eventsService.getEvent(eventId);
				
				String IMGMAIN = re.getSession().getServletContext().getRealPath("/resources/img/KARMA.png");
				PdfPTable tablemain = new PdfPTable(2);
				tablemain.setWidthPercentage(100); 
				tablemain.setHorizontalAlignment(Element.ALIGN_LEFT);
				tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
				Image imagemain = Image.getInstance(IMGMAIN);
	    		tablemain.setTableEvent(new ImageBackgroundEventForMenucategory(imagemain));
	    		    
	    		PdfPCell tcellmain = new PdfPCell(new Paragraph(m.getMembercode().toString().replaceAll(".(?!$)", "$0 "),ex_mainCategoryFont)); 
	    		tcellmain.setHorizontalAlignment(Element.ALIGN_CENTER);
	    		tcellmain.setBorder(PdfPCell.NO_BORDER);
	    		tcellmain.setColspan(2);
	    		tcellmain.setPaddingTop(205);
	    		tablemain.addCell(tcellmain);
	    		document.add(tablemain);
	    		
	    		tablemain = new PdfPTable(1);
				tablemain.setWidthPercentage(100); 
				tablemain.setHorizontalAlignment(Element.ALIGN_LEFT);
				tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
	    		
				tcellmain = new PdfPCell(new Paragraph("Name: "+m.getPreMemberName()+" "+m.getMemberName(),ex_regFormFont)); 
	    		tcellmain.setHorizontalAlignment(Element.ALIGN_LEFT);
	    		tcellmain.setBorder(PdfPCell.NO_BORDER);
	    		tcellmain.setColspan(2);
	    		tcellmain.setPaddingTop(10);
	    		tcellmain.setPaddingLeft(42);
	    		tablemain.addCell(tcellmain);
	    		
	    		List<Object[]> sqlst = clientuserService.getDynamicMultiplecolumnListSQL("SELECT CASE WHEN startDate IS NOT NULL THEN DATE_FORMAT(startDate,'%m/%Y') ELSE '' END,CASE WHEN endDate IS NOT NULL THEN DATE_FORMAT(endDate,'%m/%Y') ELSE '' END FROM tbl_m_member WHERE id = "+m.getId(), null);
	    		
	    		PdfPCell tcellmain1 = new PdfPCell(new Paragraph("Valid From: "+sqlst.get(0)[0]+"    Valid Till: "+sqlst.get(0)[1],ex_regFormFont)); 
	    		tcellmain1.setHorizontalAlignment(Element.ALIGN_LEFT);
	    		tcellmain1.setBorder(PdfPCell.NO_BORDER);
	    		tcellmain1.setColspan(2);
	    		tcellmain1.setPaddingTop(5);
	    		tcellmain1.setPaddingLeft(42);
	    		tablemain.addCell(tcellmain1);
	    		
	    		document.add(tablemain);
			    
				document.close();
			
			return outputPath.getAbsolutePath()+"/Card_"+datetimeforfile+".pdf";
		    /*setWatermark(re.getSession().getServletContext().getRealPath(sessionBean.getLogo() != null && !sessionBean.getLogo().equals("") ? ("/resources/"+sessionBean.getLogo()) : ("/resources/image/noimage.png")),outputPath,pdfFile.getName(),"/ExclusiveMenu_"+datetimeforfile+".pdf");*/
		    /*commonService.downloadDocument(re,res,outputPath.getAbsolutePath()+"/Card_"+datetimeforfile+".pdf");
		    System.out.println(new File(outputPath.getAbsolutePath()+"/Card_"+datetimeforfile+".pdf").delete());*/
		}catch(Exception ex){
			ex.printStackTrace();
			return "-1";
		}
	}
	@RequestMapping(value = "/enquiry", method = RequestMethod.POST)
	public @ResponseBody String enquiry(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			Enquiry p = new Enquiry();
			
			p.setName(re.getParameter("full_name") != null ? re.getParameter("full_name") : "");
			p.setEmail(re.getParameter("email") != null ? re.getParameter("email") : "");
			p.setPhone(re.getParameter("phone") != null ? re.getParameter("phone") : "");
			p.setDescription(re.getParameter("message") != null ? re.getParameter("message") : "");
			p.setIsActive(re.getParameter("isActive") != null ? re.getParameter("isActive") : "");

			isSuccess = clientuserService.saveEnquiry(p);

			return isSuccess ? "y": "n";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n";
		}
	}
	
	@RequestMapping(value = "/joinus", method = RequestMethod.POST)
	public @ResponseBody String joinus(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			JoinUs p = new JoinUs();
			
			p.setF_name(re.getParameter("f_name") != null ? re.getParameter("f_name") : "");
			p.setL_name(re.getParameter("l_name") != null ? re.getParameter("l_name") : "");
			p.setAddr(re.getParameter("addr") != null ? re.getParameter("addr") : "");
			p.setState(re.getParameter("state") != null ? re.getParameter("state") : "");
			p.setCity(re.getParameter("city") != null ? re.getParameter("city") : "");
			p.setPostal(re.getParameter("postal") != null ? re.getParameter("postal") : "");
			p.setPhnumber(re.getParameter("phnumber") != null ? re.getParameter("phnumber") : "");
			p.setEmail(re.getParameter("email") != null ? re.getParameter("email") : "");

			isSuccess = clientuserService.savejoinus(p);

			return isSuccess ? "y": "n";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "e";
		}
	}
	
	@RequestMapping(value = "/getCampaign", method = RequestMethod.POST)
	public @ResponseBody CampaignMaster getCampaign(HttpServletRequest request) throws Exception {
		
		return clientuserService.getCampaignDetials(Long.valueOf(request.getParameter("mainPrdId")));
		
	}
	
	@RequestMapping(value = "/deleteCampaign", method = RequestMethod.GET)
	public @ResponseBody String deleteCampaign(HttpServletRequest re) {
		return clientuserService.deleteCampaign(re);
	}
	
	@RequestMapping(value = "/addCampaign", method = RequestMethod.POST)
	public @ResponseBody String addCampaign(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			CampaignMaster p = new CampaignMaster();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getCampaignDetials(Long.valueOf(re.getParameter("bnr_id")));
				
			}
			
			
			p.setCampaign_id(re.getParameter("c_id") != null ? re.getParameter("c_id") : "");
			p.setName(re.getParameter("name") != null ? re.getParameter("name") : "");
			
			

			isSuccess = clientuserService.saveOrUpdateCampaign(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}
	
	@RequestMapping(value = "/getOffer", method = RequestMethod.POST)
	public @ResponseBody OfferMaster getOffer(HttpServletRequest request) throws Exception {
		
		return clientuserService.getOffer(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value = "/deleteOffer", method = RequestMethod.GET)
	public @ResponseBody String deleteOffer(HttpServletRequest re) {
		return clientuserService.deleteOffer(re);
	}
	
	@RequestMapping(value = "/addOffer", method = RequestMethod.POST)
	public @ResponseBody String addOffer(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			OfferMaster p = new OfferMaster();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getOffer(Long.valueOf(re.getParameter("bnr_id")));
				
			}
			
			p.setName(re.getParameter("name") != null ? re.getParameter("name") : "");
			p.setDescription(re.getParameter("description") != null ? re.getParameter("description") : "");
			
			

			isSuccess = clientuserService.saveOrUpdateOffer(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}
	
	
	@RequestMapping(value = "/addState", method = RequestMethod.POST)
	public @ResponseBody String addState(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			States p = new States();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getstateDetials(Long.valueOf(re.getParameter("bnr_id")));	
			}
			
			
			p.setStatename(re.getParameter("state_name") != null ? re.getParameter("state_name") : "");
			p.setCountry(new Country(101l));
			

			isSuccess = clientuserService.saveOrUpdateState(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}
	
	@RequestMapping(value = "/getState", method = RequestMethod.POST)
	public @ResponseBody States getState(HttpServletRequest request) throws Exception {
		return clientuserService.getstateDetials(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value = "/deleteState", method = RequestMethod.GET)
	public @ResponseBody String deleteState(HttpServletRequest re) {
		return clientuserService.deleteState(re);
	}
	
	@RequestMapping(value = "/addCity", method = RequestMethod.POST)
	public @ResponseBody String addCity(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			city p = new city();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getcityDetials(Long.valueOf(re.getParameter("bnr_id")));	
			}
			
			
			p.setCityname(re.getParameter("city_name") != null ? re.getParameter("city_name") : "");
			p.setState(new States (Long.valueOf(re.getParameter("state_id"))));
			

			isSuccess = clientuserService.saveOrUpdateCity(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
}
	
	@RequestMapping(value = "/deleteCity", method = RequestMethod.GET)
	public @ResponseBody String deleteCity(HttpServletRequest re) {
		return clientuserService.deleteCity(re);
	}
	
	@RequestMapping(value = "/getCityDetail", method = RequestMethod.POST)
	public @ResponseBody city getCityDetail(HttpServletRequest request) throws Exception {
		return clientuserService.getCityDetail(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value="/setTicketType",method = RequestMethod.GET)
	public @ResponseBody String updateTicketType(HttpServletRequest request) throws Exception {
		return clientuserService.updateTicketType(request);
	}
	
	@RequestMapping(value = "/getVideoAdmin", method = RequestMethod.POST)
	public @ResponseBody AdminVideo getVideoAdmin(HttpServletRequest request) throws Exception {
		return clientuserService.getVideoAdmin(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value = "/addVideoAdmin", method = RequestMethod.POST)
	public @ResponseBody String addVideoAdmin(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			AdminVideo p = new AdminVideo();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getVideoAdmin(Long.valueOf(re.getParameter("bnr_id")));	
			}
			
			
			p.setTitle(re.getParameter("title") != null ? re.getParameter("title") : "");
			if ((re.getParameter("videolink") != null && re.getParameter("videolink") != "")) {
				String str = re.getParameter("videolink");
			String[] arrOfStr = str.split("src=",0);
			String customizeVideoLinkString="<iframe width=\"360\" height=\"200\" src="+arrOfStr[1];

			p.setVideoLink(customizeVideoLinkString);
			} else {
				return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
			}
			
			

			isSuccess = clientuserService.saveOrUpdateAdminVideo(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}
	
	@RequestMapping(value = "/deleteAdminVideo", method = RequestMethod.GET)
	public @ResponseBody String deleteAdminVideo(HttpServletRequest re) {
		return clientuserService.deleteAdminVideo(re);
	}
	
	@RequestMapping(value="/setAdminVideoType",method = RequestMethod.GET)
	public @ResponseBody String updateAdminVideoType(HttpServletRequest request) throws Exception {
		System.out.println("MastersController.updateAdminVideoType()----------------------------------------------");
		return clientuserService.updateAdminVideoType(request);
	}
	
	@RequestMapping(value = "/addEmi", method = RequestMethod.POST)
	public @ResponseBody String addEmi(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			Emimaster p = new Emimaster();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getemiDetials(Long.valueOf(re.getParameter("bnr_id")));	
			}
			
			
			
			p.setEmi_name(Integer.parseInt((re.getParameter("emi_name") != null ? (re.getParameter("emi_name")) : "")));

			p.setEmi_per(Float.parseFloat((re.getParameter("emi_per") != null ? (re.getParameter("emi_per")) : "")));

			isSuccess = clientuserService.saveOrUpdateEmi(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
}
	
	@RequestMapping(value = "/deleteEmi", method = RequestMethod.GET)
	public @ResponseBody String deleteEmi(HttpServletRequest re) {
		return clientuserService.deleteEmi(re);
	}
	
	@RequestMapping(value = "/getEmiDetail", method = RequestMethod.POST)
	public @ResponseBody Emimaster getemiDetail(HttpServletRequest request) throws Exception {
		return clientuserService.getemiDetials(Long.valueOf(request.getParameter("mainPrdId")));
	}
	@RequestMapping(value = "/getImageAdmin", method = RequestMethod.POST)
	public @ResponseBody AdminImages getImageAdmin(HttpServletRequest request) throws Exception {
		return clientuserService.getImageAdmin(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value = "/addImagesAdmin", method = RequestMethod.POST)
	public @ResponseBody String addImagesAdmin(ModelMap model, RedirectAttributes redirectAttributes,
			HttpServletRequest re) throws Exception {

		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			AdminImages p = new AdminImages();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getImageAdmin(Long.valueOf(re.getParameter("bnr_id")));
			}

			p.setTitle(re.getParameter("title") != null ? re.getParameter("title") : "");

			if (re.getParameter("imagePath") == null) {

			}

			isSuccess = clientuserService.saveOrUpdateAdminImage(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
	}
	
	@RequestMapping(value="/setAdminImageType",method = RequestMethod.GET)
	public @ResponseBody String setAdminImageType(HttpServletRequest request) throws Exception {
		
		return clientuserService.updateAdminImageType(request);
	}
	
	@RequestMapping(value = "/deleteAdminImage", method = RequestMethod.GET)
	public @ResponseBody String deleteAdminImage(HttpServletRequest re) {
		return clientuserService.deleteAdminImage(re);
	}
	

	@RequestMapping(value = "/upgradeplan", method = RequestMethod.POST)
	public @ResponseBody String upgradeplan(HttpServletRequest re) {
		System.out.println(re.getParameter("memberid"));
		System.out.println((re.getParameter("comment")));
		boolean mail = false;
		try {

			boolean isSuccess = false;
			SessionBean sessionBean = (SessionBean) re.getSession()
					.getAttribute(CommonKeywords.SESSIONOBJECT.toString());

			upgradeMembership up = new upgradeMembership();

			up.setMember(new TblMember(Long.parseLong(re.getParameter("memberid"))));
			up.setComment(re.getParameter("comment") != null ? re.getParameter("comment") : "");
			isSuccess = clientuserService.saveplan(up, 0);

			// *********************************
			if (isSuccess == true) {
				// Email related Code Here..
				String sql2 = "SELECT firstName,username,emailID FROM tbl_m_user WHERE memberId = '"
						+ re.getParameter("memberid").trim() + "'";
				List<Object[]> sl2 = clientuserService.getDynamicMultiplecolumnListSQL(sql2, null);
				String body = "<p><img src=" + "https://www.karmasuites.in/resources/website/images/logo.png"
						+ " alt='Karma Logo' width='500' height='130' /></p>" 
						+ "<p>Username / Member Id : <strong>"+ sl2.get(0)[1] + "</strong> </p>"
						+ "<p>Name : " + sl2.get(0)[0] + ",</p>"
						+ "<p> Email : "+sl2.get(0)[2] + "</strong></p>"
						+ "<p>Is Wants To Upgrade Plan.</p>"						
						+ "<p>Requirements : " +re.getParameter("comment")+ "</strong></p>'"
						+ "<p>&nbsp;</p>"						
						+ "<p>&nbsp;</p>";
			
				String bodyforclient = "<p><img src=" + "https://www.karmasuites.in/resources/website/images/logo.png"
						+ " alt='Karma Logo' width='500' height='130' /></p>" 
						+ "<p>Username / Member Id : <strong>"+ sl2.get(0)[1] + "</strong> </p>"
						+ "<p>Name : " + sl2.get(0)[0] + ",</p>"
						+ "<p> Email : "+sl2.get(0)[2] + "</strong></p>"
						+ "<p>Hello "+ sl2.get(0)[0] +"!</p>"	
						+ "<p>Your Upgrade Membership request is submitted successfully to Karma !</p>"	
						+ "<p>Your Requirements : " +re.getParameter("comment")+ "</strong></p>'"
						+ "<p>&nbsp;</p>"						
						+ "<p>&nbsp;</p>"
						+ "<p>** For any further query you can reach us on Email :-&nbsp;<a href='mailto:memberexperience@karmaresorts.in' target='_blank' rel='noopener'>memberexperience@karmaresorts.<wbr />in</a>&nbsp;Ph :- 18002585584</p>";
				
				String subject =  "Upgrade Plan :"+ sl2.get(0)[1];
				String toids = sl2.get(0)[2].toString();
				//
				String result = commonService.sendEMAIL(null, bodyforclient, subject, toids, "");
				String result2 = commonService.sendEMAIL(null, body, subject, "memberexperience@karmahospitality.in", "");
				if (result.equals("true")) {
					System.out.println("Mail Sent !");
					mail = true;
				} else {
					System.out.println("Mail Not Sent !");
					mail = false;
				}

			}
			// *********************************
			if (mail & isSuccess) {
				return "true";
			} else {
				return "false";
			}

			

		} catch (Exception e) {
			e.printStackTrace();
			return "f";
		}

	}// upgradeplan()
	
	@RequestMapping(value = "/TripRaiseMember", method = RequestMethod.POST)
	public @ResponseBody String TripRaiseMember(HttpServletRequest re) {
		System.out.println("MastersController.TripRaiseMember()");
		System.out.println(re.getParameter("startDate"));
		SimpleDateFormat startfo = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat endfo = new SimpleDateFormat("yyyy-MM-dd");
		Date providedstart = null;
		Date providedend = null;
		Date systemDate = new Date();
		boolean sd = false;
		boolean ed = false;
		
		try {
			providedstart = startfo.parse(re.getParameter("startDate"));
			providedend = endfo.parse(re.getParameter("endDate"));
			Date ps = new Date( providedstart.getTime());
			Date pe = new Date( providedend.getTime());
			System.out.println("Provided Start date :"+ps);
			System.out.println("Provided End   date :"+pe);
			System.out.println(systemDate);
			System.out.println("start Date is before today ----"+(ps.before(systemDate) +"| If both true : something Went Wrong"));
			System.out.println("end   Date is before today ----"+(pe.before(systemDate)+" | If both true : something Went Wrong"));
			sd=ps.before(systemDate);
			ed=pe.before(systemDate);

		} catch (ParseException e1) {			
			e1.printStackTrace();
			
		}
		
		if (!(sd&ed)) {

			try {
				System.out.println("=======================================");
				System.out.println("Member ID  : " + re.getParameter("memberid"));
				System.out.println("Destination: " + re.getParameter("destination_id"));
				System.out.println("Start Date : " + commonService.changeDateFormate("yyyy-MM-dd",
						"yyyy-MM-dd HH:mm:ss", re.getParameter("startDate")));
				System.out.println("End Date   : " + commonService.changeDateFormate("yyyy-MM-dd",
						"yyyy-MM-dd HH:mm:ss", re.getParameter("endDate")));

				System.out.println("Total days : " + re.getParameter("ttlDays"));
				System.out.println("Adult      : " + re.getParameter("adult"));
				System.out.println("Child      : " + re.getParameter("child"));
				System.out.println("Remarks    : " + re.getParameter("comment"));
				System.out.println("=======================================");

				RaiseTrip tr = new RaiseTrip();
				

				tr.setMember(new TblMember(Long.parseLong(re.getParameter("memberid"))));
				tr.setCity(new city(Long.parseLong(re.getParameter("destination_id"))));
				tr.setStartDate(commonService.changeDateFormate("yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss",
						re.getParameter("startDate")));
				tr.setEndDate(commonService.changeDateFormate("yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss",
						re.getParameter("endDate")));
				tr.setTotalDays(re.getParameter("ttlDays"));
				tr.setRemarks(re.getParameter("comment"));
				// tr.setAdults(re.getParameter("adult"));
				// tr.setChild(re.getParameter("child"));
				// -------------------
				String strPattern = "^0+(?!$)";
				String adultPerson = re.getParameter("adult");
				String ChildPerson = re.getParameter("child");

				adultPerson = adultPerson.replaceAll(strPattern, "");
				tr.setAdults(adultPerson);

				ChildPerson = ChildPerson.replaceAll(strPattern, "");
				if (ChildPerson.equals("")) {
					tr.setChild("0");
				}else {
					tr.setChild(ChildPerson);
				}
				
				if ((Integer.parseInt(re.getParameter("child")))>0) {
					if (!(re.getParameter("child1")==null)) {
						tr.setChild1((Integer.parseInt(re.getParameter("child1"))));
					}
					if (!(re.getParameter("child2")==null)) {
						tr.setChild2((Integer.parseInt(re.getParameter("child2"))));
					}
					if (!(re.getParameter("child3")==null)) {
						tr.setChild3((Integer.parseInt(re.getParameter("child3"))));
					}
					if (!(re.getParameter("child4")==null)) {
						tr.setChild4((Integer.parseInt(re.getParameter("child4"))));
					}
					if (!(re.getParameter("child5")==null)) {
						tr.setChild5((Integer.parseInt(re.getParameter("child5"))));
					}
					if (!(re.getParameter("child6")==null)) {
						tr.setChild6((Integer.parseInt(re.getParameter("child6"))));
					}
					if (!(re.getParameter("child7")==null)) {
							tr.setChild7((Integer.parseInt(re.getParameter("child7"))));
					}
					if (!(re.getParameter("child8")==null)) {
						tr.setChild8((Integer.parseInt(re.getParameter("child8"))));
					}
					if (!(re.getParameter("child9")==null)) {
						tr.setChild9((Integer.parseInt(re.getParameter("child9"))));
					}
					if (!(re.getParameter("child10")==null)) {
						tr.setChild10((Integer.parseInt(re.getParameter("child10"))));				
					}
					
				} 
				

				// -------------------

				boolean isSuccess = false;
				isSuccess = clientuserService.addRaiseTrip(tr, 0);
				if (isSuccess) {
					return "true";
				} else {
					return "false";
				}

			} catch (ParseException e) {

				e.printStackTrace();
				return "false";
			}
		} else {
			return "before";
		}

	}// TripRaiseMember()


		
	/*
	 * @RequestMapping(value="/upgradeplan",method = RequestMethod.POST)
	 * public @ResponseBody String upgradeplan(HttpServletRequest re){ boolean
	 * isSucess=false; SessionBean sessionBean= (SessionBean)
	 * re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString()); try {
	 * upgradeMembership up = new upgradeMembership();
	 * up.setComment(re.getParameter("comment") !=null ? re.getParameter("comment")
	 * : ""); up.setMember(re.getParameter());
	 * isSucess=clientuserService.saveplan(up); return isSucess ? "y" : "n";
	 * 
	 * 
	 * }catch (Exception e) { return "e"; }
	 * 
	 * 
	 * }
	 */
@RequestMapping(value = "/career", method = RequestMethod.POST)
public @ResponseBody String career(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
		throws Exception {
	System.out.println("________________ready to go-----------------");

	boolean isSuccess = false;
	SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
	try {
		Career c = new Career();
		
		c.setName(re.getParameter("name") != null ? re.getParameter("name") : "");
		c.setEmail(re.getParameter("email") != null ? re.getParameter("email") : "");
		 c.setResume(re.getParameter("resume") != null? re.getParameter("resume") : "");
				 
		c.setPhoneno(re.getParameter("phoneno") != null ? re.getParameter("phoneno") : "");
		c.setExp_lvl(re.getParameter("exp_lvl") != null ? re.getParameter("exp_lvl") : "");
		c.setIntrest(re.getParameter("intrest") != null ? re.getParameter("intrest") : "");
		c.setState(re.getParameter("state") != null ? re.getParameter("state") : "");
	
		isSuccess = clientuserService.saveCareer(c);
		return isSuccess
				? "y~" + environment.getRequiredProperty(
						re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
								? "redirect_success_common"
								: "redirect_success_common_update")
						+ "~" + c.getId()
				: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
	} catch (Exception ex) {
		ex.printStackTrace();
		return "e";
	}
}// class End

	@RequestMapping(value="/setTypeRaiseTrip",method = RequestMethod.GET)
	public @ResponseBody String setTypeRaiseTrip(HttpServletRequest request) throws Exception {
		
		return clientuserService.updateRaiseTripType(request);
	}// setTypeRaiseTrip()
	
	@RequestMapping(value = "/paymentlogin", method = RequestMethod.POST)
	public @ResponseBody String Paymentlogin(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		System.out.println("MastersController.Paymentlogin()");
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			Paymentlogin p = new Paymentlogin();

			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getPaymentDetials(Long.valueOf(re.getParameter("bnr_id")));	
				
			}
			
			
			
			p.setUsername((re.getParameter("username") != null ? (re.getParameter("username")) : ""));
			p.setEmail((re.getParameter("email") != null ? (re.getParameter("email")) : ""));
			p.setPhoneno((re.getParameter("phoneno") != null ? (re.getParameter("phoneno")) : ""));
			p.setPassword((re.getParameter("password") != null ? (re.getParameter("password")) : ""));

			isSuccess = clientuserService.saveOrUpdatePayment(p,
					re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);
			System.out.println(isSuccess);
			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}
}
/*
 * @RequestMapping(value = "/getEmiDetail", method = RequestMethod.POST)
 * public @ResponseBody Emimaster getemiDetail(HttpServletRequest request)
 * throws Exception { return
 * clientuserService.getemiDetials(Long.valueOf(request.getParameter("mainPrdId"
 * ))); }
 */
	
	
	@RequestMapping(value="/setPaymentType",method = RequestMethod.GET)
	public @ResponseBody String updatePaymentLoginType(HttpServletRequest request) throws Exception {
		
		return clientuserService.updatePaymentLoginType(request);
	}
	
	@RequestMapping(value = "/getPaymentDetials", method = RequestMethod.POST)
	public @ResponseBody Paymentlogin getPaymentDetials(HttpServletRequest request) throws Exception {
		return clientuserService.getPaymentDetials(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value = "/getResort", method = RequestMethod.POST)
	public @ResponseBody Resorts getResort(HttpServletRequest request) throws Exception {
		
		return clientuserService.getResortDetail(Long.valueOf(request.getParameter("mainPrdId")));
	}
	
	@RequestMapping(value = "/getResortImages", method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getResortImages(HttpServletRequest request) throws Exception {
		String resort_id = request.getParameter("mainPrdId");
		String query = "SELECT r.id,r.imagePath,DATE_FORMAT(r.createdAt,'%d/%m/%Y') FROM ResortImages r where r.resorts.id="+ resort_id;
		return clientuserService.getDynamicMultiplecolumnList(query, null, "");
	}
	
	@RequestMapping(value = "/deleteResortImage", method = RequestMethod.POST)
	public @ResponseBody String deleteResortImages(HttpServletRequest re) {
		System.out.println("MastersController.deleteResortImages(----------------)");
		return clientuserService.deleteResortImages(re);
	}
	
	@RequestMapping(value="/setapprovingtype",method = RequestMethod.GET)
	public @ResponseBody String setapprovingtype(HttpServletRequest request) throws Exception {
		System.out.println("MastersController.setapprovingtype()");
		return clientuserService.setapprovingtype(request);
	}
	
	@RequestMapping(value="/setdisapprovingtype",method = RequestMethod.GET)
	public @ResponseBody String setdisapprovingtype(HttpServletRequest request) throws Exception {
		System.out.println("MastersController.setdisapprovingtype()");
		return clientuserService.setdisapprovingtype(request);
	}
	
	@RequestMapping(value = "/addResort", method = RequestMethod.POST)
	public @ResponseBody String addResort(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			Resorts p = new Resorts();
			
			if (re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0) {
				p = clientuserService.getResortDetail(Long.valueOf(re.getParameter("bnr_id")));
				//p.setDestination_image_path(re.getParameter("destination_image_path"));
			}
			
			System.out.println("MastersController.addResort() :"+ re.getParameter("description"));
			p.setResortName(re.getParameter("name") != null ? re.getParameter("name") : "");
			p.setZone(new Zone(Integer.parseInt(re.getParameter("zone"))));	
			p.setCity(new city(Long.parseLong(re.getParameter("city_id"))));
			p.setState(new States (Long.valueOf(re.getParameter("state_id"))));
			p.setCountry(new Country (Long.valueOf(re.getParameter("country_id"))));
			p.setDescription(re.getParameter("description") != null ? re.getParameter("description") : "");
			p.setLocation(re.getParameter("location") != null ? re.getParameter("location") : "");
			
			
			isSuccess = clientuserService.saveOrupdateResort(p,re.getParameter("bnr_id") != null ? Integer.valueOf(re.getParameter("bnr_id")) : 0);

			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("bnr_id") != null && Integer.valueOf(re.getParameter("bnr_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + p.getId()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n";
		}
	}
	
	@RequestMapping(value = "/deleteResort", method = RequestMethod.GET)
	public @ResponseBody String deleteResort(HttpServletRequest re) {
		System.out.println("MastersController.deleteResort()");
		return clientuserService.deleteResort(re);
	}
	
	@RequestMapping(value="/setResortActivetype",method = RequestMethod.GET)
	public @ResponseBody String setResortActivetype(HttpServletRequest request) throws Exception {
		System.out.println("MastersController.setdisapprovingtype()");
		return clientuserService.setResortActivetype(request);
	}
	
	@RequestMapping(value = "/addResortImage", method = RequestMethod.POST)
	public @ResponseBody String addResortImage(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		try{
			ResortImages ri = new ResortImages();
			ri.setResorts(new Resorts(Long.parseLong(re.getParameter("productMasterId"))));	
			ri.setImagePath(re.getParameter("fileMasterPath"));
			isSuccess = clientuserService.saveResortImage(ri,0);
			return isSuccess ? "y": "n";
		}catch(Exception ex){
			ex.printStackTrace();
			return "n";
		}
	}
	
	@RequestMapping(value = "/websiteoffers", method = RequestMethod.POST)
	public @ResponseBody String websiteOffers(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			Websiteoffers p = new Websiteoffers();
			
			p.setName(re.getParameter("name") != null ? re.getParameter("name") : "");
			p.setEmail(re.getParameter("email") != null ? re.getParameter("email") : "");
			p.setMobile(re.getParameter("Mobile") != null ? re.getParameter("Mobile") : "");
			p.setAge(re.getParameter("age") != null ? re.getParameter("age") : "");
			p.setCity(re.getParameter("city") != null ? re.getParameter("city") : "");

			isSuccess = clientuserService.saveWebsiteOfferDetails(p);

			return isSuccess ? "y": "n";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n";
		}
	}
	
	@RequestMapping(value = "/getVideoSlideImages", method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getVideoSlideImages(HttpServletRequest request) throws Exception {
		String resort_id = request.getParameter("mainPrdId");
		String query = "SELECT r.id,r.imagePath,DATE_FORMAT(r.createdAt,'%d/%m/%Y') FROM VideoSlideImages r where r.videoSlide.id="+ resort_id;
		return clientuserService.getDynamicMultiplecolumnList(query, null, "");
	}
	

	
	@RequestMapping(value = "/getInteractionType", method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getInteractionType(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		System.out.println("MastersController.getInteractionType()"+id);
		String query = "SELECT intertype_id,typename FROM `tbl_interactiontype` WHERE interaction_id="+id;
		return clientuserService.getDynamicMultiplecolumnListSQL(query, null);
	}
	
	@RequestMapping(value = "/getInteractionsubType", method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getInteractionsubType(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		System.out.println("MastersController.getInteractionType()"+id);
		String query = "SELECT subtype_id,subtypename FROM `tbl_interactionsubtype` WHERE intertype_id="+id;
		return clientuserService.getDynamicMultiplecolumnListSQL(query, null);
	}

	
	@RequestMapping(value = "/addTicketRaise", method = RequestMethod.POST)
	public @ResponseBody String addTicketRaise(ModelMap model, RedirectAttributes redirectAttributes, HttpServletRequest re)
			throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try {
			TblTicket p = new TblTicket();
			
//			if (re.getParameter("member_id") != null && Integer.valueOf(re.getParameter("member_id")) != 0) {
//				p = clientuserService.getResortDetail(Long.valueOf(re.getParameter("member_id")));
//				
//			}
			System.out.println("------------------------");
			System.out.println(re.getParameter("member_id")+": member_id");
			System.out.println(re.getParameter("Category_id")+"   : Category_id");
			System.out.println(re.getParameter("Interaction_id")+"  : Interaction_id");
			System.out.println(re.getParameter("Specific_id")+"  : Specific_id");
			System.out.println(re.getParameter("comment")+": comment");
			System.out.println(re.getParameter("membercode")+": membercode");
			System.out.println("------------------------");
			
			
//			p.setMember(new TblMember(Long.parseLong(re.getParameter("member_id"))));
//			p.setTypename(re.getParameter("Category_id") != null ? re.getParameter("Category_id") : "");
//			p.setSubtypename(re.getParameter("Interaction_id") != null ? re.getParameter("Interaction_id") : "");
//			p.setInteractionsubtype(new TblInteractionSubtype(Long.parseLong(re.getParameter("Specific_id"))));
//			p.setUsercomment(re.getParameter("comment") != null ? re.getParameter("comment") : "");
//			
//			
//			isSuccess = clientuserService.saveOrupdateTicketRaise(p,re.getParameter("member_id") != null ? Integer.valueOf(re.getParameter("member_id")) : 0);

			return isSuccess ? "y": "n";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "n";
		}
	}
	@RequestMapping(value="/getplcmemberdata",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getplcmemberdata(HttpServletRequest re) throws Exception {
		String query = "SELECT id,membercode,concat(preMemberName,' ',memberName),mobileNo,emailId,product.title,resCity,sellingprice,DATE_FORMAT(createdAt,'%d/%m/%Y'),status,CASE WHEN statusOfPLC = 'Cleared' THEN 1 ELSE 0 END,isActive FROM TblMember where statusOfPLC != 'Cleared' and statusOfPLC != 'Cancellation of Membership' order by membercode desc";
		return clientuserService.getDynamicMultiplecolumnList(query,null,"");
	}
	
	@RequestMapping(value = "/saveplcmember", method = RequestMethod.POST)
	public @ResponseBody String saveplcmember(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			Date dd = commonService.getServerDateAndTime();
			Long memberid = Long.valueOf(re.getParameter("memberId"));
			Long plc_id = Long.valueOf(re.getParameter("plc_id"));
			TblPlcStatus cat = new TblPlcStatus();
			if(plc_id != 0 && memberid != 0){
				//cat = clientuserService.getPlcStatusMember(plc_id);
				cat.setPlc_id(plc_id);
			}
			//else{
				cat.setMember(new TblMember(memberid));
				cat.setNamest(re.getParameter("namest"));
				cat.setCoappnamest(re.getParameter("coappnamest"));
				cat.setMembeeraddressst(re.getParameter("membeeraddressst"));
				cat.setEmailidst(re.getParameter("emailidst"));
				cat.setMobilenost(re.getParameter("mobilenost"));
				cat.setProductpurchase(re.getParameter("productpurchase"));
				cat.setProductprice(re.getParameter("productprice"));
				cat.setDpamount(re.getParameter("dpamount"));
				cat.setDpinstallment(re.getParameter("dpinstallment"));
				cat.setEmiamount(re.getParameter("emiamount"));
				cat.setEmiinstallment(re.getParameter("emiinstallment"));
				cat.setOffers(re.getParameter("offers"));
				cat.setReservationrules(re.getParameter("reservationrules"));
				cat.setMemcontactinfo(re.getParameter("memcontactinfo"));
				cat.setRemarks(re.getParameter("remarks"));
				cat.setReservation_rule(re.getParameter("reservation_rule"));
				cat.setMem_cont_info(re.getParameter("mem_cont_info"));
				cat.setCallbackdate(re.getParameter("callbackdate") != null && StringUtils.hasLength(re.getParameter("callbackdate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("callbackdate")) : null);
				if(re.getParameter("plc_id") != null && Integer.valueOf(re.getParameter("plc_id")) != 0){
					cat.setPlcinitiateddate(re.getParameter("plcinitiateddate") != null && StringUtils.hasLength(re.getParameter("plcinitiateddate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("plcinitiateddate")) : null);
				}else{
					cat.setPlcinitiateddate(dd);
				}
				
				if(re.getParameter("statusOfPLC").equalsIgnoreCase("Cleared")){
					cat.setPlccompleteddate(dd);
				}
				
				
			//}
			
			isSuccess = clientuserService.saveOrUpdatePlcStatus(cat,re.getParameter("plc_id") != null ? Integer.valueOf(re.getParameter("plc_id")) : 0, re.getParameter("statusOfPLC"));
			//isSuccess = clientuserService.saveOrUpdatePlcStatus(cat,re.getParameter("plc_id") != null ? Integer.valueOf(re.getParameter("plc_id")) : 0);
			System.out.println("in--"+isSuccess);
			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("plc_id") != null && Integer.valueOf(re.getParameter("plc_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + cat.getPlc_id()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
		
	}
	
	@RequestMapping(value="/getsalesmemberdata",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getsalesmemberdata(HttpServletRequest re) throws Exception {
		String query = "SELECT id,membercode,concat(preMemberName,' ',memberName),mobileNo,emailId,product.title,resCity,sellingprice,DATE_FORMAT(createdAt,'%d/%m/%Y'),status,CASE WHEN statusOfPLC = 'Cleared' THEN 1 ELSE 0 END,isActive FROM TblMember where salesstatus != 'Clear' order by membercode desc";
		return clientuserService.getDynamicMultiplecolumnList(query,null,"");
	}
	
	@RequestMapping(value = "/savesalemember", method = RequestMethod.POST)
	public @ResponseBody String savesalemember(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			Date dd = commonService.getServerDateAndTime();
			Long memberid = Long.valueOf(re.getParameter("memberId"));
			Long st_id = Long.valueOf(re.getParameter("st_id"));
			TblSalesStatus cat = new TblSalesStatus();
			if(st_id != 0 && memberid != 0){
				//cat = clientuserService.getPlcStatusMember(plc_id);
				cat.setSt_id(st_id);
			}
			//else{
				cat.setMember(new TblMember(memberid));
				cat.setFataloutcalldate(re.getParameter("fataloutcalldate") != null && StringUtils.hasLength(re.getParameter("fataloutcalldate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("fataloutcalldate")) : null);
				cat.setFataloutcallusername(sessionBean.getCname());
				cat.setFatalstatus(re.getParameter("fatalstatus"));
				cat.setFatalcallbackdate(re.getParameter("fatalcallbackdate") != null && StringUtils.hasLength(re.getParameter("fatalcallbackdate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("fatalcallbackdate")) : null);
				cat.setFatalclosuredate(re.getParameter("fatalclosuredate") != null && StringUtils.hasLength(re.getParameter("fatalclosuredate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("fatalclosuredate")) : null);
				
				if(re.getParameter("salesstatus").equalsIgnoreCase("Clear")){
					cat.setSalesapproveddate(dd);
					cat.setFatalclosureusername(sessionBean.getCname());
				}
				
				
			//}
			
			isSuccess = clientuserService.saveOrUpdateSalesStatus(cat,re.getParameter("st_id") != null ? Integer.valueOf(re.getParameter("st_id")) : 0, re.getParameter("salesstatus"));
			//isSuccess = clientuserService.saveOrUpdatePlcStatus(cat,re.getParameter("plc_id") != null ? Integer.valueOf(re.getParameter("plc_id")) : 0);
			System.out.println("in--"+isSuccess);
			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("st_id") != null && Integer.valueOf(re.getParameter("st_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + cat.getSt_id()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
		
	}
	
	@RequestMapping(value="/getwcmemberdata",method = RequestMethod.POST)
	public @ResponseBody List<Object[]> getwcmemberdata(HttpServletRequest re) throws Exception {
		String query = "SELECT id,membercode,concat(preMemberName,' ',memberName),mobileNo,emailId,product.title,resCity,sellingprice,DATE_FORMAT(createdAt,'%d/%m/%Y'),status,CASE WHEN statusOfPLC = 'Cleared' THEN 1 ELSE 0 END,isActive FROM TblMember t where wcstatus != 'Complete' order by membercode desc";
		return clientuserService.getDynamicMultiplecolumnList(query,null,"");
	}
	
	@RequestMapping(value = "/savewcmember", method = RequestMethod.POST)
	public @ResponseBody String savewcmember(ModelMap model,RedirectAttributes redirectAttributes,HttpServletRequest re) throws Exception {
		boolean isSuccess = false;
		SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
		try{
			Date dd = commonService.getServerDateAndTime();
			Long memberid = Long.valueOf(re.getParameter("memberId"));
			Long wc_id = Long.valueOf(re.getParameter("wc_id"));
			TblWcStatus cat = new TblWcStatus();
			if(wc_id != 0 && memberid != 0){
				//cat = clientuserService.getPlcStatusMember(plc_id);
				cat.setWc_id(wc_id);
			}
			//else{
				System.out.println("date--"+"---"+re.getParameter("wcinitiateddate"));
				cat.setMember(new TblMember(memberid));
				cat.setEmp(new Employee(Long.valueOf(re.getParameter("emp_id"))));
				cat.setWccallbackdate(re.getParameter("wccallbackdate") != null && StringUtils.hasLength(re.getParameter("wccallbackdate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("wccallbackdate")) : null);
				cat.setConfirmationofwl(re.getParameter("confirmationofwl"));
				cat.setConfirmationofoffer(re.getParameter("confirmationofoffer"));
				cat.setConfirmationofhsd(re.getParameter("confirmationofhsd"));
				cat.setConfirmationofbooking(re.getParameter("confirmationofbooking"));
				
				if(re.getParameter("wcstatus").equalsIgnoreCase("Complete")){
					cat.setWccompleteddate(dd);
					cat.setWccompletedby(sessionBean.getCname());
				}
				if(re.getParameter("wc_id") != null && Integer.valueOf(re.getParameter("wc_id")) != 0){
					cat.setWcinitiateddate(re.getParameter("wcinitiateddate") != null && StringUtils.hasLength(re.getParameter("wcinitiateddate")) ? commonService.changeDateFormate("dd/MM/yyyy","yyyy-MM-dd HH:mm:ss",re.getParameter("wcinitiateddate")) : null);
				}else{
					cat.setWcinitiateddate(dd);
				}
				
			//}
			
			isSuccess = clientuserService.saveOrUpdateWcStatus(cat,re.getParameter("wc_id") != null ? Integer.valueOf(re.getParameter("wc_id")) : 0, re.getParameter("wcstatus"));
			//isSuccess = clientuserService.saveOrUpdatePlcStatus(cat,re.getParameter("plc_id") != null ? Integer.valueOf(re.getParameter("plc_id")) : 0);
			System.out.println("in--"+isSuccess);
			return isSuccess
					? "y~" + environment.getRequiredProperty(
							re.getParameter("wc_id") != null && Integer.valueOf(re.getParameter("wc_id")) != 0
									? "redirect_success_common"
									: "redirect_success_common_update")
							+ "~" + cat.getWc_id()
					: "n~" + environment.getRequiredProperty("redirect_error_common") + "~" + 0;
		}catch(Exception ex){
			ex.printStackTrace();
			return "n~"+environment.getRequiredProperty("redirect_error_common")+"~"+0;
		}
		
	}
}// class

