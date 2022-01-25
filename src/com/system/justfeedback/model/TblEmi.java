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
@Table(name="tbl_emi_payments")
public class TblEmi {
	public TblEmi() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblEmi(Long id) {
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
	
	@Column(name="amount")
	private float amount;
	
	@Temporal(TemporalType.DATE)
	@Column(name="emidate")
	private Date emidate;
	
	@Column(name="status")
	private String status;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updatedAt")
	private Date updatedAt;
	
	@Column(name="paymentStatus")
	private String paymentStatus;
	
	@Column(name="paymentMode")
	private String paymentMode;
	
	@Column(name="chequeNo")
	private String chequeNo;
	
	@Column(name="orderNo")
	private int orderNo;
	
	@Column(name="others")
	private String others;
	
	@Column(name="razor_payment_id")
	private String razor_payment_id;
	
	@Column(name="razor_order_id")
	private String razor_order_id;
	
	@Column(name="razor_signature")
	private String razor_signature;

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

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public Date getEmidate() {
		return emidate;
	}

	public void setEmidate(Date emidate) {
		this.emidate = emidate;
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

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getChequeNo() {
		return chequeNo;
	}

	public void setChequeNo(String chequeNo) {
		this.chequeNo = chequeNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getRazor_payment_id() {
		return razor_payment_id;
	}

	public void setRazor_payment_id(String razor_payment_id) {
		this.razor_payment_id = razor_payment_id;
	}

	public String getRazor_order_id() {
		return razor_order_id;
	}

	public void setRazor_order_id(String razor_order_id) {
		this.razor_order_id = razor_order_id;
	}

	public String getRazor_signature() {
		return razor_signature;
	}

	public void setRazor_signature(String razor_signature) {
		this.razor_signature = razor_signature;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}
	
	
}
