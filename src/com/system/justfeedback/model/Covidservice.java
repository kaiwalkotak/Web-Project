package com.system.justfeedback.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="covidservice")
public class Covidservice {
	public Covidservice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Covidservice(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="covidservice_id")
	private Long id;
	
	@Column(name="servicename")
	private String servicename;
	
	@Column(name="cat_id")
	private Long cat_id;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getServicename() {
		return servicename;
	}

	public void setServicename(String servicename) {
		this.servicename = servicename;
	}

	public Long getCat_id() {
		return cat_id;
	}

	public void setCat_id(Long cat_id) {
		this.cat_id = cat_id;
	}
	
}
