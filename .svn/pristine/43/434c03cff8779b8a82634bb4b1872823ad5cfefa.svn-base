package com.system.justfeedback.test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class ChackMemberis {
	static ArrayList<String> resortNmaeList = new ArrayList<String>();
	int file_1_Count = 0;

	public void readFromFile() throws IOException {
		BufferedReader br = new BufferedReader(new FileReader("D:\\testing Foder\\resortNames.txt"));

		String resortName = br.readLine();

		while (resortName != null) {
			file_1_Count++;
			resortNmaeList.add(resortName);
			//System.out.println(resortName);
			resortName = br.readLine();
		}
		br.close();
	}

	public static void main(String[] args) throws IOException {
		new ChackMemberis().readFromFile();
		//System.out.println(resortNmaeList);

	}

}
