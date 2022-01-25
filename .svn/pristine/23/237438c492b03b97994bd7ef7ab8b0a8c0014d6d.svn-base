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
@Table(name="sale_branch")
public class SaleBranch {
	public SaleBranch() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SaleBranch(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="branch_name")
	private String branch_name;
	
	@Column(name="address")
	private String address;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBranch_name() {
		return branch_name;
	}

	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	
	
	
	
}
