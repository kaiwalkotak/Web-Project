package com.system.justfeedback.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLContext;
import javax.servlet.http.HttpServletRequest;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.system.justfeedback.model.CustomerPay;
import com.system.justfeedback.model.LoginDTO;
import com.system.justfeedback.model.SMSLogs;
import com.system.justfeedback.model.TblAsf;
import com.system.justfeedback.model.TblEmi;
import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblReservation;
import com.system.justfeedback.model.UserLang;
import com.system.justfeedback.model.UserRegistrationDTO;
import com.system.justfeedback.model.Users;
import com.system.justfeedback.services.ClientuserService;
import com.system.justfeedback.services.CommonService;

@RestController
@SessionAttributes("roles")
@RequestMapping("/WS/")
@PropertySource(value = { "classpath:resources/auditrailMessages.properties","classpath:resources/link.properties","classpath:resources/messages.properties" })
public class WebServiceController {
	
	@Autowired
	ClientuserService clientuserService;
	
	@Autowired
	CommonService commonService;
	
	@Autowired
	ClientController clientController;
	
	@Autowired
    private Environment environment;
	
	private String apiKey = null;
	private String secretKey = null;
	
	 @RequestMapping(value = "/getAllevents/{clientID}/", method = RequestMethod.GET)
	    public ResponseEntity<List<Object[]>> listAllUsers(@PathVariable("clientID")Long clientID,HttpServletRequest request) {
		 	Map<String, Object> var = new HashMap<String, Object>();
			String query = "SELECT event.id,event.eventname,event.partycustomer.partyname,DATE_FORMAT(event.eventdate,'%d/%m/%Y'),event.status,COALESCE(event.venue.venuename,'') FROM EventMaster event LEFT JOIN event.venue venue WHERE event.user.id =:clientId";
			var.put("clientId", clientID);
	        List<Object[]> events = clientuserService.getDynamicMultiplecolumnList(query,var,"");
	        if(events.isEmpty()){
	            return new ResponseEntity<List<Object[]>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
	        }
	        return new ResponseEntity<List<Object[]>>(events, HttpStatus.OK);
	    }
	 public List<Object[]> checkmobileisregisterered(String mobileno){
		 String sql = " SELECT u.user_id,'User' AS FromTable,u.password FROM users u WHERE u.mobileno = '"+mobileno+"' "
				 	+ " UNION ALL SELECT b.bussiness_id,'Business' AS FromTable,b.password  FROM bussiness b WHERE b.phone_no = '"+mobileno+"' ";
		return clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
		 
	 }
	 
	 @RequestMapping(value = "/generatpaymenteorderjava", method = RequestMethod.POST)
	    public @ResponseBody List<Object[]> generatpaymenteorderjava(HttpServletRequest re) throws Exception {
		 try {
			 	SSLContext ctx = SSLContext.getInstance("TLSv1.2");
		        ctx.init(null, null, null);
		        SSLContext.setDefault(ctx);
		        
		        apiKey = environment.getProperty("rasor_key");
				secretKey = environment.getProperty("rasor_secret_key");
				 Long orderId = Long.valueOf(re.getParameter("encry"));
				 CustomerPay i = clientuserService.getCustomerPayment(orderId);
		        
			    String url = "https://api.razorpay.com/v1/orders";
			 
			    URL obj = new URL(url);
			    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
			 
			    conn.setRequestProperty("Content-Type", "application/json");
			    conn.setDoOutput(true);
			 
			    conn.setRequestMethod("POST");
			 
			    String userpass = apiKey + ":" + secretKey;
			    String basicAuth = "Basic " + javax.xml.bind.DatatypeConverter.printBase64Binary(userpass.getBytes("UTF-8"));
			    conn.setRequestProperty ("Authorization", basicAuth);
			    String  ss = re.getParameter("encamt");
			    double tamount = Double.valueOf(re.getParameter("encamt"));
			    String data =  "{\"amount\":\""+(String.format("%.0f", (tamount*100)))+"\",\"currency\":\"INR\",\"receipt\":\""+("INV-"+i.getId())+"\",\"payment_capture\":\"1\"}";
			    JSONObject orderRequest = new JSONObject();
			 	 orderRequest.put("amount", tamount*100); // amount in the smallest currency unit
			 	 orderRequest.put("currency", "INR");
			 	 orderRequest.put("receipt", "INV-"+i.getId());
			 	 orderRequest.put("payment_capture", 1);
			    OutputStreamWriter out = new OutputStreamWriter(conn.getOutputStream());
			    out.write(data);
			    out.close();
			    int responseCode = conn.getResponseCode();
			    System.out.println("Response Code : " + responseCode);
			 
			    BufferedReader iny = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			    
			    String output;
			    StringBuffer response = new StringBuffer();

			    while ((output = iny.readLine()) != null) {
			     response.append(output);
			    }
			    iny.close();
			    System.out.println(response.toString());
			    List<Object[]> resList = new ArrayList<>();
			    resList.add(new Object[]{response.toString()});
			    resList.add(new Object[]{i.getCustname(),i.getMobileno(),i.getEmailid()});
			    /*Gson gson = new Gson();
			    JSONParser parser = new JSONParser(); 
			    JSONObject json = (JSONObject) parser.parse(response.toString());
			    json.put("invoiceName", i.getUser().getCname());
			    json.put("invoicePhone", i.getUser().getCname());
			    json.put("invoiceEmail", i.getUser().getCemailid());*/
			    return resList;
			    } catch (Exception e) {
			    e.printStackTrace();
			    List<Object[]> resList = new ArrayList<>();
			    resList.add(new Object[]{"has_error"});
			    return resList;
			    }
	    }
	    @RequestMapping(value = "/sendSMS", method = RequestMethod.POST)
	    public @ResponseBody String sendSMS(HttpServletRequest re) throws Exception {
		 try {
			 	SSLContext ctx = SSLContext.getInstance("TLSv1.2");
		        ctx.init(null, null, null);
		        SSLContext.setDefault(ctx);
		        String result = "",data = "";
		        apiKey = environment.getProperty(re.getParameter("templatename"));
			    String url = "http://sms2.magicsms.in/api/v2/sms/template";
			 
			    URL obj = new URL(url);
			    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
			    conn.setRequestProperty("Content-Type", "application/json");
			    conn.setRequestProperty("Accept", "application/json");
			    conn.setRequestProperty("Authorization", environment.getProperty("smskey"));
			    conn.setDoOutput(true);
			 
			    conn.setRequestMethod("POST");
			    if(re.getParameter("templatename").equals("newloginusernamepassword")){
			    	 	String sql = "SELECT memberId,username,password,firstName,mobileNo,emailID FROM tbl_m_user WHERE memberId = "+re.getParameter("memberId");
						List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					    
					    data = "{ \"to\": [\""+sl.get(0)[4]+"\"], \"service\" : \"T\" , \"template_id\" : \""+apiKey+"\" , \"variables\" : [\""+sl.get(0)[1]+"\",\""+sl.get(0)[2]+"\"]}";
			    }else if(re.getParameter("templatename").equals("passwordreset")){
		    	 	String sql = "SELECT memberId,username,password,firstName,mobileNo,emailID FROM tbl_m_user WHERE memberId = "+re.getParameter("memberId");
					List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
				    
				    data = "{ \"to\": [\""+sl.get(0)[4]+"\"], \"service\" : \"T\" , \"template_id\" : \""+apiKey+"\" , \"variables\" : [\""+sl.get(0)[1]+"\",\""+sl.get(0)[2]+"\"]}";
			    }else if(re.getParameter("templatename").equals("reservationsms")){
		    	 	String sql = "SELECT upHolidayBooked,DATE_FORMAT(checkIn,'%d/%m/%Y'),DATE_FORMAT(checkOut,'%d/%m/%Y'),memberId FROM tbl_t_reservation WHERE reserv_id = "+re.getParameter("resId");
					List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
					List<Object[]> sl2 = clientuserService.getDynamicMultiplecolumnListSQL("SELECT firstName,mobileNo FROM tbl_m_user WHERE memberId = "+sl.get(0)[3],null);
				    data = "{ \"to\": [\""+sl2.get(0)[1]+"\"], \"service\" : \"T\" , \"template_id\" : \""+apiKey+"\" , \"variables\" : [\""+sl.get(0)[0]+"\",\""+sl.get(0)[1]+"\",\""+sl.get(0)[2]+"\"]}";
			    }else if(re.getParameter("templatename").equals("paymentreceiptresort") || re.getParameter("templatename").equals("paymentreceiptsuites")){
		    	 	String sql = "SELECT amount,receiptNo,mobileNo FROM tbl_t_paymentreceipt WHERE payrec_id = "+re.getParameter("recId");
					List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
				    
				    data = "{ \"to\": [\""+sl.get(0)[2]+"\"], \"service\" : \"T\" , \"template_id\" : \""+apiKey+"\" , \"variables\" : [\""+sl.get(0)[0]+"\",\""+sl.get(0)[1]+"\"]}";
			    }
			    
			   
			    OutputStreamWriter out = new OutputStreamWriter(conn.getOutputStream());
			    out.write(data);
			    out.close();
			    int responseCode = conn.getResponseCode();
			    result = responseCode+"";
			    System.out.println("Response Code : " + responseCode);
			 
			    BufferedReader iny = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			    
			    String output;
			    StringBuffer response = new StringBuffer();

			    while ((output = iny.readLine()) != null) {
			     response.append(output);
			    }
			    iny.close();
			    System.out.println(response.toString());
			   
			    SMSLogs s = new SMSLogs();
			    s.setTemplateid(apiKey);
			    s.setTemplatetext(re.getParameter("templatename"));
			    s.setResponsecode(responseCode+"");
			    s.setResponsetext(response.toString());
			    s.setSenddata(data);
			    s.setCreateddate(commonService.getServerDateAndTime());
			    clientuserService.saveSMSLogs(s);
			    
			    return result;
			    } catch (Exception e) {
			    e.printStackTrace();
			    List<Object[]> resList = new ArrayList<>();
			    resList.add(new Object[]{"has_error"});
			    return "error";
			    }
	    }
	    @RequestMapping(value = "/generatpaymenteorderjavaemi", method = RequestMethod.POST)
	    public @ResponseBody List<Object[]> generatpaymenteorderjavaemi(HttpServletRequest re) throws Exception {
		 try {
			 	SSLContext ctx = SSLContext.getInstance("TLSv1.2");
		        ctx.init(null, null, null);
		        SSLContext.setDefault(ctx);
		        
		        apiKey = environment.getProperty("rasor_key");
				secretKey = environment.getProperty("rasor_secret_key");
				 Long orderId = Long.valueOf(re.getParameter("encry"));
				 TblEmi i = clientuserService.getEmi(orderId);
		        
			    String url = "https://api.razorpay.com/v1/orders";
			 
			    URL obj = new URL(url);
			    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
			 
			    conn.setRequestProperty("Content-Type", "application/json");
			    conn.setDoOutput(true);
			 
			    conn.setRequestMethod("POST");
			 
			    String userpass = apiKey + ":" + secretKey;
			    String basicAuth = "Basic " + javax.xml.bind.DatatypeConverter.printBase64Binary(userpass.getBytes("UTF-8"));
			    conn.setRequestProperty ("Authorization", basicAuth);
			    double tamount = i.getAmount();
			    String data =  "{\"amount\":\""+(String.format("%.0f", (tamount*100)))+"\",\"currency\":\"INR\",\"receipt\":\""+("EMI-"+i.getId())+"\",\"payment_capture\":\"1\"}";
			    JSONObject orderRequest = new JSONObject();
			 	 orderRequest.put("amount", tamount*100); // amount in the smallest currency unit
			 	 orderRequest.put("currency", "INR");
			 	 orderRequest.put("receipt", "EMI-"+i.getId());
			 	 orderRequest.put("payment_capture", 1);
			    OutputStreamWriter out = new OutputStreamWriter(conn.getOutputStream());
			    out.write(data);
			    out.close();
			    int responseCode = conn.getResponseCode();
			    System.out.println("Response Code : " + responseCode);
			 
			    BufferedReader iny = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			    
			    String output;
			    StringBuffer response = new StringBuffer();

			    while ((output = iny.readLine()) != null) {
			     response.append(output);
			    }
			    iny.close();
			    System.out.println(response.toString());
			    List<Object[]> resList = new ArrayList<>();
			    resList.add(new Object[]{response.toString()});
			    resList.add(new Object[]{i.getMember().getMemberName(),i.getMember().getMobileNo(),i.getMember().getEmailId()});
			    /*Gson gson = new Gson();
			    JSONParser parser = new JSONParser(); 
			    JSONObject json = (JSONObject) parser.parse(response.toString());
			    json.put("invoiceName", i.getUser().getCname());
			    json.put("invoicePhone", i.getUser().getCname());
			    json.put("invoiceEmail", i.getUser().getCemailid());*/
			    return resList;
			    } catch (Exception e) {
			    e.printStackTrace();
			    List<Object[]> resList = new ArrayList<>();
			    resList.add(new Object[]{"has_error"});
			    return resList;
			    }
	    }@RequestMapping(value = "/generatpaymenteorderjavaasf", method = RequestMethod.POST)
	    public @ResponseBody List<Object[]> generatpaymenteorderjavaasf(HttpServletRequest re) throws Exception {
		 try {
			 	SSLContext ctx = SSLContext.getInstance("TLSv1.2");
		        ctx.init(null, null, null);
		        SSLContext.setDefault(ctx);
		        
		        apiKey = environment.getProperty("rasor_key");
				secretKey = environment.getProperty("rasor_secret_key");
				 Long orderId = Long.valueOf(re.getParameter("encry"));
				 TblAsf i = clientuserService.getAsF(orderId);
		        
			    String url = "https://api.razorpay.com/v1/orders";
			 
			    URL obj = new URL(url);
			    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
			 
			    conn.setRequestProperty("Content-Type", "application/json");
			    conn.setDoOutput(true);
			 
			    conn.setRequestMethod("POST");
			 
			    String userpass = apiKey + ":" + secretKey;
			    String basicAuth = "Basic " + javax.xml.bind.DatatypeConverter.printBase64Binary(userpass.getBytes("UTF-8"));
			    conn.setRequestProperty ("Authorization", basicAuth);
			    double tamount = i.getAmount();
			    String data =  "{\"amount\":\""+(String.format("%.0f", (tamount*100)))+"\",\"currency\":\"INR\",\"receipt\":\""+("ASF-"+i.getId())+"\",\"payment_capture\":\"1\"}";
			    JSONObject orderRequest = new JSONObject();
			 	 orderRequest.put("amount", tamount*100); // amount in the smallest currency unit
			 	 orderRequest.put("currency", "INR");
			 	 orderRequest.put("receipt", "ASF-"+i.getId());
			 	 orderRequest.put("payment_capture", 1);
			    OutputStreamWriter out = new OutputStreamWriter(conn.getOutputStream());
			    out.write(data);
			    out.close();
			    int responseCode = conn.getResponseCode();
			    System.out.println("Response Code : " + responseCode);
			 
			    BufferedReader iny = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			    
			    String output;
			    StringBuffer response = new StringBuffer();

			    while ((output = iny.readLine()) != null) {
			     response.append(output);
			    }
			    iny.close();
			    System.out.println(response.toString());
			    List<Object[]> resList = new ArrayList<>();
			    resList.add(new Object[]{response.toString()});
			    resList.add(new Object[]{i.getMember().getMemberName(),i.getMember().getMobileNo(),i.getMember().getEmailId()});
			    /*Gson gson = new Gson();
			    JSONParser parser = new JSONParser(); 
			    JSONObject json = (JSONObject) parser.parse(response.toString());
			    json.put("invoiceName", i.getUser().getCname());
			    json.put("invoicePhone", i.getUser().getCname());
			    json.put("invoiceEmail", i.getUser().getCemailid());*/
			    return resList;
			    } catch (Exception e) {
			    e.printStackTrace();
			    List<Object[]> resList = new ArrayList<>();
			    resList.add(new Object[]{"has_error"});
			    return resList;
			    }
	    }
	    @RequestMapping(value="/savepaymentdetailsemi",method = RequestMethod.POST)
		public @ResponseBody String savepaymentdetailsemi(HttpServletRequest re) throws Exception {
	    	try{
	    		if(re.getParameter("isasf").equals("0")){
	    			TblEmi i = clientuserService.getEmi(Long.valueOf(re.getParameter("odid")));
					i.setRazor_order_id(re.getParameter("ordid"));
					i.setRazor_payment_id(re.getParameter("payid"));
					i.setRazor_signature(re.getParameter("paysig"));
					i.setPaymentStatus("RZ");
					if(i.getEmidate() == null){
						Date d = commonService.getServerDateAndTime();
						i.setEmidate(d);
						i.setUpdatedAt(d);
					}
					boolean s = clientuserService.saveorupdateEMI(i);
					
					return s ? "true" : "false";
	    		}else{
	    			TblAsf i = clientuserService.getAsF(Long.valueOf(re.getParameter("odid")));
					i.setRazor_order_id(re.getParameter("ordid"));
					i.setRazor_payment_id(re.getParameter("payid"));
					i.setRazor_signature(re.getParameter("paysig"));
					i.setStatus("Cleared");
					Date d = commonService.getServerDateAndTime();
					i.setAsFDaterec(d);
					boolean s = clientuserService.saveorupdateASF(i);
					
					return s ? "true" : "false";
	    		}
			    
	    	}catch(Exception ex){
	    		ex.printStackTrace();
	    		return "false";
	    	}
	    	
	    	
	    	
		}
	    @RequestMapping(value="/savepaymentdetails",method = RequestMethod.POST)
		public @ResponseBody String savepaymentdetails(HttpServletRequest re) throws Exception {
	    	try{
	    		
	    		SSLContext ctx = SSLContext.getInstance("TLSv1.2");
		        ctx.init(null, null, null);
		        SSLContext.setDefault(ctx);
		        
		        apiKey = environment.getProperty("rasor_key");
				secretKey = environment.getProperty("rasor_secret_key");
				
				String url = "https://api.razorpay.com/v1/payments/"+re.getParameter("payid");
				 
			    URL obj = new URL(url);
			    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
			 
			    conn.setRequestProperty("Content-Type", "application/json");
			    conn.setDoOutput(true);
			 
			    conn.setRequestMethod("GET");
			    
			    String userpass = apiKey + ":" + secretKey;
			    String basicAuth = "Basic " + javax.xml.bind.DatatypeConverter.printBase64Binary(userpass.getBytes("UTF-8"));
			    conn.setRequestProperty ("Authorization", basicAuth);
			    
			    int responseCode = conn.getResponseCode();
			    System.out.println("Response Code : " + responseCode);
			 
			    BufferedReader iny = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			    
			    String output;
			    StringBuffer response = new StringBuffer();
			    
			    while ((output = iny.readLine()) != null) {
				     response.append(output);
				     System.out.println(output);
				 }
			    
			    JSONObject jsonObject = new JSONObject(response.toString());
			    
			    String name = (String) jsonObject.get("entity");    
			    int salary = (int) jsonObject.get("amount");
			    
			    System.out.println(name);
			    System.out.println(salary);
			    
	    		CustomerPay i = clientuserService.getCustomerPayment(Long.valueOf(re.getParameter("odid")));
		    	i.setIspaymentdone(1);
				i.setRazor_order_id(re.getParameter("ordid"));
				i.setRazor_payment_id(re.getParameter("payid"));
				i.setRazor_signature(re.getParameter("paysig"));
				i.setEntity((String) jsonObject.get("entity"));
				i.setCurrency((String) jsonObject.get("currency"));
				i.setStatus((String) jsonObject.get("status"));
				i.setMethod((String) jsonObject.get("method"));
				i.setAmount_refunded((int) jsonObject.get("amount_refunded"));
				i.setRefund_status(0);
				//i.setCaptured((int) jsonObject.get("captured"));
				i.setCaptured(0);
				i.setDescription((String) jsonObject.get("description"));
				i.setCard_id(jsonObject.isNull("card_id") ? "" : (String) jsonObject.get("card_id"));
				i.setBank(jsonObject.isNull("bank") ? "" : (String) jsonObject.get("bank"));
				i.setWallet(jsonObject.isNull("wallet") ? "" : (String) jsonObject.get("wallet"));
				i.setVpa(jsonObject.isNull("vpa") ? "" : (String) jsonObject.get("vpa"));
				i.setPayemail((String) jsonObject.get("email"));
				i.setContact((String) jsonObject.get("contact"));
				i.setFee((int) jsonObject.get("fee"));
				i.setTax((int) jsonObject.get("tax"));
				i.setError_code(jsonObject.isNull("error_code") ? "" : (String) jsonObject.get("error_code"));
				i.setError_description(jsonObject.isNull("error_description") ? "" : (String) jsonObject.get("error_description"));
				i.setInternational(0);
				i.setPaycreated(i.getCreatedat());
				
				
				boolean s = clientuserService.saveOrUpdateCustomerpay(i,1);
				/*if(s){
					long cid = -1l;
					String query = " SELECT MIN(o.order_id),MIN(o.ordercode),MIN(c.cityname),MIN(o.customername),MIN(o.mobileno),DATE_FORMAT(MIN(o.orderdatetime),'%d/%m/%Y %h:%i %p'),GROUP_CONCAT(od.tableno,'-',UPPER(od.seatno)), "
							+   " CASE WHEN MIN(o.ispaymentdone) = 0 THEN 'NOT PAID' ELSE 'PAID' END,MIN(o.pax),MIN(o.perseatamount),CASE WHEN MIN(o.paymenttype) = 0 THEN 'OFFLINE' ELSE 'ONLINE' END "
							+   " FROM orderdeatils od INNER JOIN ordermaster o ON o.order_id = od.order_id INNER JOIN citymaster c ON o.citymaster_id = c.citymaster_id GROUP BY od.order_id HAVING od.order_id = "+i.getId();
					String smstext = "Dear "+i.getCustomername()+", Your booking is confirmed, your order no : "+i.getOrdercode()+" and seat no: "+clientuserService.getDynamicMultiplecolumnListSQL(query, null).get(0)[6]+", Thank you for order at Hjack.";
					String smsresult = sendSMS(cid,i.getMobileno(),i.getId(),smstext);
				}*/
				
				return s ? "true" : "false";
	    	}catch(Exception ex){
	    		ex.printStackTrace();
	    		return "false";
	    	}
	    	
	    	
	    	
		}
	 @RequestMapping(value = "/registeruser/", method = RequestMethod.POST)
	 @ResponseBody
	 public ResponseEntity<Map<String, Object>> registeruser(@RequestBody UserRegistrationDTO r) throws JSONException {
		 Map<String, Object> mainap = new HashMap<>();
		 try{
			 	List<Object[]> u = checkmobileisregisterered(r.getMobileno());
			 	if(u.size() == 0){
			 		Users cat = new Users();
					cat.setName(r.getName());
					cat.setMobileno(r.getMobileno());
					cat.setPassword(r.getPassword());
					cat.setEmail_id(r.getEmail_id());
					cat.setIs_active(1);
					cat.setIsverified(0);
					cat.setUserlang(new UserLang(r.getLang_id()));
					cat.setCreated_at(commonService.getServerDateAndTime());
					
					boolean b = clientuserService.saveOrUpdateRegClient(cat, 0l);
					String result = b ? "true" : "false";
					mainap.put("success", result);
					mainap.put("userid", cat.getId());
					mainap.put("otp", "1234");
					mainap.put("msg", result.equals("true") ? "User registered successfully !!" : "Error while saving data, Please try again later !!");
					return new ResponseEntity<Map<String,Object>>(mainap, result.equals("true") ? HttpStatus.CREATED : HttpStatus.BAD_REQUEST);
			 	}else{
			 		mainap.put("success", "false");
			 		mainap.put("msg", "This phone no is already registered, you can directly sign in !!");
			 		return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.OK);
			 	}
				
				
			  
		 }catch(Exception e){
			 e.printStackTrace();
			 mainap.put("success", "false");
			 mainap.put("msg", e.getStackTrace());
			 return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.BAD_REQUEST);
		 }  finally {
			 if(Integer.parseInt(environment.getRequiredProperty("isprocessclean")) == 1){
				 commonService.clearsleepprocess(); 
			 }
		}   
	 }
	 @RequestMapping(value = "/checklogin/", method = RequestMethod.POST)
	 @ResponseBody
	 public ResponseEntity<Map<String, Object>> checklogin(@RequestBody LoginDTO r) throws JSONException {
		 Map<String, Object> mainap = new HashMap<>();
		 try{
			 String sql = "SELECT memberId,username,password,firstName,mobileNo,isActive,isFirstLogin FROM tbl_m_user WHERE username = '"+r.getUsername()+"'";
			List<Object[]> sl = clientuserService.getDynamicMultiplecolumnListSQL(sql, null);
			if(sl.size() != 0){
				if(r.getPassword().equals(sl.get(0)[2].toString())){
			 			mainap.put("success", "true");
			 			mainap.put("memberId", sl.get(0)[0]);
			 			mainap.put("datetime", commonService.getServerDateAndTime());
						mainap.put("msg", "Logged in successfully !!" );
						return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.OK);
			 		}else{
			 			mainap.put("success", "false");
			 			mainap.put("memberId", 0);
				 		mainap.put("msg", "Username or password does not match !!");
				 		return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.OK);
			 		}
			 	}else{
			 		mainap.put("success", "false");
			 		mainap.put("memberId", 0);
			 		mainap.put("msg", "This username does not registered !!");
			 		return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.OK);
			 	}
		 }catch(Exception e){
			 e.printStackTrace();
			 mainap.put("success", "false");
			 mainap.put("memberId", 0);
			 mainap.put("msg", e.getStackTrace());
			 return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.BAD_REQUEST);
		 }  finally {
			 if(Integer.parseInt(environment.getRequiredProperty("isprocessclean")) == 1){
				 commonService.clearsleepprocess(); 
			 }
		}   
	 }
	 @RequestMapping(value = "/getmemberdetails/{memberId}/", method = RequestMethod.GET ,produces = MediaType.APPLICATION_JSON_VALUE)
	    public ResponseEntity<Map<String, Object>> getproductdetailsbyitemcategory(@PathVariable("memberId")Long memberId,HttpServletRequest request) throws JSONException {
		 Map<String, Object> mainap = new HashMap<>();
		 try{
			
			TblMember m = clientuserService.getMember(memberId);
			m.setProduct(null);
			String sql = "SELECT CASE WHEN SUM(r.duration) IS NULL THEN 0 ELSE SUM(r.duration) END,CASE WHEN SUM(r.duration) IS NULL THEN t.planDays ELSE t.planDays-SUM(r.duration) END ,t.membercode FROM tbl_t_reservation r INNER JOIN tbl_m_member t ON r.memberId = t.id WHERE resType = 'Regular' AND memberId = "+memberId;
			Object[] dets = clientuserService.getDynamicMultiplecolumnListSQL(sql, null).get(0);
			m.setUtilizedDays(Integer.parseInt(dets[0].toString()));
			m.setRemnight((Integer.parseInt(dets[1].toString())));
			
			List<TblReservation> tr = clientuserService.getReservationDetails(memberId);
			
			List<TblReservation> rlist = new ArrayList<>();
			for (int i = 0; i < tr.size(); i++) {
				TblReservation r = tr.get(i);
				r.setMember(null);
				rlist.add(r);
				r = null;
			}
			m.setReservation(rlist);
			mainap.put("MemberDetails", m);
			mainap.put("msg", "Records Found.");
			mainap.put("success", "true");
			mainap.put("datetime", commonService.getServerDateAndTime());
			 return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.OK); 
		 }catch(Exception e){
			 e.printStackTrace();
			 mainap.put("success", "false");
			 mainap.put("msg", e.getStackTrace());
		 		mainap.put("ReadyStock", new ArrayList<>());
			 return new ResponseEntity<Map<String,Object>>(mainap, HttpStatus.NOT_FOUND);
		 }    finally {
			 if(Integer.parseInt(environment.getRequiredProperty("isprocessclean")) == 1){
				 commonService.clearsleepprocess(); 
			 }
		}  
	    }
}
 