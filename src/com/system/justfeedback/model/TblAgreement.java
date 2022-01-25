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
@Table(name="tbl_m_agreement")
public class TblAgreement {
	public TblAgreement() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblAgreement(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="agr_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Column(name="name")
	private String name;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="address")
	private String address;
	
	@Temporal(TemporalType.DATE)
	@Column(name="dob")
	private Date dob;
	
	@Column(name="membercardpath")
	private String membercardpath;
	
	@Column(name="isactive")
	private int isactive;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdDate")
	private Date createdDate;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updatedDate")
	private Date updatedDate;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getMembercardpath() {
		return membercardpath;
	}

	public void setMembercardpath(String membercardpath) {
		this.membercardpath = membercardpath;
	}

	public int getIsactive() {
		return isactive;
	}

	public void setIsactive(int isactive) {
		this.isactive = isactive;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	} 
	
	
}

