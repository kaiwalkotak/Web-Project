package com.system.justfeedback.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="tbl_m_user")
public class TblUser {
	public TblUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblUser(Long id) {
		super();
		this.id=id;
	}
	
	@Id
	@GeneratedValue
	@Column(name="userId")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Column(name="roleID")
	private int roleID;
	
	@Column(name="firstName")
	private String firstName;
	
	@Column(name="mobileNo")
	private String mobileNo;
	
	@Column(name="emailID")
	private String emailID;
	
	@Column(name="password")
	private String password;
	
	@Column(name="isActive")
	private int isActive;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Column(name="createdBy")
	private String createdBy;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updatedAt")
	private Date updatedAt;
	
	@Column(name="internalid")
	private String internalid;
	
	@Column(name="username")
	private String username;
	
	@Column(name="isFirstLogin")
	private int isFirstLogin;
	
	@Column(name="isAgree")
	private int isAgree;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TblMember getMember() {
		return member;
	}

	public void setMember(TblMember member) {
		this.member = member;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEmailID() {
		return emailID;
	}

	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getInternalid() {
		return internalid;
	}

	public void setInternalid(String internalid) {
		this.internalid = internalid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getIsFirstLogin() {
		return isFirstLogin;
	}

	public void setIsFirstLogin(int isFirstLogin) {
		this.isFirstLogin = isFirstLogin;
	}

	public int getIsAgree() {
		return isAgree;
	}

	public void setIsAgree(int isAgree) {
		this.isAgree = isAgree;
	}
	
	
	
}
