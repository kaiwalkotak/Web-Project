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
@Table(name="customer")
public class Customermaster {

	public Customermaster() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customermaster(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name="cust_id")
	private Long id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="address")
	private String address;
	
	@Column(name="emailid")
	private String emailid;
	
	@Column(name="watsappno")
	private String watsappno;
	
	@Temporal(TemporalType.DATE)
	@Column(name="birthdate")
	private Date birthdate;
	
	@ManyToOne
	@JoinColumn(name="Clientuser_id")
    private ClientUser user;
	public ClientUser getUser() {
		return user;
	}

	public void setUser(ClientUser user) {
		this.user = user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getWatsappno() {
		return watsappno;
	}

	public void setWatsappno(String watsappno) {
		this.watsappno = watsappno;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
