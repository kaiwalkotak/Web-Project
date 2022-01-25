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
@Table(name="tbl_plcstatus")
public class TblPlcStatus {
	public TblPlcStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblPlcStatus(Long plc_id) {
		super();
		this.plc_id=plc_id;
	}

	@Id
	@GeneratedValue
	@Column(name="plc_id")
	private Long plc_id;
	
	@Column(name="namest")
	private String namest;
	
	@Column(name="coappnamest")
	private String coappnamest;
	
	@Column(name="membeeraddressst")
	private String membeeraddressst;
	
	@Column(name="emailidst")
	private String emailidst;
	
	@Column(name="mobilenost")
	private String mobilenost;
	
	@Column(name="productpurchase")
	private String productpurchase;
	
	@Column(name="productprice")
	private String productprice;
	
	@Column(name="dpamount")
	private String dpamount;
	
	@Column(name="dpinstallment")
	private String dpinstallment;
	
	@Column(name="emiamount")
	private String emiamount;
	
	@Column(name="emiinstallment")
	private String emiinstallment;
	
	@Column(name="offers")
	private String offers;
	
	@Column(name="reservationrules")
	private String reservationrules;
	
	@Column(name="memcontactinfo")
	private String memcontactinfo;
	
	@Column(name="remarks")
	private String remarks;
	
	@Column(name="reservation_rule")
	private String reservation_rule;
	
	@Column(name="mem_cont_info")
	private String mem_cont_info;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Temporal(TemporalType.DATE)
	@Column(name="plcinitiateddate")
	private Date plcinitiateddate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="plccompleteddate")
	private Date plccompleteddate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="callbackdate")
	private Date callbackdate;

	public Long getPlc_id() {
		return plc_id;
	}

	public void setPlc_id(Long plc_id) {
		this.plc_id = plc_id;
	}

	public String getNamest() {
		return namest;
	}

	public void setNamest(String namest) {
		this.namest = namest;
	}

	public String getCoappnamest() {
		return coappnamest;
	}

	public void setCoappnamest(String coappnamest) {
		this.coappnamest = coappnamest;
	}

	public String getMembeeraddressst() {
		return membeeraddressst;
	}

	public void setMembeeraddressst(String membeeraddressst) {
		this.membeeraddressst = membeeraddressst;
	}

	public String getEmailidst() {
		return emailidst;
	}

	public void setEmailidst(String emailidst) {
		this.emailidst = emailidst;
	}

	public String getMobilenost() {
		return mobilenost;
	}

	public void setMobilenost(String mobilenost) {
		this.mobilenost = mobilenost;
	}

	public String getProductpurchase() {
		return productpurchase;
	}

	public void setProductpurchase(String productpurchase) {
		this.productpurchase = productpurchase;
	}

	public String getProductprice() {
		return productprice;
	}

	public void setProductprice(String productprice) {
		this.productprice = productprice;
	}

	public String getDpamount() {
		return dpamount;
	}

	public void setDpamount(String dpamount) {
		this.dpamount = dpamount;
	}

	public String getDpinstallment() {
		return dpinstallment;
	}

	public void setDpinstallment(String dpinstallment) {
		this.dpinstallment = dpinstallment;
	}

	public String getEmiamount() {
		return emiamount;
	}

	public void setEmiamount(String emiamount) {
		this.emiamount = emiamount;
	}

	public String getEmiinstallment() {
		return emiinstallment;
	}

	public void setEmiinstallment(String emiinstallment) {
		this.emiinstallment = emiinstallment;
	}

	public String getOffers() {
		return offers;
	}

	public void setOffers(String offers) {
		this.offers = offers;
	}

	public String getReservationrules() {
		return reservationrules;
	}

	public void setReservationrules(String reservationrules) {
		this.reservationrules = reservationrules;
	}

	public String getMemcontactinfo() {
		return memcontactinfo;
	}

	public void setMemcontactinfo(String memcontactinfo) {
		this.memcontactinfo = memcontactinfo;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public TblMember getMember() {
		return member;
	}

	public void setMember(TblMember member) {
		this.member = member;
	}

	public Date getPlcinitiateddate() {
		return plcinitiateddate;
	}

	public void setPlcinitiateddate(Date plcinitiateddate) {
		this.plcinitiateddate = plcinitiateddate;
	}

	public Date getPlccompleteddate() {
		return plccompleteddate;
	}

	public void setPlccompleteddate(Date plccompleteddate) {
		this.plccompleteddate = plccompleteddate;
	}

	public Date getCallbackdate() {
		return callbackdate;
	}

	public void setCallbackdate(Date callbackdate) {
		this.callbackdate = callbackdate;
	}

	public String getReservation_rule() {
		return reservation_rule;
	}

	public void setReservation_rule(String reservation_rule) {
		this.reservation_rule = reservation_rule;
	}

	public String getMem_cont_info() {
		return mem_cont_info;
	}

	public void setMem_cont_info(String mem_cont_info) {
		this.mem_cont_info = mem_cont_info;
	}
	
	
	
	
	
}
