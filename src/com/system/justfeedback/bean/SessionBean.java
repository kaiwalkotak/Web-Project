package com.system.justfeedback.bean;

import java.io.Serializable;

import com.system.justfeedback.model.RoleMaster;

/**
 * @author Keval.soni 
 */

public class SessionBean implements Serializable{
	private static final long serialVersionUID = -647235880755491763L;
	public SessionBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SessionBean(long cid, String ccode, String cname,
			String ipaddress) {
		super();
		this.cid = cid;
		this.ccode = ccode;
		this.cname = cname;
		this.ipaddress = ipaddress;
	}
	
	private long cid;
	private String ccode;
	private String cname;
	private String ipaddress;
	private RoleMaster role;
	private String logo;
	private String mobile;
	private String adminpass;
	private int isFirst;
	
	public long getCid() {
		return cid;
	}
	public void setCid(long cid) {
		this.cid = cid;
	}
	public String getCcode() {
		return ccode;
	}
	public void setCcode(String ccode) {
		this.ccode = ccode;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getIpaddress() {
		return ipaddress;
	}
	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}
	public RoleMaster getRole() {
		return role;
	}
	public void setRole(RoleMaster role) {
		this.role = role;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAdminpass() {
		return adminpass;
	}
	public void setAdminpass(String adminpass) {
		this.adminpass = adminpass;
	}
	public int getIsFirst() {
		return isFirst;
	}
	public void setIsFirst(int isFirst) {
		this.isFirst = isFirst;
	}
	
}
