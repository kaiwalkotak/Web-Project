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
@Table(name = "career")
public class Career {


	public Career() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Career(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "id")
	private long id;
	@Column(name = "name")
	private String name ;
	
	@Column(name = "email")
	private String email; 
	
	@Column(name = "phoneno")
	private String phoneno; ;
	

	@Column(name = "exp_lvl")
	private String exp_lvl ;
	
	@Column(name = "intrest")
	private String intrest ;
	
	@Column(name = "state")
	private String state ;
	
	@Column(name = "resume")
	private String resume ;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getExp_lvl() {
		return exp_lvl;
	}

	public void setExp_lvl(String exp_lvl) {
		this.exp_lvl = exp_lvl;
	}

	public String getIntrest() {
		return intrest;
	}

	public void setIntrest(String intrest) {
		this.intrest = intrest;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	
	
}
