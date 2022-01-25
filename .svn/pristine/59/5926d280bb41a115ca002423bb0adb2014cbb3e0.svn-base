package com.system.justfeedback.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;
import com.system.justfeedback.daos.AdminImageDao;
import com.system.justfeedback.daos.AdminResortImageDao;
import com.system.justfeedback.daos.AdminResortsDao;
import com.system.justfeedback.daos.AdminVideoDao;
import com.system.justfeedback.daos.BannerDao;
import com.system.justfeedback.daos.CampaignMasterDao;
import com.system.justfeedback.daos.CareerDao;
import com.system.justfeedback.daos.CategoryDao;
import com.system.justfeedback.daos.CityDao;
import com.system.justfeedback.daos.ClientuserDao;
import com.system.justfeedback.daos.CustomerDao;
import com.system.justfeedback.daos.CustomerPayDao;
import com.system.justfeedback.daos.EmiDao;
import com.system.justfeedback.daos.EmployeeDao;
import com.system.justfeedback.daos.EnquiryDao;
import com.system.justfeedback.daos.HibernateQueryDao;
import com.system.justfeedback.daos.JoinUsDao;
import com.system.justfeedback.daos.OfferMasterDao;
import com.system.justfeedback.daos.Operation_enum;
import com.system.justfeedback.daos.PaymentloginDao;
import com.system.justfeedback.daos.ProductDao;
import com.system.justfeedback.daos.RaiseTripDao;
import com.system.justfeedback.daos.SMSLogsDao;
import com.system.justfeedback.daos.SaleBranchDao;
import com.system.justfeedback.daos.StatesDao;
import com.system.justfeedback.daos.SubcategoryDao;
import com.system.justfeedback.daos.TblAgreementDao;
import com.system.justfeedback.daos.TblAsfDao;
import com.system.justfeedback.daos.TblCallfileDao;
import com.system.justfeedback.daos.TblCourierDao;
import com.system.justfeedback.daos.TblEmiDao;
import com.system.justfeedback.daos.TblMemberDao;
import com.system.justfeedback.daos.TblPaymentModeDao;
import com.system.justfeedback.daos.TblPaymentReceiptDao;
import com.system.justfeedback.daos.TblPlcStatusDao;
import com.system.justfeedback.daos.TblProductsDao;
import com.system.justfeedback.daos.TblReservationDao;
import com.system.justfeedback.daos.TblTicketDao;
import com.system.justfeedback.daos.TblSalesStatusDao;
import com.system.justfeedback.daos.TblTicketDao;
import com.system.justfeedback.daos.TblTicketDetailsDao;
import com.system.justfeedback.daos.TblUserDao;
import com.system.justfeedback.daos.TblWcStatusDao;
import com.system.justfeedback.daos.TestimonialDao;
import com.system.justfeedback.daos.UpgradePlanDao;
import com.system.justfeedback.daos.UserLangDao;
import com.system.justfeedback.daos.UsersDao;
import com.system.justfeedback.daos.VideoSlideDao;
import com.system.justfeedback.daos.WebsiteOffersDao;
import com.system.justfeedback.model.AdminImages;
import com.system.justfeedback.model.AdminVideo;
import com.system.justfeedback.model.Banner;
import com.system.justfeedback.model.CampaignMaster;
import com.system.justfeedback.model.Career;
import com.system.justfeedback.model.Category;
import com.system.justfeedback.model.ClientUser;

import com.system.justfeedback.model.CustomerPay;
import com.system.justfeedback.model.Customermaster;
import com.system.justfeedback.model.Emimaster;
import com.system.justfeedback.model.Employee;
import com.system.justfeedback.model.Enquiry;
import com.system.justfeedback.model.JoinUs;
import com.system.justfeedback.model.OfferMaster;
import com.system.justfeedback.model.Paymentlogin;
import com.system.justfeedback.model.Product;
import com.system.justfeedback.model.RaiseTrip;
import com.system.justfeedback.model.ResortImages;
import com.system.justfeedback.model.Resorts;
import com.system.justfeedback.model.SMSLogs;
import com.system.justfeedback.model.SaleBranch;
import com.system.justfeedback.model.States;
import com.system.justfeedback.model.Subcategory;
import com.system.justfeedback.model.TblAgreement;
import com.system.justfeedback.model.TblAsf;
import com.system.justfeedback.model.TblCallfile;
import com.system.justfeedback.model.TblCourier;
import com.system.justfeedback.model.TblEmi;
import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblPaymentMode;
import com.system.justfeedback.model.TblPaymentReceipt;
import com.system.justfeedback.model.TblPlcStatus;
import com.system.justfeedback.model.TblProducts;
import com.system.justfeedback.model.TblReservation;
import com.system.justfeedback.model.TblTicket;
import com.system.justfeedback.model.TblSalesStatus;
import com.system.justfeedback.model.TblTicket;
import com.system.justfeedback.model.TblTicketDetails;
import com.system.justfeedback.model.TblUser;
import com.system.justfeedback.model.TblWcStatus;
import com.system.justfeedback.model.Testimonial;
import com.system.justfeedback.model.UserLang;
import com.system.justfeedback.model.Users;
import com.system.justfeedback.model.VideoSlide;
import com.system.justfeedback.model.Websiteoffers;
import com.system.justfeedback.model.city;
import com.system.justfeedback.model.upgradeMembership;

/**
 * @author Keval.soni 
 */
@Service
public class ClientuserService {
	
	@Autowired
	HibernateQueryDao hibernateQueryDao;
	
	@Autowired
	ClientuserDao clientuserDao;
	
	@Autowired
	CustomerDao customerDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	CommonService commonService;
	
	@Autowired
	UsersDao usersDao;
	
	@Autowired
	UserLangDao userLangDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	SubcategoryDao subcategoryDao;
	
	@Autowired
	TblProductsDao tblProductsDao;
	
	@Autowired
	SaleBranchDao saleBrachDao;
	
	@Autowired
	EmployeeDao employeeDao;
	
	@Autowired
	TblMemberDao tblMemberDao;
	
	@Autowired
	TblCourierDao tblCourierDao;
	
	@Autowired
	TblEmiDao tblEmiDao;
	
	@Autowired
	TblAsfDao tblAsfDao;
	
	@Autowired
	CustomerPayDao customerPayDao;
	
	@Autowired
	BannerDao bannerDao;
	
	@Autowired
	SMSLogsDao sMSLogsDao;
	
	@Autowired
	TestimonialDao testimonialDao;
	
	@Autowired
	TblReservationDao tblReservationDao;
	
	@Autowired
	VideoSlideDao videoSlideDao;
	
	@Autowired
	EnquiryDao enquiryDao;
	
	@Autowired
	TblTicketDao tblTicketDao;
	
	@Autowired
	TblTicketDetailsDao tblTicketDetailsDao;
	
	@Autowired
	TblCallfileDao tblCallfileDao;
	
	@Autowired
	TblAgreementDao tblAgreementDao;
	
	@Autowired
	TblPaymentReceiptDao tblPaymentReceiptDao;
	
	@Autowired
	JoinUsDao joinUsDao;
	
	@Autowired
	TblUserDao tblUserDao;
	
	@Autowired
	CampaignMasterDao campaignMasterDao;
	
	@Autowired
	TblPaymentModeDao tblPaymentModeDao;
	
	@Autowired
	OfferMasterDao offerMasterDao;
	
	@Autowired
	StatesDao statesDao;
	
	@Autowired
	CityDao cityDao;
	
	@Autowired
	AdminVideoDao adminVideoDao;
	
	@Autowired
	EmiDao emiDao;
	
	@Autowired
	AdminImageDao adminImageDao;
	
	@Autowired
	UpgradePlanDao updradeplandao;

	@Autowired
	RaiseTripDao raiseTripDao;

	@Autowired
	CareerDao careerDao;
	
	@Autowired
	PaymentloginDao paymentloginDao;
	
	@Autowired
	AdminResortsDao adminResortsDao;
	
	@Autowired
	AdminResortImageDao adminResortImageDao;
	
	@Autowired
	WebsiteOffersDao websiteOffersDao;
	
	@Autowired
	TblPlcStatusDao tblPlcStatusDao;
	
	@Autowired
	TblSalesStatusDao tblSalesStatusDao;
	
	@Autowired
	TblWcStatusDao tblWcStatusDao;
	
	
	public ClientUser findEmployeeByCode(String ccode) throws Exception{
		List<ClientUser> list = null;
		list = clientuserDao.findEmployee("ccode",Operation_enum.EQ,ccode);
		return list.size() != 0 ? list.get(0) : null;
	}

	public boolean saveClientuser(ClientUser user,int isUpdate) {
		if(isUpdate == 0){
			clientuserDao.addClientUser(user);
		}else{
			clientuserDao.updateClientUser(user);
		}
		
		return true;
	}

	public List<Object[]> getDynamicMultiplecolumnList(String query, Map<String,Object> whereParameter,String orderBy) {
		return hibernateQueryDao.createNewQuery(query+orderBy, whereParameter);
	}

	public List<Object[]> getDynamicMultiplecolumnListSQL(String query, Map<String, Object> var) {
		
		return hibernateQueryDao.createSQLQuery(query, var);
	}

	public Customermaster getCustomerDetails(Long custId) throws Exception {
		return customerDao.findCustomer("id",Operation_enum.EQ,custId).get(0);
	}

	public boolean saveOrUpdateParty(Customermaster cust, int isUpdate) {
		if(isUpdate == 0){
			customerDao.addCustomer(cust);
		}else{
			customerDao.updateCustomer(cust);
		}
		return true;
	}

	public TblProducts getProductdetials(Long id) throws Exception {
		return tblProductsDao.findTblProducts("id",Operation_enum.EQ,id).get(0);
	}
	public String getUpdateImagePath(HttpServletRequest request) {
		Map<String, Object> var = new HashMap<String, Object>();
		String query = "";
		/*
		//trying for 3 image saving process
		if(request.getParameter("updateTable").equals("VIDEOSLIDE")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE VideoSlide p SET p.image_path =:imagePath WHERE p.id =:pId";
		}else 
		*/
		if(request.getParameter("updateTable").equals("VIDEOSLIDE")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE ResortImages r SET r.imagePath =:imagePath WHERE r.id =:pId";
		}else if(request.getParameter("updateTable").equals("RESORTS")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE ResortImages r SET r.imagePath =:imagePath WHERE r.id =:pId";
		}else if(request.getParameter("updateTable").equals("RESUME")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE Career p SET p.resume =:imagePath WHERE p.id =:pId";
		}else if(request.getParameter("updateTable").equals("ADMINIMAGES")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE AdminImages p SET p.ImagePath =:imagePath WHERE p.id =:pId";
		}else if(request.getParameter("updateTable").equals("TESTIMONIAL")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE Testimonial p SET p.image_path =:imagePath WHERE p.id =:pId";
		}else if(request.getParameter("updateTable").equals("BANNER")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE Banner p SET p.destination_image_path =:imagePath WHERE p.id =:pId";
		}else if(request.getParameter("updateTable").equals("EMPLOYEE")){
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("pId", Long.valueOf(request.getParameter("productMasterId")));
			query = "UPDATE Employee p SET p.imagepath =:imagePath WHERE p.id =:pId";
		}else if(request.getParameter("updateTable").equals("EVENT")){
			var.put("eventId", Long.valueOf(request.getParameter("eventMasterId")));
			query = "UPDATE EventMaster event SET ";
			boolean flag = false;
			if(!request.getParameter("isGroom").equals("false")){
				var.put("groomPic", request.getParameter("isGroom"));
				query = query + "event.groompic =:groomPic";
				flag = true;
			}
			if(!request.getParameter("isBride").equals("false")){
				var.put("bridePic", request.getParameter("isBride"));
				query = query + ((flag == true) ? ",event.bridepic =:bridePic" : "event.bridepic =:bridePic");
			}
			query = query + " WHERE event.id =:eventId";
		}
		else{
			var.put("imagePath", request.getParameter("fileMasterPath"));
			var.put("itemId", Long.valueOf(request.getParameter("itemMasterId")));
			query = "UPDATE Itemdetails item SET item.itemimage =:imagePath WHERE item.id =:itemId";
		}
		int isTrue = hibernateQueryDao.updateDeleteQuery(query, var);
		return "success";
	}

	public boolean saveOrUpdateProduct(Product p, int isUpdate) {
		if(isUpdate == 0){
			productDao.addProduct(p);
		}else{
			productDao.updateProduct(p);
		}
		return true;
	}

	public boolean saveOrUpdateRegClient(Users cat, Long l) {
		if(l == 0){
			usersDao.addUsers(cat);
		}else{
			usersDao.updateUsers(cat);
		}
		return true;
	}

	public List<UserLang> getUserLang() {
		return userLangDao.getAllUserLang();
	}

	public List<Users> getUser(String prop, String mobileno) throws Exception {
		// TODO Auto-generated method stub
		return usersDao.findUsers(prop,Operation_enum.EQ,mobileno);
	}

	public List<Users> getUserById(Long id) throws Exception {
		// TODO Auto-generated method stub
		return usersDao.findUsers("id",Operation_enum.EQ,id);
	}

	public List<Category> getCategoryList() {
		// TODO Auto-generated method stub
		return categoryDao.getAllCategory();
	}
	
	public List<Subcategory> getSubcategoryList() {
		// TODO Auto-generated method stub
		return subcategoryDao.getAllSubcategory();
	}
	public List<Object[]> getCityandstate(Long l) {
		if(l == -1)
			return hibernateQueryDao.createQuery("SELECT id,cityname,state.id,state.statename FROM city", null);
		else
			return hibernateQueryDao.createQuery("SELECT id,cityname,state.id,state.statename FROM city WHERE id = "+ l, null);
	}

	public TblProducts getTblProductdetials(Long id) throws Exception {
		return tblProductsDao.findEntity("id",Operation_enum.EQ,id).get(0);
	}
	
	public boolean saveOrUpdateTblProduct(TblProducts p, int isUpdate) {
		if(isUpdate == 0){
			tblProductsDao.addTblProducts(p);
		}else{
			tblProductsDao.updateTblProducts(p);
		}
		return true;
	}
	
	public String deleteTblProduct(HttpServletRequest re) {
		try{
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM tbl_m_products WHERE id = "+re.getParameter("prdId"), new HashMap<String,Object>());
			return res == 1 ? "true" : "false";
		}catch(Exception ex){
			ex.printStackTrace();
			return "false";
		}
	}
	
	public String updatePrdType(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE TblProducts SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
		}else{
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE TblProducts SET isDisplay = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
		}
		return "true";
	}
	
	public SaleBranch getSaleBranchdetials(Long id) throws Exception {
		return saleBrachDao.findBranch("id",Operation_enum.EQ,id).get(0);
	}
	
	public boolean saveOrUpdateSaleBranch(SaleBranch p, int isUpdate) {
		if(isUpdate == 0){
			saleBrachDao.addBranch(p);
		}else{
			saleBrachDao.updateBranch(p);
		}
		return true;
	}
	
	public String deleteSaleBranch(HttpServletRequest re) {
		try{
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM sale_branch WHERE id = "+re.getParameter("prdId"), new HashMap<String,Object>());
			return res == 1 ? "true" : "false";
		}catch(Exception ex){
			ex.printStackTrace();
			return "false";
		}
	}
	
	public Employee getEmployeedetials(Long id) throws Exception {
		return employeeDao.findEmployee("id",Operation_enum.EQ,id).get(0);
	}
	
	public boolean saveOrUpdateEmployee(Employee p, int isUpdate) {
		if(isUpdate == 0){
			employeeDao.addEmployee(p);
		}else{
			employeeDao.updateEmployee(p);
		}
		return true;
	}
	
	public String deleteEmployee(HttpServletRequest re) {
		try{
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM employee WHERE id = "+re.getParameter("prdId"), new HashMap<String,Object>());
			return res == 1 ? "true" : "false";
		}catch(Exception ex){
			ex.printStackTrace();
			return "false";
		}
	}

	public TblMember getMember(Long memberid) throws Exception {
		// TODO Auto-generated method stub
		return tblMemberDao.findTblMember("id",Operation_enum.EQ,memberid).get(0);
	}

	public TblCourier getCourier(Long memberid) throws Exception {
		// TODO Auto-generated method stub
		List<TblCourier> tclst = tblCourierDao.findTblCourier("member.id",Operation_enum.EQ,memberid);
		return tclst.size() == 0 ? new TblCourier() : tclst.get(0);
	}
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public boolean saveOrUpdateMember(TblMember cat, List<TblAsf> plist, List<TblEmi> plistser, TblCourier tblco, TblUser tbluser, List<TblPaymentMode> plistserpay, String delasf, String delemi, String delpay) {
		try{
			boolean isSuccess = true;
			tblMemberDao.updateTblMember(cat);
			
			List<TblAsf> updatedlist = new ArrayList<>();
			List<TblEmi> updatedlistser = new ArrayList<>();
			List<TblPaymentMode> updatedlistserpay = new ArrayList<>();
			for (int i = 0; i < plist.size(); i++) {
				TblAsf p = new TblAsf();
				p = plist.get(i);
				p.setMember(new TblMember(cat.getId()));
				updatedlist.add(p);
				p = null;
			}
			for (int i = 0; i < plistser.size(); i++) {
				TblEmi p = new TblEmi();
				p = plistser.get(i);
				p.setMember(new TblMember(cat.getId()));
				updatedlistser.add(p);
				p = null;
			}
			for (int i = 0; i < plistserpay.size(); i++) {
				TblPaymentMode p = new TblPaymentMode();
				p = plistserpay.get(i);
				p.setMember(new TblMember(cat.getId()));
				updatedlistserpay.add(p);
				p = null;
			}
			int res = 0;
			if(!delasf.equals("")){
				res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM tbl_m_asf WHERE id IN ("+delasf+")",null);
			}
			if(!delemi.equals("")){
				res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM tbl_emi_payments WHERE id IN ("+delemi+")",null);
			}
			if(!delpay.equals("")){
				res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM tbl_m_downpayment WHERE downpay_id IN ("+delpay+")",null);
			} 
			
			if(updatedlistser.size() != 0){
				tblEmiDao.addTblEmiList(updatedlistser);
			}
			if(updatedlistserpay.size() != 0){
				tblPaymentModeDao.addTblPaymentModeList(updatedlistserpay);
			}
			if(updatedlist.size() != 0){
				tblAsfDao.addTblAsfList(updatedlist);
			}
			if(tbluser != null){
				tbluser.setMember(cat);
				tblUserDao.addTblUser(tbluser);
			}
			tblco.setMember(cat);
			tblCourierDao.updateTblCourier(tblco);
			return isSuccess;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public boolean saveOrUpdateCustomerpay(CustomerPay p, int i) {
		try{
			if(i == 0)
				customerPayDao.addCustomerPay(p);
			else
				customerPayDao.updateCustomerPay(p);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	public String updateCustomerdocumentdetails(HttpServletRequest request) {
		String hql = "UPDATE CustomerPay SET ";
		if(!request.getParameter("isup1").equals("false")){
			hql = hql + "idproof1 = '"+request.getParameter("isup1")+"'";
		}
		if(!request.getParameter("isup2").equals("false")){
			hql = hql + ",idproof2 = '"+request.getParameter("isup2")+"' ";
		}
		hql = hql + "WHERE id = "+request.getParameter("newids");
		int isTrue = hibernateQueryDao.updateDeleteQuery(hql, null);
		return "true";
	}
	public boolean saveOrUpdateMemberBooking(TblReservation p, int i) {
		if(i == 0)
			tblReservationDao.addTblReservation(p);
		else
			tblReservationDao.updateTblReservation(p);
		return true;
	}
	public CustomerPay getCustomerPayment(Long orderId) throws Exception {
		// TODO Auto-generated method stub
		return customerPayDao.findCustomerPay("id",Operation_enum.EQ,orderId).get(0);
	}
	
	public String deleteBanner(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM banner WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}

	
	public boolean saveOrUpdateBanner(Banner p, int isUpdate) {
		if (isUpdate == 0) {
			bannerDao.addBanner(p);
		} else {
			bannerDao.updateBanner(p);
		}
		return true;
	}
		
	
	public Banner getBannerDetials(Long id) throws Exception {
		return bannerDao.findEntity("id", Operation_enum.EQ, id).get(0);
	}

	public TblMember getMemberByCode(Long membercode) throws Exception {
		// TODO Auto-generated method stub
		return tblMemberDao.findEntity("membercode",Operation_enum.EQ,membercode).get(0);
	}

	public List<TblReservation> getReservationDetails(Long memberId) throws Exception {
		return tblReservationDao.findTblReservation("member.id",Operation_enum.EQ,memberId);
	}
	
	
	
	public Testimonial getTestimonialDetials(Long id) throws Exception {
		return testimonialDao.findEntity("id", Operation_enum.EQ, id).get(0);
	}
	
	public boolean saveOrUpdateTestimonial(Testimonial p, int isUpdate) {
		if (isUpdate == 0) {
			testimonialDao.addTestimonial(p);
		} else {
			testimonialDao.updateTestimonial(p);
		}
		return true;
	}
	
	public String deleteTestimonial(HttpServletRequest re) {	
		
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM testimonial WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}
	
	public String updateTestiType(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE Testimonial SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			return "true";
		}else{
			return "false";
		}
		
	}
	

	public VideoSlide getvideodetails(Long id) throws Exception {
		return videoSlideDao.findVideoSlide("id", Operation_enum.EQ, id).get(0);
	}
	
	public String deleteVideoSlide(HttpServletRequest re) {	
		
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM videoslide WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}
	
	public String updateVideoActive(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE VideoSlide SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			return "true";
		}else{
			return "false";
		}
		
	}
	
	public boolean saveOrUpdateVideoSlideinfo(VideoSlide p, int isUpdate) {
		if (isUpdate == 0) {
			videoSlideDao.addVideoSlide(p);
		} else {
			videoSlideDao.updateVideoSlide(p);
		}
		return true;
	}

	public boolean saveEnquiry(Enquiry p) {
		enquiryDao.addEnquiry(p);
		return true;
	}

	public String updatecallfile(HttpServletRequest re) {
		try{
			TblCallfile tc = new TblCallfile();
			tc.setFileName(re.getParameter("onlyfname"));
			tc.setFilenameext("");
			tc.setFilinamepath(re.getParameter("isup1"));
			tc.setInternalId("");
			tc.setIsActive(1);
			tc.setMember(new TblMember(Long.valueOf(re.getParameter("newids"))));
			tc.setMemberIdNo(Long.valueOf(re.getParameter("membercode")));
			tblCallfileDao.addTblCallfile(tc);
			return "true";
		}catch(Exception ex){
			ex.printStackTrace();
			return "false";
		}
		
	}

	public String deletecallfile(HttpServletRequest request) {
		String hql = "UPDATE tbl_m_callfile SET isActive = 0 WHERE callfile_id = "+request.getParameter("newids");
		int isTrue = hibernateQueryDao.updateDeleteSQLNewQuery(hql, null);
		return "true";
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public boolean saveOrUpdatePaymentreceipt(TblPaymentReceipt p, int i) {
		try{
			if(i == 0)
				tblPaymentReceiptDao.addTblPaymentReceipt(p);
			else
				tblPaymentReceiptDao.updateTblPaymentReceipt(p);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean savejoinus(JoinUs p) {
		joinUsDao.addJoinus(p);
		return true;
	}

	public String changepassword(HttpServletRequest re) {
		String hql = "UPDATE tbl_m_user SET password = '"+re.getParameter("nc_pass")+"',isFirstLogin = 0 WHERE memberId = "+re.getParameter("memid");
		int isTrue = hibernateQueryDao.updateDeleteSQLNewQuery(hql, null);
		return "true";
	}

	public String changememberstatus(HttpServletRequest re) {
		String hql = "UPDATE tbl_m_member SET "+re.getParameter("whichfield")+" = "+re.getParameter("fieldvalue")+",approvalDate='"+commonService.getServerDateAndTime()+"' WHERE id = "+re.getParameter("memberid");
		int isTrue = hibernateQueryDao.updateDeleteSQLNewQuery(hql, null);
		
		if(re.getParameter("whichfield").equals("status")){
			hql = "UPDATE tbl_m_user SET isActive = 1 WHERE memberId = "+re.getParameter("memberid");
			isTrue = hibernateQueryDao.updateDeleteSQLNewQuery(hql, null);
		}
		return "true";
	}
	public String changeactiveinactive(HttpServletRequest re) {
		String hql = "UPDATE tbl_m_member SET isActive = "+re.getParameter("fieldvalue")+" WHERE id = "+re.getParameter("memberid");
		int isTrue = hibernateQueryDao.updateDeleteSQLNewQuery(hql, null);
		
		if(re.getParameter("fieldvalue").equals("1")){
			String sql = "SELECT id,status FROM tbl_m_member WHERE id = "+re.getParameter("memberid");
			List<Object[]> sqllst = hibernateQueryDao.createSQLQuery(sql, null);
			
			if(sqllst.get(0)[1].toString().equals("1")){
				hql = "UPDATE tbl_m_user SET isActive = "+re.getParameter("fieldvalue")+" WHERE memberId = "+re.getParameter("memberid");
				isTrue = hibernateQueryDao.updateDeleteSQLNewQuery(hql, null);
			}
		}else{
			hql = "UPDATE tbl_m_user SET isActive = "+re.getParameter("fieldvalue")+" WHERE memberId = "+re.getParameter("memberid");
			isTrue = hibernateQueryDao.updateDeleteSQLNewQuery(hql, null);
		}
		
		return "true";
	}
	public CampaignMaster getCampaignDetials(Long id) throws Exception {
		return campaignMasterDao.findCampaigns("id", Operation_enum.EQ, id).get(0);
	}
	
	public boolean saveOrUpdateCampaign(CampaignMaster p, int isUpdate) {
		if (isUpdate == 0) {
			campaignMasterDao.addCampaign(p);
		} else {
			campaignMasterDao.updateCampaign(p);
		}
		return true;
	}

	public String deleteCampaign(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM campaign_master WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}
	
	public OfferMaster getOffer(Long id) throws Exception {
		return offerMasterDao.findOffer("id", Operation_enum.EQ, id).get(0);
	}
	
	public boolean saveOrUpdateOffer(OfferMaster p, int isUpdate) {
		if (isUpdate == 0) {
			offerMasterDao.addOffer(p);
		} else {
			offerMasterDao.updateOffer(p);
		}
		return true;
	}

	public String deleteOffer(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM offer_master WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}
	
	public boolean saveOrUpdateState(States p, int isUpdate) {
		if (isUpdate == 0) {
			statesDao.addState(p);
		} else {
			statesDao.updateStates(p);
		}
		return true;
	}
	
	public States getstateDetials(Long id) throws Exception {
		return statesDao.findstateDetials("id", Operation_enum.EQ, id).get(0);
	}
	
	public String deleteState(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM states WHERE state_id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			System.out.println("ClientuserService.deleteState() :: catch :: DELETE FROM states WHERE state_id = " + re.getParameter("prdId"));
			ex.printStackTrace();
			return "false";
		}
	}
	
	public boolean saveOrUpdateCity(city p, int isUpdate) {
		if (isUpdate == 0) {
			cityDao.addCity(p);
		} else {
			cityDao.updateCity(p);
		}
		return true;
	}
	
	public city getcityDetials(Long id) throws Exception {
		return cityDao.findCityDetials("id", Operation_enum.EQ, id).get(0);
	}
	
	public String deleteCity(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM cities WHERE city_id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			System.out.println("ClientuserService.deleteState() :: catch :: DELETE FROM cities WHERE city_id = " + re.getParameter("prdId"));
			ex.printStackTrace();
			return "false";
		}
	}
	
	public city getCityDetail(Long id) throws Exception {
		return cityDao.findCityDetials("id", Operation_enum.EQ, id).get(0);
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public boolean saveOrUpdateVerifydetails(TblAgreement p, int i) {
		try{
			if(i == 0)
				tblAgreementDao.addTblAgreement(p);
			else
				tblAgreementDao.updateTblAgreement(p);
			
			int res = hibernateQueryDao.updateDeleteSQLQuery("UPDATE tbl_m_user SET isAgree=1 WHERE memberId = "+p.getMember().getId(),null);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public String updateTicketType(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE TicketRaise SET resolved = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			if (res !=0) {
				return "true";
			} else {
                return "false";
			}
			
		}else{
			return "false";
		}
		
	}
	
	public AdminVideo getVideoAdmin(Long id) throws Exception {
		return adminVideoDao.findEntity("id", Operation_enum.EQ, id).get(0);
	}
	
	public boolean saveOrUpdateAdminVideo(AdminVideo p, int isUpdate) {
		try {
			if (isUpdate == 0) {
				adminVideoDao.addAdminVideo(p);
				return true;
			} else {
				adminVideoDao.updateAdminVideo(p);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	public String deleteAdminVideo(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM adminvideo WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}
	
	public String updateAdminVideoType(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE AdminVideo SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			if (res !=0) {
				return "true";
			} else {
                return "false";
			}
			
		}else{
			return "false";
		}
		
	}

	public Emimaster getemiDetials(Long id) throws Exception {

		return emiDao.findEmiDetials("id", Operation_enum.EQ, id).get(0);
	} 
	
	public boolean saveOrUpdateEmi(Emimaster p, int isUpdate) {
		if (isUpdate == 0) {
			emiDao.addEmi(p);
		} else {
			emiDao.updateEmi(p);
			}
		return true;
	}
	public String deleteEmi(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM emi_master WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			
			ex.printStackTrace();
			return "false";
		}
	}
	public AdminImages getImageAdmin(Long id) throws Exception {
		return adminImageDao.findEntity("id", Operation_enum.EQ, id).get(0);
	}
	
	public boolean saveOrUpdateAdminImage(AdminImages p, int isUpdate) {
		try {
			if (isUpdate == 0) {
				adminImageDao.addAdminImages(p);
				return true;
			} else {
				adminImageDao.updateAdminImages(p);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	public String updateAdminImageType(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE AdminImages SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			if (res !=0) {
				return "true";
			} else {
                return "false";
			}
			
		}else{
			return "false";
		}
		
	}
	
	public String deleteAdminImage(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM adminimages WHERE id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}

	public TblEmi getEmi(Long orderId) throws Exception {
		return tblEmiDao.findTblEmi("id",Operation_enum.EQ,orderId).get(0);
	}

	public boolean saveorupdateEMI(TblEmi i) {
		tblEmiDao.updateTblEmi(i);
		return true;
	}

	
	public boolean addRaiseTrip(RaiseTrip p, int isUpdate) {
		try {
			if (isUpdate == 0) {
				raiseTripDao.addRaiseTrip(p);
				return true;
			} else {
				//need Change for update Senario
				raiseTripDao.addRaiseTrip(p);
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	public String updateRaiseTripType(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			if (res !=0) {
				return "true";
			} else {
                return "false";
			}
			
		}else{
			return "false";
		}
		
	}
	
	

	public TblAsf getAsF(Long orderId) throws Exception {
		// TODO Auto-generated method stub
		return tblAsfDao.findTblAsf("id",Operation_enum.EQ,orderId).get(0);
	}

	public String deletebooking(HttpServletRequest re) {
		int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM tbl_t_reservation WHERE reserv_id = "+re.getParameter("resid"), null);
		return "true";
	}
	
	public boolean saveorupdateASF(TblAsf i) {
		// TODO Auto-generated method stub
		tblAsfDao.updateTblAsf(i);
		return true;
	}
	
	public boolean saveplan(upgradeMembership up, int isUpdate) {
		try {
			if (isUpdate == 0) {
				updradeplandao.addplan(up);
				return true;
			} else {
				//need Change for update Senario
				updradeplandao.addplan(up);
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
	}
	public boolean saveCareer(Career c) {
		careerDao.addCareer(c);
		
		return true;
	}

	public Boolean UpdateForgetPassword(String username,String rANumber) {
		try{
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE TblUser SET password = '"+rANumber+"',isFirstLogin=1 WHERE username = '"+username+"'", null);
			if (res !=0) {
				return true;
			} else {
                return false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
	}
	public Paymentlogin getPaymentDetials(Long id) throws Exception {


		return paymentloginDao.findpaymentDetials("id", Operation_enum.EQ, id).get(0);
	} 
	public boolean saveOrUpdatePayment(Paymentlogin p, int isUpdate) {
		if (isUpdate == 0) {
			paymentloginDao.addPayment(p);
			
		} else {
			paymentloginDao.updatePayment(p);
			
			}
		return true;
	}
	public String updatePaymentLoginType(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE Paymentlogin SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			return "true";
		}else{
			return "false";
		}
		
	}
	
	public Resorts getResortDetail(Long id) throws Exception {
		return adminResortsDao.findResortDetials("id", Operation_enum.EQ, id).get(0);
	}
	
	public String deleteResortImages(HttpServletRequest re) {
		System.out.println("ClientuserService.deleteResortImages() :"+re.getParameter("imageId"));
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM resort_images WHERE resort_images_id = " + re.getParameter("imageId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "false";
		}
	}
	
	public String setapprovingtype(HttpServletRequest re) {
		String disApn ="";
		
		String queryforDisApprove = "SELECT approve,disapprove,'' FROM RaiseTrip  where raise_trip_id="+ re.getParameter("prd_id");
		List<Object[]> isActiveList = getDynamicMultiplecolumnList(queryforDisApprove, null, "");
		 
		if (Integer.parseInt(isActiveList.get(0)[1].toString()) == 0) {
			 disApn = ",disapprove=1";
		}else if(Integer.parseInt(isActiveList.get(0)[1].toString()) == 1) {
			 disApn = ",disapprove=0";
		}else {
			
		}
		
		if (Integer.parseInt(isActiveList.get(0)[0].toString()) == 1 & Integer.parseInt(isActiveList.get(0)[1].toString()) == 0) {
			 disApn = "";
		}
	
		if (Integer.parseInt(isActiveList.get(0)[0].toString()) == 0 & Integer.parseInt(isActiveList.get(0)[1].toString()) == 0) {
			 disApn = "";
		}
		
		if(re.getParameter("chk").equalsIgnoreCase("0")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET approve = 0 "+disApn+" WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			if (isPending(re.getParameter("prd_id"))) {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 1  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}else {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 0  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}
			return "true";
			
		}else if(re.getParameter("chk").equalsIgnoreCase("1")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET approve = 1 "+disApn+" WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			if (isPending(re.getParameter("prd_id"))) {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 1  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}else {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 0  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}
			return "true";
			
		}else{
			
			return "false";
		}
		
		
	}
	
	public String setdisapprovingtype(HttpServletRequest re) {
		
		String disApn ="";
		
		String queryforDisApprove = "SELECT approve,disapprove,'' FROM RaiseTrip  where raise_trip_id="+ re.getParameter("prd_id");
		List<Object[]> isActiveList = getDynamicMultiplecolumnList(queryforDisApprove, null, "");
		 
		if (Integer.parseInt(isActiveList.get(0)[0].toString()) == 0) {
			 disApn = ",approve=1";
		}else if(Integer.parseInt(isActiveList.get(0)[0].toString()) == 1) {
			 disApn = ",approve=0";
		}else {
			
		}
		
		if (Integer.parseInt(isActiveList.get(0)[0].toString()) == 0 & Integer.parseInt(isActiveList.get(0)[1].toString()) == 1) {
			 disApn = "";
		}
	
		if (Integer.parseInt(isActiveList.get(0)[0].toString()) == 0 & Integer.parseInt(isActiveList.get(0)[1].toString()) == 0) {
			 disApn = "";
		}
		
		if(re.getParameter("chk").equalsIgnoreCase("0")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET disapprove = 0 "+disApn+" WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			if (isPending(re.getParameter("prd_id"))) {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 1  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}else {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 0  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}
			
			return "true";
			
		}else if(re.getParameter("chk").equalsIgnoreCase("1")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET disapprove = 1 "+disApn+" WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			if (isPending(re.getParameter("prd_id"))) {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 1  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}else {
				int respending = hibernateQueryDao.updateDeleteNewQuery("UPDATE RaiseTrip SET pending = 0  WHERE raise_trip_id = "+re.getParameter("prd_id"), null);
			}
			return "true";
			
			
		}else{
			
			return "false";
		}
		
		
		
	}

	public TblReservation getReservationDetailsByReservationId(Long resid) throws Exception {
		return tblReservationDao.findTblReservation("id",Operation_enum.EQ,resid).get(0);
	}

	public TblCallfile getCallFile(Long valueOf) throws Exception {
		// TODO Auto-generated method stub
		return tblCallfileDao.findTblCallfile("id",Operation_enum.EQ,valueOf).get(0);
	}
	
	public boolean isPending(String id) {
		String pendingQuery = "SELECT approve,disapprove,'' FROM RaiseTrip  where raise_trip_id="+id ;
		List<Object[]> pandinglist = getDynamicMultiplecolumnList(pendingQuery, null, "");
		boolean approvef = false;
		boolean disapprovef = false;
		
		if(Integer.parseInt(pandinglist.get(0)[0].toString()) == 1) {
			 approvef = true;
		}
		
		if(Integer.parseInt(pandinglist.get(0)[1].toString()) == 1) {
			disapprovef = true;
		}
		
		if (approvef|disapprovef) {
			return true;
		}
		
		
		return false;
		
	}
	
	public boolean saveOrupdateResort(Resorts p,int isUpdate) {
		if(isUpdate == 0)
			adminResortsDao.addResort(p);
		else
			adminResortsDao.updateResort(p);
		return true;
	}

	public String deleteResort(HttpServletRequest re) {
		try {
			int res = hibernateQueryDao.updateDeleteSQLQuery("DELETE FROM all_resorts WHERE resort_id = " + re.getParameter("prdId"), new HashMap<String, Object>());
			return res == 1 ? "true" : "false";
		} catch (Exception ex) {
			
			ex.printStackTrace();
			return "false";
		}
	}
	
	public String setResortActivetype(HttpServletRequest re) {
		if(re.getParameter("type").equalsIgnoreCase("active")){
			int res = hibernateQueryDao.updateDeleteNewQuery("UPDATE Resorts SET isActive = "+re.getParameter("chk")+" WHERE id = "+re.getParameter("prd_id"), null);
			return "true";
		}else{
			return "false";
		}
		
	}
	
	public boolean saveResortImage(ResortImages p, int isUpdate) {
		if (isUpdate == 0) {
			adminResortImageDao.addResortImage(p);
		} else {
			adminResortImageDao.addResortImage(p);
		}
		return true;
	}
	
	public boolean saveWebsiteOfferDetails(Websiteoffers p) {
		websiteOffersDao.addEnquiry(p);
		return true;
	}

	public void saveSMSLogs(SMSLogs s) {
		sMSLogsDao.addSMSLogs(s);
	}
	
	public boolean saveOrupdateTicketRaise(TblTicket p,int isUpdate) {
		if(isUpdate == 0)
			tblTicketDao.addTblTicket(p);
		else
			tblTicketDao.updateTblTicket(p);
		return true;
	}
	
	
	public List<TblPlcStatus> getPlcStatus(Long memberid) throws Exception {
		// TODO Auto-generated method stub
		return tblPlcStatusDao.findTblPlcStatus("member.id",Operation_enum.EQ,memberid);
	}
	
	public TblPlcStatus getPlcStatusMember(Long plc_id) throws Exception {
		// TODO Auto-generated method stub
		return tblPlcStatusDao.findTblPlcStatus("plc_id",Operation_enum.EQ,plc_id).get(0);
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public boolean saveOrUpdatePlcStatus(TblPlcStatus p, int i, String status) {
		try{
			int res = hibernateQueryDao.updateDeleteSQLQuery("UPDATE tbl_m_member SET statusOfPLC= '"+status+"' WHERE id = "+p.getMember().getId(),null);
			if(i == 0){
				System.out.println("in if..");
				tblPlcStatusDao.addTblPlcStatus(p);
			}
			else{
				System.out.println("in else..");
				tblPlcStatusDao.updateTblPlcStatus(p);
			}
			//int res = hibernateQueryDao.updateDeleteSQLQuery("UPDATE tbl_m_member SET statusOfPLC= '"+status+"' WHERE id = "+p.getMember().getId(),null);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean saveOrUpdateticket(TblTicket tk) {
		try{
			tblTicketDao.updateTblTicket(tk);
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
		
	}

	public boolean saveTicketComment(TblTicketDetails p) {
		try{
			tblTicketDetailsDao.addTblTicketDetails(p);
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

	public String updateTicketdata(HttpServletRequest re) {
		int res = hibernateQueryDao.updateDeleteSQLNewQuery("UPDATE tbl_ticket SET employeeId = "+re.getParameter("empid")+",employeename = '"+re.getParameter("empname")+"' WHERE ticket_id = "+re.getParameter("ticketId"), null);// TODO Auto-generated method stub
		return "true";
	}
	public List<TblTicket> getAllTicket(Long memberid) throws Exception {
		return tblTicketDao.findTblTicket("member.id",Operation_enum.EQ,memberid,"careateddatetime",Operation_enum.ORDERBY,Operation_enum.ASC);
	}
	
	public List<TblTicketDetails> getAllTicketDetails(Long ticketId) throws Exception {
		// TODO Auto-generated method stub
		return tblTicketDetailsDao.findTblTicketDetails("ticket.id",Operation_enum.EQ,ticketId,"createddatetime",Operation_enum.ORDERBY,Operation_enum.ASC);
	}
	public TblTicket getTicket(Long ticketId) throws Exception {
		// TODO Auto-generated method stub
		return tblTicketDao.findTblTicket("id",Operation_enum.EQ,ticketId).get(0);
	}
	public List<TblSalesStatus> getSalesStatus(Long memberid) throws Exception {
		// TODO Auto-generated method stub
		return tblSalesStatusDao.findTblSalesStatus("member.id",Operation_enum.EQ,memberid);
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public boolean saveOrUpdateSalesStatus(TblSalesStatus p, int i, String status) {
		try{
			int res = hibernateQueryDao.updateDeleteSQLQuery("UPDATE tbl_m_member SET salesstatus= '"+status+"' WHERE id = "+p.getMember().getId(),null);
			if(i == 0){
				System.out.println("in if..");
				tblSalesStatusDao.addTblSalesStatus(p);
			}
			else{
				System.out.println("in else..");
				tblSalesStatusDao.updateTblSalesStatus(p);
			}
			//int res = hibernateQueryDao.updateDeleteSQLQuery("UPDATE tbl_m_member SET statusOfPLC= '"+status+"' WHERE id = "+p.getMember().getId(),null);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public List<TblWcStatus> getWcStatus(Long memberid) throws Exception {
		// TODO Auto-generated method stub
		return tblWcStatusDao.findTblWcStatus("member.id",Operation_enum.EQ,memberid);
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public boolean saveOrUpdateWcStatus(TblWcStatus p, int i, String status) {
		try{
			int res = hibernateQueryDao.updateDeleteSQLQuery("UPDATE tbl_m_member SET wcstatus= '"+status+"' WHERE id = "+p.getMember().getId(),null);
			if(i == 0){
				System.out.println("in if..");
				tblWcStatusDao.addTblWcStatus(p);
			}
			else{
				System.out.println("in else..");
				tblWcStatusDao.updateTblWcStatus(p);
			}
			//int res = hibernateQueryDao.updateDeleteSQLQuery("UPDATE tbl_m_member SET statusOfPLC= '"+status+"' WHERE id = "+p.getMember().getId(),null);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}


	}//class end
	
 