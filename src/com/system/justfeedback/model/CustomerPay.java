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
@Table(name="customerpay")
public class CustomerPay {
	public CustomerPay() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomerPay(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="paynow_id")
	private Long id;
	
	@Column(name="custname")
	private String custname;
	
	@Column(name="mobileno")
	private String mobileno;
	
	@Column(name="emailid")
	private String emailid;
	
	@Column(name="amount")
	private float amount;
	
	@Column(name="salesexname")
	private String salesexname;
	
	@Column(name="idproof1")
	private String idproof1;
	
	@Column(name="idproof2")
	private String idproof2;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdat")
	private Date createdat;
	
	@Column(name="ispaymentdone")
	private int ispaymentdone;
	
	@Column(name="razor_payment_id")
	private String razor_payment_id;
	
	@Column(name="razor_order_id")
	private String razor_order_id;
	
	@Column(name="razor_signature")
	private String razor_signature;
	
	@Column(name="entity")
	private String entity;
	
	@Column(name="currency")
	private String currency;
	
	@Column(name="status")
	private String status;
	
	@Column(name="order_id")
	private String order_id;
	
	@Column(name="invoice_id")
	private String invoice_id;
	
	@Column(name="international")
	private int international;
	
	@Column(name="method")
	private String method;
	
	@Column(name="amount_refunded")
	private float amount_refunded;
	
	@Column(name="refund_status")
	private int refund_status;
	
	@Column(name="captured")
	private int captured;
	
	@Column(name="description")
	private String description;
	
	@Column(name="card_id")
	private String card_id;
	
	@Column(name="bank")
	private String bank;
	
	@Column(name="wallet")
	private String wallet;
	
	@Column(name="vpa")
	private String vpa;
	
	@Column(name="payemail")
	private String payemail;
	
	@Column(name="contact")
	private String contact;
	
	@Column(name="notes")
	private String notes;
	
	@Column(name="fee")
	private float fee;
	
	@Column(name="tax")
	private float tax;
	
	@Column(name="error_code")
	private String error_code;
	
	@Column(name="error_description")
	private String error_description;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="paycreated")
	private Date paycreated;
	
	
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public String getSalesexname() {
		return salesexname;
	}

	public void setSalesexname(String salesexname) {
		this.salesexname = salesexname;
	}

	public String getIdproof1() {
		return idproof1;
	}

	public void setIdproof1(String idproof1) {
		this.idproof1 = idproof1;
	}

	public String getIdproof2() {
		return idproof2;
	}

	public void setIdproof2(String idproof2) {
		this.idproof2 = idproof2;
	}

	public Date getCreatedat() {
		return createdat;
	}

	public void setCreatedat(Date createdat) {
		this.createdat = createdat;
	}

	public int getIspaymentdone() {
		return ispaymentdone;
	}

	public void setIspaymentdone(int ispaymentdone) {
		this.ispaymentdone = ispaymentdone;
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

	public String getEntity() {
		return entity;
	}

	public void setEntity(String entity) {
		this.entity = entity;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public String getInvoice_id() {
		return invoice_id;
	}

	public void setInvoice_id(String invoice_id) {
		this.invoice_id = invoice_id;
	}

	public int getInternational() {
		return international;
	}

	public void setInternational(int international) {
		this.international = international;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public float getAmount_refunded() {
		return amount_refunded;
	}

	public void setAmount_refunded(float amount_refunded) {
		this.amount_refunded = amount_refunded;
	}

	public int getRefund_status() {
		return refund_status;
	}

	public void setRefund_status(int refund_status) {
		this.refund_status = refund_status;
	}

	public int getCaptured() {
		return captured;
	}

	public void setCaptured(int captured) {
		this.captured = captured;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCard_id() {
		return card_id;
	}

	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getWallet() {
		return wallet;
	}

	public void setWallet(String wallet) {
		this.wallet = wallet;
	}

	public String getVpa() {
		return vpa;
	}

	public void setVpa(String vpa) {
		this.vpa = vpa;
	}

	public String getPayemail() {
		return payemail;
	}

	public void setPayemail(String payemail) {
		this.payemail = payemail;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public float getFee() {
		return fee;
	}

	public void setFee(float fee) {
		this.fee = fee;
	}

	public float getTax() {
		return tax;
	}

	public void setTax(float tax) {
		this.tax = tax;
	}

	public String getError_code() {
		return error_code;
	}

	public void setError_code(String error_code) {
		this.error_code = error_code;
	}

	public String getError_description() {
		return error_description;
	}

	public void setError_description(String error_description) {
		this.error_description = error_description;
	}

	public Date getPaycreated() {
		return paycreated;
	}

	public void setPaycreated(Date paycreated) {
		this.paycreated = paycreated;
	}
}
