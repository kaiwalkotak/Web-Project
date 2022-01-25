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
@Table(name="department")
public class DepartmentMaster {
	public DepartmentMaster() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DepartmentMaster(Long dep_id) {
		super();
		this.dep_id=dep_id;
	}

	@Id
	@GeneratedValue
	@Column(name="dep_id")
	private Long dep_id;
	
	@Column(name="dep_name")
	private String dep_name;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;

	public Long getDep_id() {
		return dep_id;
	}

	public void setDep_id(Long dep_id) {
		this.dep_id = dep_id;
	}

	public String getDep_name() {
		return dep_name;
	}

	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	
}
