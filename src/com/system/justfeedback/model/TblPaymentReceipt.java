package com.system.justfeedback.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="tbl_t_paymentreceipt")
public class TblPaymentReceipt {
	public TblPaymentReceipt() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblPaymentReceipt(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="payrec_id")
	private Long id;
	
	@Column(name="paymentType")
	private String paymentType;
	
	@Column(name="memberId")
	private Long memberId;
	
	@Column(name="memberCode")
	private String memberCode;
	
	@Column(name="receiptNo")
	private String receiptNo;
	
	@Column(name="memberName")
	private String memberName;
	
	@Column(name="location")
	private String location;
	
	@Column(name="paymentTowards")
	private String paymentTowards;
	
	@Column(name="paymentMode")
	private String paymentMode;
	
	@Column(name="amount")
	private float amount;
	
	@Column(name="cardNumber")
	private String cardNumber;
	
	@Column(name="mobileNo")
	private String mobileNo;
	
	@Column(name="emailId")
	private String emailId;
	
	@Column(name="receivedBy")
	private String receivedBy;
	
	@Column(name="isActive")
	private int isActive;
	
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

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}

	public String getReceiptNo() {
		return receiptNo;
	}

	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPaymentTowards() {
		return paymentTowards;
	}

	public void setPaymentTowards(String paymentTowards) {
		this.paymentTowards = paymentTowards;
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

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getReceivedBy() {
		return receivedBy;
	}

	public void setReceivedBy(String receivedBy) {
		this.receivedBy = receivedBy;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
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
