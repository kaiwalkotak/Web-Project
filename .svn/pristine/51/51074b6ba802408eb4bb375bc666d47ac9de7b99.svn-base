package com.system.justfeedback.test;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

public class Enc {
	private static SecretKeySpec secretKey;
 	private static byte[] key;
	public static void main(String[] args) {
		final String secretKey = "justfeedbacksystempasswordkey";
		System.out.println(encrypt("wcstatuslist",secretKey));
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
}
