package com.system.justfeedback.services;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.system.justfeedback.daos.HibernateQueryDao;


@Service
public class CommonService {
	
	@Autowired
	HibernateQueryDao hibernateQueryDao;
	
	@Autowired
    private Environment environment;
	
	
	private static SecretKeySpec secretKey;
 	private static byte[] key;
	
	public Date getServerDateAndTime(){
		List list = hibernateQueryDao.nativeSQLQuery("select NOW()",null);
		Date retVal = null;
		if(list != null && !list.isEmpty()){
			retVal = (Date)list.get(0);
		}
		return retVal;
	}
	
	public String getIPaddres(HttpServletRequest request) throws UnknownHostException{
		String ipAddress = request.getHeader("X-FORWARDED-FOR") != null ? request.getHeader("X-FORWARDED-FOR") : request.getRemoteAddr();
		InetAddress ip = InetAddress.getLocalHost(); 
		ipAddress=(String)ip.getHostAddress();
		return ipAddress;
	}

	public HttpServletResponse downloadDocument(HttpServletRequest re,HttpServletResponse res,String filePath) {
		try {
			
			File file = null;
			file = new File(filePath.equals("-1") ? re.getParameter("path").trim() : filePath.trim());
			
			if(!file.exists()){
				String errorMessage = "Sorry. The file you are looking for does not exist";
				System.out.println(errorMessage);
				OutputStream outputStream = res.getOutputStream();
				outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
				outputStream.close();
			}
			String mimeType= URLConnection.guessContentTypeFromName(file.getName());
			if(mimeType==null){
				System.out.println("mimetype is not detectable, will take default");
				mimeType = "application/octet-stream";
			}
			System.out.println("mimetype : "+mimeType);
	        res.setContentType(mimeType);

	        res.setHeader("Content-Disposition", String.format("attachment; filename=\"" + file.getName() +"\""));
	        res.setContentLength((int)file.length());
			InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
	        FileCopyUtils.copy(inputStream, res.getOutputStream());
			return res;
		} catch (HibernateException ex) {
			ex.printStackTrace();
			return res;
		}catch(IOException ex){
			ex.printStackTrace();
			return res;
		}catch(Exception ex){
			ex.printStackTrace();
			return res;
		}
	}
	public String encryptionDecryption(String originalString,boolean isEncryption){
		final String secretKey = "justfeedbacksystempasswordkey";
		return isEncryption ? encrypt(originalString,secretKey) : decrypt(originalString,secretKey);
	}
	public static void setKey(String myKey){
        MessageDigest sha = null;
        try {
            key = myKey.getBytes("UTF-8");
            sha = MessageDigest.getInstance("SHA-1");
            key = sha.digest(key);
            key = Arrays.copyOf(key, 16); 
            secretKey = new SecretKeySpec(key, "AES");
        } 
        catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } 
        catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
	 public static String encrypt(String strToEncrypt, String secret) {
    	 try{
             setKey(secret);
             Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
             cipher.init(Cipher.ENCRYPT_MODE, secretKey);
             return DatatypeConverter.printBase64Binary(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
         }catch (Exception e){
        	 return "Error while encrypting: " + e.toString();
         }
	}

    public static String decrypt(String strToDecrypt, String secret){
    	try{
            setKey(secret);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            return new String(cipher.doFinal(DatatypeConverter.parseBase64Binary(strToDecrypt)));
        }catch (Exception e){
        	return "Error while encrypting: " + e.toString();
        }
    }

	public List<Object[]> getStatesorcity(Long id, String isState) {
		Map<String, Object> var = new HashMap<String, Object>();
		var.put("id", id);
		if(isState.equals("state")){
			return hibernateQueryDao.createNewQuery("SELECT st.id,st.statename FROM States st INNER JOIN st.country cou WHERE cou.id =:id",var);
		}else{
			return hibernateQueryDao.createNewQuery("SELECT ct.id,ct.cityname FROM city ct WHERE ct.state.id =:id",var);
		}
		
	}
	/*public void compressImage(File tempFile,String orgFilename,String ext) {
		try{
			File input = tempFile;
		     BufferedImage image = ImageIO.read(input);
		     
		     File compressedImageFile = new File(orgFilename);
		     OutputStream os =new FileOutputStream(compressedImageFile);
		     
		     Iterator<ImageWriter>writers =  ImageIO.getImageWritersByFormatName(ext);
		      ImageWriter writer = (ImageWriter) writers.next();
		      
		      ImageOutputStream ios = ImageIO.createImageOutputStream(os);
		      writer.setOutput(ios);

		      ImageWriteParam param = writer.getDefaultWriteParam();
		      
		      param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
		      param.setCompressionQuality(0.4f);
		      writer.write(null, new IIOImage(image, null, null), param);
		      
		      os.close();
		      ios.close();
		      writer.dispose();
		      System.out.println("Is File Commpressed - "+input.delete());
		}catch (Exception ex){
			tempFile.renameTo(new File(orgFilename));
		}
		
	}*/
	public String documentUpload(HttpServletRequest request, MultipartFile file,String docName) {
		try {
			if (!file.isEmpty()) {
				String rootPath = request.getSession().getServletContext().getRealPath("/");
				File dir = new File(rootPath + File.separator + request.getParameter("docUploadPath"));
				if (!dir.exists()) {
		            dir.mkdirs();
		        }
				File serverFile = new File(dir.getAbsolutePath() + File.separator + docName);
				 try {
			            try (InputStream is = file.getInputStream(); BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile))) {
			                int i;
			                while ((i = is.read()) != -1) {
			                    stream.write(i);
			                }
			                stream.flush();
			            }
			        } catch (IOException e) {
			            System.out.println("error : " + e.getMessage());
			        }
	            return "You successfully uploaded file = " + docName+"~y";
			}else {
		        return "You failed to upload " + docName + " because the file was empty.~n";
		    }
		}catch (Exception ex) {
        	ex.printStackTrace();
            return "You failed to upload " + docName + " => " + ex.getMessage()+"~n";
	    }
	}
	public String getBaseURL(HttpServletRequest request) {
		return  request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
	}
	public Date changeDateFormate(String fromFormate,String toFormat,String date) throws ParseException{
		SimpleDateFormat format = new SimpleDateFormat(fromFormate);
		SimpleDateFormat f = new SimpleDateFormat(toFormat);
		return f.parse(f.format(format.parse(date)));
		
	}
	public String dateToString(String format,Date date) throws ParseException{
		SimpleDateFormat formatNew = new SimpleDateFormat(format);
		return formatNew.format(date);
		
	}
	public void clearsleepprocess() {
		int res = hibernateQueryDao.updateDeleteSQLQuery("CALL kill_other_processes()", null);
	}
	
	public String sendEMAIL(HttpServletRequest re, String body, String subject, String toids, String filePath) throws MessagingException {
		try{
			Properties props = new Properties();
		      props.put("mail.smtp.auth", "true");
		      props.put("mail.smtp.starttls.enable", "true");
		      props.put("mail.smtp.host", environment.getProperty("mailhost"));
		      props.put("mail.smtp.port", environment.getProperty("mailport"));
		      
		      javax.mail.Session session1 = javax.mail.Session.getInstance(props,
				      new javax.mail.Authenticator() {
				         protected PasswordAuthentication getPasswordAuthentication() {
				            return new PasswordAuthentication(environment.getProperty("mailusername"),environment.getProperty("mailpassword"));
				         }
				      });
		      
		      Message message = new MimeMessage(session1);
	          message.setFrom(new InternetAddress(environment.getProperty("mailusername")));
	          /*message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(environment.getProperty("adminemail")));*/
	          message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(toids));
	          //message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(environment.getProperty("adminemail")));
	          message.setSubject(subject);
	          BodyPart messageBodyPart = new MimeBodyPart();
	          messageBodyPart.setContent(body, "text/html");
	          Multipart multipart = new MimeMultipart();
	          multipart.addBodyPart(messageBodyPart);
	          
	          String filename = filePath != null ? filePath : "" ;
	          if(!filename.equals("")){
		          String fileNames[] = filename.split(",");
		          DataSource source = null;
		          for(int i=0;i<fileNames.length;i++){
			          System.out.println(fileNames[i]);
			          messageBodyPart = new MimeBodyPart();
			          source = new FileDataSource(fileNames[i]);
			          messageBodyPart.setDataHandler(new DataHandler(source));
			          messageBodyPart.setFileName(new File(fileNames[i]).getName());
			          multipart.addBodyPart(messageBodyPart);
		          }
	          }
	          message.setContent(multipart);
	          
	          
	          message.setContent(multipart);
	          Transport.send(message);
	          System.out.println("Email sent successfully !!");
	          return "true";
		}catch(Exception ex){
			ex.printStackTrace();
			return "false";
		}
	}
	private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	public String randomAlphaNumeric(int count) {
	StringBuilder builder = new StringBuilder();
	while (count-- != 0) {
	int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
	builder.append(ALPHA_NUMERIC_STRING.charAt(character));
	}
	return builder.toString();
	}
}
