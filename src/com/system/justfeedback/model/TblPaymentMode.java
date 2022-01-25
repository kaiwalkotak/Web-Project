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
@Table(name="tbl_m_downpayment")
public class TblPaymentMode {
	public TblPaymentMode() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblPaymentMode(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="downpay_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Column(name="paymentMode")
	private String paymentMode;
	
	@Column(name="amount")
	private float amount;
	
	@Column(name="chequeNo")
	private String chequeNo;
	
	@Temporal(TemporalType.DATE)
	@Column(name="emidate")
	private Date emidate;
	
	@Column(name="others")
	private String others;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Column(name="status")
	private String status;

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

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public String getChequeNo() {
		return chequeNo;
	}

	public void setChequeNo(String chequeNo) {
		this.chequeNo = chequeNo;
	}

	public Date getEmidate() {
		return emidate;
	}

	public void setEmidate(Date emidate) {
		this.emidate = emidate;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
