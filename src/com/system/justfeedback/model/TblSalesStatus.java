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
@Table(name="tbl_salesstatus")
public class TblSalesStatus {
	public TblSalesStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblSalesStatus(Long st_id) {
		super();
		this.st_id=st_id;
	}

	@Id
	@GeneratedValue
	@Column(name="st_id")
	private Long st_id;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fataloutcalldate")
	private Date fataloutcalldate;
	
	@Column(name="fataloutcallusername")
	private String fataloutcallusername;
	
	@Column(name="fatalstatus")
	private String fatalstatus;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fatalcallbackdate")
	private Date fatalcallbackdate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fatalclosuredate")
	private Date fatalclosuredate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="salesapproveddate")
	private Date salesapproveddate;
	
	@Column(name="fatalclosureusername")
	private String fatalclosureusername;

	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	public Long getSt_id() {
		return st_id;
	}

	public void setSt_id(Long st_id) {
		this.st_id = st_id;
	}

	public Date getFataloutcalldate() {
		return fataloutcalldate;
	}

	public void setFataloutcalldate(Date fataloutcalldate) {
		this.fataloutcalldate = fataloutcalldate;
	}

	public String getFataloutcallusername() {
		return fataloutcallusername;
	}

	public void setFataloutcallusername(String fataloutcallusername) {
		this.fataloutcallusername = fataloutcallusername;
	}

	public String getFatalstatus() {
		return fatalstatus;
	}

	public void setFatalstatus(String fatalstatus) {
		this.fatalstatus = fatalstatus;
	}

	public Date getFatalcallbackdate() {
		return fatalcallbackdate;
	}

	public void setFatalcallbackdate(Date fatalcallbackdate) {
		this.fatalcallbackdate = fatalcallbackdate;
	}

	public Date getFatalclosuredate() {
		return fatalclosuredate;
	}

	public void setFatalclosuredate(Date fatalclosuredate) {
		this.fatalclosuredate = fatalclosuredate;
	}

	public Date getSalesapproveddate() {
		return salesapproveddate;
	}

	public void setSalesapproveddate(Date salesapproveddate) {
		this.salesapproveddate = salesapproveddate;
	}

	public String getFatalclosureusername() {
		return fatalclosureusername;
	}

	public void setFatalclosureusername(String fatalclosureusername) {
		this.fatalclosureusername = fatalclosureusername;
	}

	public TblMember getMember() {
		return member;
	}

	public void setMember(TblMember member) {
		this.member = member;
	}
	
	
}
