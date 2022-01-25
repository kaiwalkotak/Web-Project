package com.system.justfeedback.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="tbl_wcstatus")
public class TblWcStatus {
	public TblWcStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblWcStatus(Long wc_id) {
		super();
		this.wc_id=wc_id;
	}

	@Id
	@GeneratedValue
	@Column(name="wc_id")
	private Long wc_id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Temporal(TemporalType.DATE)
	@Column(name="wcinitiateddate")
	private Date wcinitiateddate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="wccallbackdate")
	private Date wccallbackdate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="wccompleteddate")
	private Date wccompleteddate;
	
	@Column(name="wccompletedby")
	private String wccompletedby;
	
	@Column(name="confirmationofwl")
	private String confirmationofwl;
	
	@Column(name="confirmationofoffer")
	private String confirmationofoffer;
	
	@Column(name="confirmationofhsd")
	private String confirmationofhsd;
	
	@Column(name="confirmationofbooking")
	private String confirmationofbooking;
	
	@ManyToOne
	@JoinColumn(name="emp_id")
    private Employee emp;

	public Long getWc_id() {
		return wc_id;
	}

	public void setWc_id(Long wc_id) {
		this.wc_id = wc_id;
	}

	public TblMember getMember() {
		return member;
	}

	public void setMember(TblMember member) {
		this.member = member;
	}

	public Date getWcinitiateddate() {
		return wcinitiateddate;
	}

	public void setWcinitiateddate(Date wcinitiateddate) {
		this.wcinitiateddate = wcinitiateddate;
	}

	public Date getWccallbackdate() {
		return wccallbackdate;
	}

	public void setWccallbackdate(Date wccallbackdate) {
		this.wccallbackdate = wccallbackdate;
	}

	public Date getWccompleteddate() {
		return wccompleteddate;
	}

	public void setWccompleteddate(Date wccompleteddate) {
		this.wccompleteddate = wccompleteddate;
	}

	public String getWccompletedby() {
		return wccompletedby;
	}

	public void setWccompletedby(String wccompletedby) {
		this.wccompletedby = wccompletedby;
	}

	public String getConfirmationofwl() {
		return confirmationofwl;
	}

	public void setConfirmationofwl(String confirmationofwl) {
		this.confirmationofwl = confirmationofwl;
	}

	public String getConfirmationofoffer() {
		return confirmationofoffer;
	}

	public void setConfirmationofoffer(String confirmationofoffer) {
		this.confirmationofoffer = confirmationofoffer;
	}

	public String getConfirmationofhsd() {
		return confirmationofhsd;
	}

	public void setConfirmationofhsd(String confirmationofhsd) {
		this.confirmationofhsd = confirmationofhsd;
	}

	public String getConfirmationofbooking() {
		return confirmationofbooking;
	}

	public void setConfirmationofbooking(String confirmationofbooking) {
		this.confirmationofbooking = confirmationofbooking;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}
	
	
	
}
