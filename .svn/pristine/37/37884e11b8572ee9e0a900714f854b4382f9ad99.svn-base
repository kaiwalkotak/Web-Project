package com.system.justfeedback.test;

import java.io.IOException;

public class test {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		/*Translator translate = Translator.getInstance(); 
		String text = translate.translate("Hello", Language.ENGLISH, Language.PORTUGUESE); 
		System.out.println(text); */
		/*Translator translate = Translator.getInstance();
		String text = translate.translate("I am programmer", Language.ENGLISH, Language.GUJARATI); */
		
		int s = 120;
		int n = 4;
		
		float nn = s%n;
		
		int ss = s/n;
		int cnt = 0;
		for (int i = 0; i < n; i++) {
			cnt = cnt + ss;
			if(nn != 0 && i == (n-1)){
				System.out.println(ss+(s-cnt) + "------------------"+(2020+i));
			}else{
				System.out.println(ss + "------------------"+(2020+i));
			}
		}
		
		
		
	}
	
	private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	public static String randomAlphaNumeric(int count) {
	StringBuilder builder = new StringBuilder();
	while (count-- != 0) {
	int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
	builder.append(ALPHA_NUMERIC_STRING.charAt(character));
	}
	return builder.toString();
	}

}
