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
@Table(name="businessservice")
public class BusinessServices {
	public BusinessServices() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BusinessServices(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="businessserv_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="bussiness_id")
    private Businesses business;
	
	@ManyToOne
	@JoinColumn(name="covidservice_id")
    private Covidservice services;
	
	@Column(name="istrue")
	private int istrue;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="created_at")
	private Date created_at;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Businesses getBusiness() {
		return business;
	}

	public void setBusiness(Businesses business) {
		this.business = business;
	}

	public Covidservice getServices() {
		return services;
	}

	public void setServices(Covidservice services) {
		this.services = services;
	}

	public int getIstrue() {
		return istrue;
	}

	public void setIstrue(int istrue) {
		this.istrue = istrue;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
	
}
