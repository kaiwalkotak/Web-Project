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
@Table(name="tbl_courierdetails")
public class TblCourier {
	public TblCourier() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblCourier(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Column(name="courierType")
	private String courierType;
	
	@Column(name="cname")
	private String cname;
	
	@Column(name="docatNo")
	private String docatNo;
	
	@Temporal(TemporalType.DATE)
	@Column(name="courierdate")
	private Date courierdate;
	
	@Column(name="status")
	private String status;
	
	@Temporal(TemporalType.DATE)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Temporal(TemporalType.DATE)
	@Column(name="updatedAt")
	private Date updatedAt;

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

	public String getCourierType() {
		return courierType;
	}

	public void setCourierType(String courierType) {
		this.courierType = courierType;
	}

	public String getDocatNo() {
		return docatNo;
	}

	public void setDocatNo(String docatNo) {
		this.docatNo = docatNo;
	}

	public Date getCourierdate() {
		return courierdate;
	}

	public void setCourierdate(Date courierdate) {
		this.courierdate = courierdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}
	
	
}
