package com.system.justfeedback.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfWriter;
import com.system.justfeedback.bean.SessionBean;
import com.system.justfeedback.services.ClientuserService;
import com.system.justfeedback.services.CommonService;
import com.system.justfeedback.services.UserRoleService;
import com.system.justfeedback.utility.CommonKeywords;

/*import sun.security.util.BigInt;
*/
/**
 * @author Keval.soni
 */

@Controller
@RequestMapping("/clientuser/")
@SessionAttributes("roles")
@PropertySource(value = { "classpath:resources/auditrailMessages.properties","classpath:resources/link.properties","classpath:resources/messages.properties" })
public class ClientController {
	
	@Autowired
	CommonService commonService;
	
	@Autowired
	ClientuserService clientuserService;
	
	@Autowired
	UserRoleService userRoleService;
	
	@Autowired
    private Environment environment;
	
	@RequestMapping(value = { "/registerclientuser" }, method = RequestMethod.GET)
	public String registerClientuser(ModelMap model,HttpServletRequest request) throws Exception {
		model.addAttribute("states", commonService.getStatesorcity(101l,"state"));
		model.addAttribute("roles", userRoleService.findAll());
		String imagePath = "uploaded/clientlogo/";
		model.addAttribute("docUploadPath","resources/"+imagePath);
		model.addAttribute("savePath",imagePath);
		return "clientuser/registerclient";
	}
	@RequestMapping(value = { "/clientdashboard/{sidePanelName}/{headingName}/{messageType}/{successMsg}" }, method = RequestMethod.GET)
	public String afterLoginHome(@PathVariable("sidePanelName")String sidePanelName,@PathVariable("headingName")String headingName,@PathVariable("messageType")String messageType,@PathVariable("successMsg")String successMsg,ModelMap model,HttpServletRequest request) throws Exception {
		try{
			model.addAttribute("sidePanelName", sidePanelName);
			model.addAttribute("headingName",commonService.encryptionDecryption(headingName, false));
			String returnPage = "clientdashboard"; 
			String query = "";
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			Map<String, Object> var = new HashMap<String, Object>();
			switch(sidePanelName){
				case "dashboard":
					// Member Count
					String mmcount = "SELECT COUNT(*),'' FROM TblMember";
					List<Object[]> countt = clientuserService.getDynamicMultiplecolumnList(mmcount, null,"");
					model.addAttribute("mcount", countt.get(0)[0] );
					// Member Count
					String enqcount = "SELECT COUNT(*),'' FROM Enquiry";
					List<Object[]> enqlist = clientuserService.getDynamicMultiplecolumnList(enqcount, null,"");
					model.addAttribute("ecount", enqlist.get(0)[0] );
					// Packages Sold Us Count Listing
					String pack = "SELECT productName,COUNT(*) AS COT FROM `tbl_m_member` GROUP BY (productName) ORDER  BY COT DESC";
					List<Object[]> packlist = clientuserService.getDynamicMultiplecolumnListSQL(pack, null);
					model.addAttribute("packlist",packlist );
					// Contect Us Listing
					query = "SELECT createdDate,name,description FROM `contact` ORDER BY createdDate DESC LIMIT 6";
					List<Object[]> newList = clientuserService.getDynamicMultiplecolumnListSQL(query,null);
					List<Object[]> finalList = new ArrayList<>();
					
					for (int i = 0; i < newList.size(); i++) {
						Object[] narrObjects = new Object[3]; 
						
						narrObjects[0] = timeAgo(newList.get(i)[0].toString());
						narrObjects[1] = newList.get(i)[1];
						narrObjects[2] = newList.get(i)[2];
						finalList.add(narrObjects);	
					}
					
					model.addAttribute("enqlist",finalList );
					
					String qString = "SELECT rt.createdAt, tm.preMemberName,tm.memberName,rt.remarks,DATE_FORMAT(rt.start_date, \"%d-%m-%Y\"),DATE_FORMAT(rt.end_date, \"%d-%m-%Y\"),rt.total_days,c.city_name FROM `raise_trip` rt LEFT JOIN `tbl_m_member` tm ON tm.id = member_id LEFT JOIN `cities` c ON c.city_id= rt.city_id WHERE tm.isActive=1 ORDER BY rt.createdAt DESC LIMIT 6";
					List<Object[]> newList2 = clientuserService.getDynamicMultiplecolumnListSQL(qString,null);
					List<Object[]> finalList2 = new ArrayList<>();
					
					for (int i = 0; i < newList2.size(); i++) {
						Object[] narrObjects = new Object[8]; 
						
						narrObjects[0] = timeAgo(newList2.get(i)[0].toString());
						narrObjects[1] = newList2.get(i)[1];
						narrObjects[2] = newList2.get(i)[2];
						narrObjects[3] = newList2.get(i)[3];
						narrObjects[4] = newList2.get(i)[4];
						narrObjects[5] = newList2.get(i)[5];
						narrObjects[6] = newList2.get(i)[6];
						narrObjects[7] = newList2.get(i)[7];
						finalList2.add(narrObjects);	
					}
					
					model.addAttribute("raiseTrip",finalList2 );
					
					returnPage = "dashboard";
				break;
				case "calendar":
					returnPage = "calendar";
				break;
				case "profile":
					returnPage = "profile";
				break;
				case "changepassword":
					returnPage = "changepassword";
				break;
			}
			model.addAttribute("messageType", messageType);
			model.addAttribute("clientCode", sessionBean.getCcode());
			model.addAttribute("successMsg", !successMsg.equals("-1") ? environment.getRequiredProperty(successMsg) : "-1");
			return returnPage;
		}catch (Exception ex){
			ex.printStackTrace();
			return "redirect:/logout";
		}
		
	}
	
	@RequestMapping(value="/getCitydetails/{stateId}",method = RequestMethod.GET)
	public @ResponseBody List<Object[]> ListAllEmployeeDetails(@PathVariable Long stateId,HttpServletRequest re){
		return commonService.getStatesorcity(stateId,"city");
	}
	private static com.itextpdf.text.Font ex_indexFont = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 16, Font.BOLD, new BaseColor(105,105,105));
	private static com.itextpdf.text.Font normalFontMenu = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 14, Font.NORMAL, new BaseColor(105,105,105));
	private static com.itextpdf.text.Font sloganFontMenu = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 16, Font.ITALIC, new BaseColor(102,178,255));
	private static com.itextpdf.text.Font normalHeader = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 14, Font.NORMAL, BaseColor.WHITE);
	private static com.itextpdf.text.Font normalbody = new com.itextpdf.text.Font(FontFamily.TIMES_ROMAN, 14, Font.NORMAL, new BaseColor(105,105,105));
	
	@RequestMapping(value="/generateInvoice",method = RequestMethod.GET)
	public void generateExclusiveReport(HttpServletRequest re,HttpServletResponse res) throws Exception {
		try{
			SessionBean sessionBean = (SessionBean) re.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			Long orderId = Long.valueOf(re.getParameter("orderId"));
			String query = "SELECT p.id,p.paymentType,"+ "p.memberCode,p.receiptNo,p.memberName,p.location,p.paymentTowards,p.paymentMode,p.amount,mobileNo,emailId,receivedBy,"
					+ "DATE_FORMAT(p.createdDate,'%d/%m/%Y  %h:%i%p') FROM TblPaymentReceipt p WHERE p.id = "+re.getParameter("orderId")+" ORDER BY p.id DESC";
			Object[] ks = clientuserService.getDynamicMultiplecolumnList(query,null,"").get(0);
			Document document = new Document();
			
			String rootPath = re.getSession().getServletContext().getRealPath("/");
			String datetimeforfile = new SimpleDateFormat("yyyyMMddhhmmss").format(commonService.getServerDateAndTime());
			File outputPath = new File(rootPath+"resources/tempDownload/"+re.getParameter("orderId")+"/");
			if(!outputPath.exists()){if(outputPath.mkdirs()){System.out.println("Directory Created!!!");}else{System.out.println("Error!!!");}}
			/*FileUtils.cleanDirectory(outputPath); */
			File pdfFile = new File(outputPath+"/Invoice_"+ks[3]+".pdf");
			
			PdfWriter writer=PdfWriter.getInstance(document, new FileOutputStream(pdfFile));
			RedBorder event = new RedBorder();
			writer.setPageEvent(event);
			document.open();
			document.setMargins(15, 15, 40, 40);
			
			
			String IMGBORDER1 = re.getSession().getServletContext().getRealPath("/resources/img/logo.png");
			
			PdfPTable tablemain = new PdfPTable(2);
			tablemain.setWidthPercentage(100);
			float[] s={0.33f,0.64f};
			tablemain.setWidths(s);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
			Image image = Image.getInstance(IMGBORDER1);
			//tablemain.setTableEvent(new ImageBackgroundEventForMenucategory(image));
			
			PdfPCell tcellmain = new PdfPCell(image); tcellmain.setPaddingBottom(10);tcellmain.setBorderColor(new BaseColor(220,220,220));
		    tcellmain.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain.setBorder(Rectangle.BOTTOM);
		    tcellmain.setPaddingTop(20);tablemain.addCell(tcellmain);
		    
		    PdfPCell tcellmaina = new PdfPCell(new Paragraph("Payment Receipt",ex_indexFont)); tcellmaina.setPaddingBottom(10);tcellmaina.setBorderColor(new BaseColor(220,220,220));
		    tcellmaina.setHorizontalAlignment(Element.ALIGN_RIGHT);tcellmaina.setBorder(Rectangle.BOTTOM);tcellmaina.setPaddingRight(30);
		    tcellmaina.setPaddingTop(40);tablemain.addCell(tcellmaina);
			
			document.add(tablemain);
			
			tablemain = new PdfPTable(1);
			tablemain.setWidthPercentage(100);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
			
			Paragraph p = new Paragraph();
		    Chunk ch1 = new Chunk("Dear "+ks[4]+",\nYour Payment of your membership has been placed on " , normalFontMenu);Chunk ch2 = new Chunk(" www.karmahospitality.in", sloganFontMenu);
		    p.add(ch1);p.add(ch2);
			
			tcellmain = new PdfPCell(p); tcellmain.setPaddingBottom(20);tcellmain.setBorderColor(new BaseColor(220,220,220));
		    tcellmain.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmain.setBorder(Rectangle.BOTTOM);
		    tcellmain.setPaddingLeft(15);tcellmain.setPaddingTop(20);tablemain.addCell(tcellmain);
		    
		    document.add(tablemain);
		    
		    tablemain = new PdfPTable(4);
			tablemain.setWidthPercentage(100);
			float[] s2={0.12f,0.38f,0.12f,0.38f};
			tablemain.setWidths(s2);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
		    
			image = Image.getInstance(re.getSession().getServletContext().getRealPath("/resources/img/document.png"));
			Image imagehome = Image.getInstance(re.getSession().getServletContext().getRealPath("/resources/img/home.png"));
			
			tcellmain = new PdfPCell(image); tcellmain.setPaddingBottom(20);
		    tcellmain.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain.setBorder(PdfPCell.NO_BORDER);
		    tcellmain.setPaddingTop(20);tablemain.addCell(tcellmain);
		    
		    p = new Paragraph();
		    ch1 = new Chunk("Invoice Sent To \n" , normalFontMenu);ch2 = new Chunk("Member Name : "+ks[4], ex_indexFont);
		    p.add(ch1);p.add(ch2);
		    tcellmaina = new PdfPCell(p); tcellmaina.setPaddingBottom(20); tcellmaina.setPaddingRight(30);
		    tcellmaina.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmaina.setBorder(Rectangle.RIGHT);tcellmaina.setBorderColor(new BaseColor(220,220,220));
		    tcellmaina.setPaddingTop(20);tablemain.addCell(tcellmaina);
		    
		    PdfPCell tcellmain1 = new PdfPCell(imagehome); tcellmain1.setPaddingBottom(20);tcellmain1.setPaddingLeft(10);
		    tcellmain1.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain1.setBorder(PdfPCell.NO_BORDER);
		    tcellmain1.setPaddingTop(20);tablemain.addCell(tcellmain1);
		    
		    Paragraph p1 = new Paragraph();
		    Chunk ch11 = new Chunk("Receipt Sent From \n" , normalFontMenu);Chunk ch21 = new Chunk("KARMA RESORTS & HOSPITALITY LLP. ", ex_indexFont);
		    p1.add(ch11);p1.add(ch21);
		    PdfPCell tcellmaina1 = new PdfPCell(p1); tcellmaina1.setPaddingBottom(20); tcellmaina1.setPaddingRight(30);
		    tcellmaina1.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmaina1.setBorder(PdfPCell.NO_BORDER);tcellmaina1.setPaddingLeft(10);
		    tcellmaina1.setPaddingTop(20);tablemain.addCell(tcellmaina1);
		    
		    p = new Paragraph();
		    ch1 = new Chunk("Mo. : "+ks[9]+" \n" , normalFontMenu);ch2 = new Chunk("Email : "+ks[10], sloganFontMenu);
		    p.add(ch1);p.add(ch2);
		    PdfPCell tcellmaina2 = new PdfPCell(p); tcellmaina2.setPaddingBottom(20); tcellmaina2.setPaddingRight(30);tcellmaina2.setColspan(2);
		    tcellmaina2.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmaina2.setBorder(Rectangle.RIGHT | Rectangle.BOTTOM);tcellmaina2.setBorderColor(new BaseColor(220,220,220));
		    tcellmaina2.setPaddingLeft(15);tcellmaina2.setPaddingTop(20);tablemain.addCell(tcellmaina2);
		    
		    p = new Paragraph();
		    ch2 = new Chunk("Email : info@karmahospitality.in", sloganFontMenu);
		    p.add(ch2);
		    PdfPCell tcellmaina3 = new PdfPCell(p); tcellmaina3.setPaddingBottom(20); tcellmaina3.setPaddingRight(30);tcellmaina3.setColspan(2);
		    tcellmaina3.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmaina3.setBorder(Rectangle.RIGHT | Rectangle.BOTTOM);tcellmaina3.setBorderColor(new BaseColor(220,220,220));
		    tcellmaina3.setPaddingLeft(15);tcellmaina3.setPaddingTop(20);tablemain.addCell(tcellmaina3);
			
		    document.add(tablemain);
		    
		    
		    tablemain = new PdfPTable(6);
			tablemain.setWidthPercentage(100);
			float[] s3={0.08f,0.25f,0.08f,0.26f,0.08f,0.25f};
			tablemain.setWidths(s3);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
		    
			image = Image.getInstance(re.getSession().getServletContext().getRealPath("/resources/img/barcode.png"));
			imagehome = Image.getInstance(re.getSession().getServletContext().getRealPath("/resources/img/calender.png"));
			Image imagerupee = Image.getInstance(re.getSession().getServletContext().getRealPath("/resources/img/rupee.png"));
			
			tcellmain = new PdfPCell(image); tcellmain.setPaddingBottom(20);
		    tcellmain.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain.setBorder(PdfPCell.NO_BORDER);
		    tcellmain.setPaddingTop(20);tablemain.addCell(tcellmain);
		    
		    p = new Paragraph();
		    ch1 = new Chunk("Receipt No \n" , normalFontMenu);ch2 = new Chunk("#"+ks[3].toString(), ex_indexFont);
		    p.add(ch1);p.add(ch2);
		    tcellmaina = new PdfPCell(p); tcellmaina.setPaddingBottom(20); tcellmaina.setPaddingRight(30);
		    tcellmaina.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmaina.setBorder(Rectangle.RIGHT);tcellmaina.setBorderColor(new BaseColor(220,220,220));
		    tcellmaina.setPaddingTop(20);tablemain.addCell(tcellmaina);
		    
		    tcellmain1 = new PdfPCell(imagehome); tcellmain1.setPaddingBottom(20);tcellmain1.setPaddingLeft(10);
		    tcellmain1.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain1.setBorder(PdfPCell.NO_BORDER);
		    tcellmain1.setPaddingTop(20);tablemain.addCell(tcellmain1);
		    
		    p1 = new Paragraph();
		    ch11 = new Chunk("Receipt Date \n" , normalFontMenu);ch21 = new Chunk(commonService.dateToString("dd/MM/yyyy HH:mm aa", commonService.getServerDateAndTime()), ex_indexFont);
		    p1.add(ch11);p1.add(ch21);
		    tcellmaina1 = new PdfPCell(p1); tcellmaina1.setPaddingBottom(20); tcellmaina1.setPaddingRight(30);
		    tcellmaina1.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmaina1.setPaddingLeft(10);tcellmaina1.setBorder(Rectangle.RIGHT);
		    tcellmaina1.setBorderColor(new BaseColor(220,220,220));tcellmaina1.setPaddingTop(20);tablemain.addCell(tcellmaina1);
		    
		    PdfPCell tcellmain2 = new PdfPCell(imagerupee); tcellmain2.setPaddingBottom(20);tcellmain2.setPaddingLeft(10);
		    tcellmain2.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain2.setBorder(PdfPCell.NO_BORDER);
		    tcellmain2.setPaddingTop(20);tablemain.addCell(tcellmain2);
		    
		    p1 = new Paragraph();
		    ch11 = new Chunk("Receipt Total \n" , normalFontMenu);ch21 = new Chunk("Rs. "+(ks[8]), ex_indexFont);
		    p1.add(ch11);p1.add(ch21);
		    tcellmaina1 = new PdfPCell(p1); tcellmaina1.setPaddingBottom(20); tcellmaina1.setPaddingRight(30);
		    tcellmaina1.setHorizontalAlignment(Element.ALIGN_LEFT);tcellmaina1.setBorder(PdfPCell.NO_BORDER);tcellmaina1.setPaddingLeft(10);
		    tcellmaina1.setPaddingTop(20);tablemain.addCell(tcellmaina1);
		    
		    
		    document.add(tablemain);
		    
		    tablemain = new PdfPTable(3);
			tablemain.setWidthPercentage(100);
			float[] s4={0.5f,0.25f,0.25f};
			tablemain.setWidths(s4);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
		    
			tcellmaina1 = new PdfPCell(new Paragraph("Description",normalHeader));tcellmaina1.setPaddingBottom(20);tcellmaina1.setBackgroundColor(new BaseColor(102,178,255));
			tcellmaina1.setBorderColor(new BaseColor(220,220,220));tcellmaina1.setPaddingTop(10);tcellmaina1.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina1);
			
			tcellmaina2 = new PdfPCell(new Paragraph("Quantity",normalHeader));tcellmaina2.setPaddingBottom(20);tcellmaina2.setBackgroundColor(new BaseColor(102,178,255));
			tcellmaina2.setBorderColor(new BaseColor(220,220,220));tcellmaina2.setPaddingTop(10);tcellmaina2.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina2);
			
			tcellmaina3 = new PdfPCell(new Paragraph("Total",normalHeader));tcellmaina3.setPaddingBottom(20);tcellmaina3.setBackgroundColor(new BaseColor(102,178,255));
			tcellmaina3.setBorderColor(new BaseColor(220,220,220));tcellmaina3.setPaddingTop(10);tcellmaina3.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina3);
			
			PdfPCell tcellmaina4 = new PdfPCell(new Paragraph("KARMA RESORTS & HOSPITALITY MEMBERSHIP ",normalbody));tcellmaina4.setPaddingBottom(20);tcellmaina4.setBackgroundColor(new BaseColor(248,248,248));
			tcellmaina4.setBorderColor(new BaseColor(220,220,220));tcellmaina4.setPaddingTop(10);tcellmaina4.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina4);
			
			PdfPCell tcellmaina5 = new PdfPCell(new Paragraph(" 1 ",normalbody));tcellmaina5.setPaddingBottom(20);tcellmaina5.setBackgroundColor(new BaseColor(248,248,248));
			tcellmaina5.setBorderColor(new BaseColor(220,220,220));tcellmaina5.setPaddingTop(10);tcellmaina5.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina5);
			
			PdfPCell tcellmaina6 = new PdfPCell(new Paragraph(""+ks[8],normalbody));tcellmaina6.setPaddingBottom(20);tcellmaina6.setBackgroundColor(new BaseColor(248,248,248));
			tcellmaina6.setBorderColor(new BaseColor(220,220,220));tcellmaina6.setPaddingTop(10);tcellmaina6.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina6);
			
			
			PdfPCell tcellmaina13 = new PdfPCell(new Paragraph(" ",normalHeader));tcellmaina13.setPaddingBottom(20);tcellmaina13.setBackgroundColor(new BaseColor(248,248,248));
			tcellmaina13.setBorderColor(new BaseColor(220,220,220));tcellmaina13.setPaddingTop(10);tcellmaina13.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina13);
			
			PdfPCell tcellmaina14 = new PdfPCell(new Paragraph("Total",normalHeader));tcellmaina14.setPaddingBottom(20);tcellmaina14.setBackgroundColor(new BaseColor(102,178,255));
			tcellmaina14.setBorderColor(new BaseColor(220,220,220));tcellmaina14.setPaddingTop(10);tcellmaina14.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina14);
			
			PdfPCell tcellmaina15 = new PdfPCell(new Paragraph(""+ks[8],normalHeader));tcellmaina15.setPaddingBottom(20);tcellmaina15.setBackgroundColor(new BaseColor(102,178,255));
			tcellmaina15.setBorderColor(new BaseColor(220,220,220));tcellmaina15.setPaddingTop(10);tcellmaina15.setHorizontalAlignment(Element.ALIGN_CENTER);tablemain.addCell(tcellmaina15);
			
			document.add(tablemain);
			 
			
			tablemain = new PdfPTable(1);
			tablemain.setWidthPercentage(100);
			tablemain.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
			
			p = new Paragraph();
		    ch1 = new Chunk("Payment Method: ", ex_indexFont);ch2 = new Chunk(ks[7]+"", normalFontMenu);
		    p.add(ch1);p.add(ch2);
			
			tcellmain = new PdfPCell(p); tcellmain.setPaddingBottom(3);
		    tcellmain.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain.setBorder(PdfPCell.NO_BORDER);
		    tcellmain.setPaddingTop(10);tablemain.addCell(tcellmain);
		    
		    p = new Paragraph();
		    ch1 = new Chunk("Payment Towards: ", ex_indexFont);ch2 = new Chunk(ks[6]+"", normalFontMenu);
		    p.add(ch1);p.add(ch2);
			
			PdfPCell tcellmain11 = new PdfPCell(p); tcellmain11.setPaddingBottom(10);
			tcellmain11.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain11.setBorder(PdfPCell.NO_BORDER);
			tcellmain11.setPaddingTop(10);tablemain.addCell(tcellmain11);
		    
		    tcellmain1 = new PdfPCell(new Paragraph("www.karmahospitality.in",sloganFontMenu)); tcellmain1.setPaddingBottom(5);
		    tcellmain1.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain1.setBorder(PdfPCell.NO_BORDER);
		    tcellmain1.setPaddingTop(15);tablemain.addCell(tcellmain1);
		    
		    tcellmain2 = new PdfPCell(new Paragraph("info@karmahospitality.in",sloganFontMenu));
		    tcellmain2.setHorizontalAlignment(Element.ALIGN_CENTER);tcellmain2.setBorder(PdfPCell.NO_BORDER);
		    tablemain.addCell(tcellmain2);
		    
		    document.add(tablemain);
		    
			document.close();
			
		    /*setWatermark(re.getSession().getServletContext().getRealPath(sessionBean.getLogo() != null && !sessionBean.getLogo().equals("") ? ("/resources/"+sessionBean.getLogo()) : ("/resources/image/noimage.png")),outputPath,pdfFile.getName(),"/ExclusiveMenu_"+datetimeforfile+".pdf");*/
		    commonService.downloadDocument(re,res,outputPath.getAbsolutePath()+"/Invoice_"+ks[3]+".pdf");
		    System.out.println(new File(outputPath.getAbsolutePath()+"/Invoice_"+ks[3]+".pdf").delete());
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	public class RedBorder extends PdfPageEventHelper {
	    @Override
	    public void onEndPage(PdfWriter writer, Document document) {
	    	document.setMargins(20, 20, 20, 20);
	        PdfContentByte canvas = writer.getDirectContent();
	        Rectangle rect = document.getPageSize();
	        rect.setBorder(Rectangle.BOX); // left, right, top, bottom border
	        rect.setBorderWidth(30); // a width of 5 user units
	        rect.setBorderColor(new BaseColor(105,105,105)); // a red border
	        rect.setUseVariableBorders(true); // the full width will be visible
	        canvas.rectangle(rect);
	    }
	}
	public String timeAgo(String dateTimeString) throws ParseException {
		SimpleDateFormat formatter6 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date past = formatter6.parse(dateTimeString);
		Date now = new Date();

		System.out.println(TimeUnit.MILLISECONDS.toMillis(now.getTime() - past.getTime()) + " milliseconds ago");
		System.out.println(TimeUnit.MILLISECONDS.toSeconds(now.getTime() - past.getTime()) + " seconds ago");
		System.out.println(TimeUnit.MILLISECONDS.toMinutes(now.getTime() - past.getTime()) + " minutes ago");
		System.out.println(TimeUnit.MILLISECONDS.toHours(now.getTime() - past.getTime()) + " hours ago");
		System.out.println(TimeUnit.MILLISECONDS.toDays(now.getTime() - past.getTime()) + " days ago");
		System.out.println("-----------------------------------");

		if (TimeUnit.MILLISECONDS.toMillis(now.getTime() - past.getTime()) < 60000) {
			return ("Just Now !");
		}
		if (TimeUnit.MILLISECONDS.toMinutes(now.getTime() - past.getTime()) < 60) {
			return (TimeUnit.MILLISECONDS.toMinutes(now.getTime() - past.getTime()) + " minutes ago");
		}
		if (TimeUnit.MILLISECONDS.toHours(now.getTime() - past.getTime()) <= 24) {
			return (TimeUnit.MILLISECONDS.toHours(now.getTime() - past.getTime()) + " hours ago");
		}
		if (TimeUnit.MILLISECONDS.toHours(now.getTime() - past.getTime()) > 24) {
			return (TimeUnit.MILLISECONDS.toDays(now.getTime() - past.getTime()) + " days ago");
		}
		return "Time Ago";

	}
}
