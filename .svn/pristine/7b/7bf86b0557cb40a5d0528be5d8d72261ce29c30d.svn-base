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
@Table(name="sub_department")
public class SubDepartmentMaster {
	public SubDepartmentMaster() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SubDepartmentMaster(Long sub_id) {
		super();
		this.sub_id=sub_id;
	}

	@Id
	@GeneratedValue
	@Column(name="sub_id")
	private Long sub_id;
	
	@Column(name="sub_name")
	private String sub_name;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;

	@ManyToOne
	@JoinColumn(name="dep_id")
    private DepartmentMaster dep;

	public Long getSub_id() {
		return sub_id;
	}

	public void setSub_id(Long sub_id) {
		this.sub_id = sub_id;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public DepartmentMaster getDep() {
		return dep;
	}

	public void setDep(DepartmentMaster dep) {
		this.dep = dep;
	}
	
	
}
