package com.system.justfeedback.model;

import java.io.Serializable;

public class BusinessDTO implements Serializable{
	Long businessid;
	String bussiness_name;
	String address;
	Long state_id;
	Long city_id;
	String zip_code;
	String phone_no;
	String website;
	String email_id;
	String password;
	String createdat;
	public Long getBusinessid() {
		return businessid;
	}
	public void setBusinessid(Long businessid) {
		this.businessid = businessid;
	}
	public String getBussiness_name() {
		return bussiness_name;
	}
	public void setBussiness_name(String bussiness_name) {
		this.bussiness_name = bussiness_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Long getState_id() {
		return state_id;
	}
	public void setState_id(Long state_id) {
		this.state_id = state_id;
	}
	public Long getCity_id() {
		return city_id;
	}
	public void setCity_id(Long city_id) {
		this.city_id = city_id;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCreatedat() {
		return createdat;
	}
	public void setCreatedat(String createdat) {
		this.createdat = createdat;
	}
	
	
}
