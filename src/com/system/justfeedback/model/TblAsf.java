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
@Table(name="tbl_m_asf")
public class TblAsf {
	public TblAsf() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblAsf(Long id) {
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
	@Column(name="aSFDate")
	private Date aSFDate;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Column(name="amountrec")
	private float amountrec;
	
	@Temporal(TemporalType.DATE)
	@Column(name="asFDaterec")
	private Date asFDaterec;
	
	@Column(name="status")
	private String status;
	
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

	public Date getaSFDate() {
		return aSFDate;
	}

	public void setaSFDate(Date aSFDate) {
		this.aSFDate = aSFDate;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public float getAmountrec() {
		return amountrec;
	}

	public void setAmountrec(float amountrec) {
		this.amountrec = amountrec;
	}

	public Date getAsFDaterec() {
		return asFDaterec;
	}

	public void setAsFDaterec(Date asFDaterec) {
		this.asFDaterec = asFDaterec;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
	
	
}
