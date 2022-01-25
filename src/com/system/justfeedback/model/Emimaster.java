package com.system.justfeedback.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "emi_master")
public class Emimaster {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private long id;

	@Column(name = "emi_name")
	private int emi_name;

	@Column(name = "emi_per")
	private float emi_per;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;

	public Emimaster() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Emimaster(Long id) {
		super();
		this.id = id;
	}


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getEmi_name() {
		return emi_name;
	}

	public void setEmi_name(int emi_name) {
		this.emi_name = emi_name;
	}

	public float getEmi_per() {
		return emi_per;
	}

	public void setEmi_per(float emi_per) {
		this.emi_per = emi_per;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	
}