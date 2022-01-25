package com.system.justfeedback.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.opencsv.CSVWriter;
import com.system.justfeedback.services.ClientuserService;
import com.system.justfeedback.services.CommonService;

@RestController
@SessionAttributes("roles")
@RequestMapping("/report/")
@PropertySource(value = { "classpath:resources/auditrailMessages.properties","classpath:resources/link.properties","classpath:resources/messages.properties" })
public class ReportController {
	@Autowired
	ClientuserService clientuserService;
	
	@Autowired
	CommonService commonService;
	
	@Autowired
	ClientController clientController;
	
	@Autowired
    private Environment environment;
	
	@RequestMapping(value="/exportreport/{reportId}",method = RequestMethod.GET)
	public void exportreport(@PathVariable("reportId")String reportId,HttpServletRequest re,HttpServletResponse res) throws Exception {
		try{
			List<Object[]> sqlst = new ArrayList<>();
			String datetimeforfile = new SimpleDateFormat("yyyyMMddhhmmss").format(commonService.getServerDateAndTime());
			String rootPath = re.getSession().getServletContext().getRealPath("/");
			File outputPath = new File(rootPath+"resources/tempDownload/report/");
			if(!outputPath.exists()){if(outputPath.mkdirs()){System.out.println("Directory Created!!!");}else{System.out.println("Error!!!");}}
			String fname = "";
			switch(reportId){
				case "memberReport":
					String where = "";
					sqlst.add(new Object[]{"MAF DATE","CREATE DATE","APPROVED DATE","APPROVED STATUS","START DATE","END DATE","MEMBER ID","MEMBERSHIP NAME","MEMBERSHIP STATUS","MEMBER TYPE","CO APPLICANT NAME","PRODUCT NAME","PRODUCT SUB TYPE","PRODUCT OFFER","TENURE","ACTUAL PRICE","DOWN PAYMENT","EMI AMOUNT","PENDING AMOUNT","TOTAL AMOUNT RECEIVED","STATUS OF PLC","CONTROL LOCATION","SALES BRANCH","SALES AGENT CODE","SALES AGENT NAME","REPORTING MANAGER NAME","TMEName","UTILIZE DAYS","BALANCE DAYS","KYC","KYC NO","WELCOME CALL UPLODED","WELCOME KIT","DOCUMENTS","ASF","REMARKS"});
					if(!re.getParameter("fromdate").equals("-1") && !re.getParameter("todate").equals("-1")){
						where = "HAVING MIN(m.createdAt) >= '"+re.getParameter("fromdate")+" 00:00:01' AND MIN(m.createdAt) <= '"+re.getParameter("todate")+" 23:59:45'";
					}
					if(!re.getParameter("sb").equals("-1")){
						where = where.equals("") ? "HAVING MIN(m.salesBranch) = '"+re.getParameter("sb")+"'" : where+" AND MIN(m.salesBranch) = '"+re.getParameter("sb")+"'";
					}
					String sql = "SELECT DATE_FORMAT(MIN(m.mAFSignedDate),'%d/%m/%Y'),DATE_FORMAT(MIN(m.createdAt),'%d/%m/%Y'),DATE_FORMAT(MIN(m.approvalDate),'%d/%m/%Y'),CASE WHEN MIN(m.STATUS) = 1 THEN 'Approved' ELSE 'Pending' END AS IsApproved, "
							   + " DATE_FORMAT(MIN(m.startDate),'%d/%m/%Y'),DATE_FORMAT(MIN(m.endDate),'%d/%m/%Y'),MIN(m.membercode),MIN(m.membername),CASE WHEN MIN(m.isActive) = 1 THEN 'Active' ELSE 'InActive' END AS IsActive, "
							   + " MIN(m.memberType),MIN(m.coAppDetails),MIN(m.productName),MIN(m.productSubType),MIN(m.premiumOption),MIN(m.tenure),MIN(m.sellingprice),(SELECT SUM(dd.amount) FROM tbl_m_downpayment dd WHERE dd.memberId = MIN(m.id) AND dd.status = 'RZ' GROUP BY dd.memberId) as downpay,MIN(m.emIAmount), "
							   + " MIN(m.sellingprice)-((CASE WHEN SUM(emi.amount) IS NULL THEN 0 ELSE ROUND(SUM(emi.amount),2) END)+(SELECT SUM(dd.amount) FROM tbl_m_downpayment dd WHERE dd.memberId = MIN(m.id) AND dd.status = 'RZ' GROUP BY dd.memberId)) AS pendingAmount "
							   + " ,((CASE WHEN SUM(emi.amount) IS NULL THEN 0 ELSE ROUND(SUM(emi.amount),2) END)+(SELECT SUM(dd.amount) FROM tbl_m_downpayment dd WHERE dd.memberId = MIN(m.id) AND dd.status = 'RZ' GROUP BY dd.memberId)) AS receivedAmount, "
							   + " MIN(m.statusOfPLC),MIN(m.controlLocation),MIN(m.salesBranch),MIN(m.salesAgentId),MIN(m.salesAgentName),MIN(m.reportingManager),MIN(m.tMEName), "
							   + " CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END AS UtilizedDays,(MIN(m.planDays)-MIN(UtilizedDays)) AS BalanceDays, "
							   + " MIN(m.kYC),MIN(m.kYCNo),CASE WHEN COUNT(c.memberid) = 0 THEN 'NO' ELSE 'YES' END AS isCallFile,CASE WHEN MIN(co.cname) IS NOT NULL AND MIN(co.cname) <> ''"
							   + " THEN 'YES' ELSE 'NO' END AS welcomeKit,CASE WHEN MIN(documentPath) IS NOT NULL AND MIN(documentPath) <> '' THEN 'YES' ELSE 'NO' END AS kycDocument"
							   + " ,MIN(m.asF),MIN(m.remarks) "
							   + " FROM tbl_m_member m LEFT JOIN tbl_emi_payments emi ON m.id = emi.memberId AND emi.paymentStatus = 'RZ' LEFT JOIN tbl_m_downpayment dp ON m.id = dp.memberId "
							   + " LEFT JOIN tbl_t_reservation r ON m.id = r.memberId AND r.resType = 'Regular'"
							   + " LEFT JOIN tbl_m_callfile c "
							   + " ON m.id = c.memberId LEFT JOIN tbl_courierdetails co ON m.id = co.memberId GROUP BY emi.memberId,dp.memberId,r.memberId,c.memberId,co.memberId "+where;
					sqlst.addAll(clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					fname = "MemberReport_"+datetimeforfile+".csv";
					break;
				case "emiReport":
					where = "";
					sqlst.add(new Object[]{"Member Code","Member Name","Amount","Payment Mode","Trans.No.","Date","Status","Sales Agent Name","Reporting Manager","Remarks"});
					if(!re.getParameter("fromdate").equals("-1") && !re.getParameter("todate").equals("-1")){
						where = "WHERE m.createdAt >= '"+re.getParameter("fromdate")+" 00:00:01' AND m.createdAt <= '"+re.getParameter("todate")+" 23:59:45'";
					}
					if(!re.getParameter("sb").equals("-1")){
						where = where.equals("") ? "WHERE m.salesBranch = '"+re.getParameter("sb")+"'" : where+" AND m.salesBranch = '"+re.getParameter("sb")+"'";
					}
					if(!re.getParameter("st").equals("-1")){
						where = where.equals("") ? "WHERE emi.paymentStatus = '"+re.getParameter("st")+"'" : where+" AND emi.paymentStatus = '"+re.getParameter("st")+"'";
					}
					sql = "SELECT m.memberCode,m.memberName,emi.amount,emi.paymentMode,emi.chequeNo,CASE WHEN emi.emidate IS NULL THEN '' ELSE DATE_FORMAT(emi.emidate,'%d/%m/%Y') END,"
						+ " emi.paymentStatus,m.salesAgentName,m.reportingManager,emi.others FROM tbl_emi_payments emi INNER JOIN tbl_m_member m ON emi.memberId = m.id " + where;
					sqlst.addAll(clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					fname = "EMIReport_"+datetimeforfile+".csv";
					break;
				case "asfReport":
					where = "";
					sqlst.add(new Object[]{"Member Code","Member Name","Amount","ASF Date"});
					if(!re.getParameter("fromdate").equals("-1") && !re.getParameter("todate").equals("-1")){
						where = "WHERE m.createdAt >= '"+re.getParameter("fromdate")+" 00:00:01' AND m.createdAt <= '"+re.getParameter("todate")+" 23:59:45'";
					}
					if(!re.getParameter("sb").equals("-1")){
						where = where.equals("") ? "WHERE m.salesBranch = '"+re.getParameter("sb")+"'" : where+" AND m.salesBranch = '"+re.getParameter("sb")+"'";
					}
					/*if(!re.getParameter("st").equals("-1")){
						where = where.equals("") ? "WHERE asf.status = '"+re.getParameter("st")+"'" : where+" AND asf.status = '"+re.getParameter("st")+"'";
					}*/
					sql = "SELECT m.memberCode,m.memberName,asf.amount,CASE WHEN asf.aSFDate IS NULL THEN '' ELSE DATE_FORMAT(asf.aSFDate,'%d/%m/%Y') END FROM"
						+ " tbl_m_asf asf INNER JOIN tbl_m_member m ON asf.memberId = m.id " + where;
					sqlst.addAll(clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					fname = "ASFReport_"+datetimeforfile+".csv";
					break;
				case "resReport":
					where = "";
					sqlst.add(new Object[]{"Member Code","Member Name","HolidayBooked","AppBooked","TravelingPerson","CheckInDate","CheckOutDate","Duration","ResType","ActualPrice","CreatedDate"});
					if(!re.getParameter("fromdate").equals("-1") && !re.getParameter("todate").equals("-1")){
						where = "WHERE m.createdAt >= '"+re.getParameter("fromdate")+" 00:00:01' AND m.createdAt <= '"+re.getParameter("todate")+" 23:59:45'";
					}
					if(!re.getParameter("sb").equals("-1")){
						where = where.equals("") ? "WHERE m.salesBranch = '"+re.getParameter("sb")+"'" : where+" AND m.salesBranch = '"+re.getParameter("sb")+"'";
					}
					sql = "SELECT m.memberCode,m.memberName,res.upHolidayBooked,res.appBooked,res.travelingPerson,CASE WHEN res.checkIn IS NULL THEN '' ELSE DATE_FORMAT(res.checkIn,'%d/%m/%Y') END,"
						+ " CASE WHEN res.checkOut IS NULL THEN '' ELSE DATE_FORMAT(res.checkOut,'%d/%m/%Y') END,res.duration,res.resType,res.actualPrice,CASE WHEN res.createdAt IS NULL THEN '' ELSE DATE_FORMAT(res.createdAt,'%d/%m/%Y') END "
						+ " FROM tbl_t_reservation res INNER JOIN tbl_m_member m ON res.memberId = m.id "+ where;
					sqlst.addAll(clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					fname = "ReservationReport_"+datetimeforfile+".csv";
					break;
				case "agreements":
					where = "";
					sqlst.add(new Object[]{"Member Code","Product Name","Member Name","EmailId","Phone","DOB","CreatedDate"});
					sql = "SELECT membercode,productName,concat(preMemberName,' ',memberName),emailId,mobileNo,DATE_FORMAT(doB,'%d/%m/%Y'),DATE_FORMAT(createdAt,'%d/%m/%Y') FROM tbl_m_member WHERE status = 1 and isActive = 1 AND productName <> '"+environment.getProperty("verificationproduct")+"'";
					sqlst.addAll(clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					fname = "AgreementReport_"+datetimeforfile+".csv";
					break;
					
				case "lockdown":
					where = "";
					sqlst.add(new Object[]{"Member Code","Product Name","Member Name","EmailId","Phone","DOB","CreatedDate"});
					sql = "SELECT m.membercode,m.productName,concat(m.preMemberName,' ',m.memberName),m.emailId,m.mobileNo,DATE_FORMAT(m.doB,'%d/%m/%Y'),DATE_FORMAT(m.createdAt,'%d/%m/%Y') FROM tbl_m_member m INNER JOIN tbl_m_user u ON m.id = u.memberId WHERE m.status = 1 AND m.isActive = 1 AND u.isAgree = 1 AND m.productName = '"+environment.getProperty("verificationproduct")+"'";
					sqlst.addAll(clientuserService.getDynamicMultiplecolumnListSQL(sql, null));
					fname = "LockdownAgreementReport_"+datetimeforfile+".csv";
					break;
			}
			exportCSV(sqlst,outputPath+"/"+fname);
			commonService.downloadDocument(re,res,outputPath+"/"+fname);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void exportCSV(List<Object[]> list,String fullfilepath) throws IOException{
		 List<String[]> csvData = objecttoString(list);
	        try (CSVWriter writer = new CSVWriter(new FileWriter(fullfilepath))) {
	            writer.writeAll(csvData);
	        }
	}
	public List<String[]> objecttoString(List<Object[]> sqlst){
		List<String[]> finalarray = new ArrayList<>();
		for (int i = 0; i < sqlst.size(); i++) {
			String[] arr = new String[sqlst.get(i).length];
			for (int j = 0; j < sqlst.get(i).length; j++) {
				arr[j] = sqlst.get(i)[j] != null && !sqlst.get(i)[j].toString().equals("NULL") ? sqlst.get(i)[j].toString() : "";
			}
			finalarray.add(arr);
			arr = null;
		}
		return finalarray;
	}
}
