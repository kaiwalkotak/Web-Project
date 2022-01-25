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
@Table(name="bussiness")
public class Businesses {
	public Businesses() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Businesses(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="bussiness_id")
	private Long id;
	
	@Column(name="bussiness_name")
	private String bussiness_name;
	
	@Column(name="address")
	private String address;
	
	@ManyToOne
	@JoinColumn(name="state_id")
    private States state;
	
	@ManyToOne
	@JoinColumn(name="city_id")
    private city city;
	
	@Column(name="zip_code")
	private String zip_code;
	
	@Column(name="phone_no")
	private String phone_no;
	
	@Column(name="website")
	private String website;
	
	@Column(name="email_id")
	private String email_id;
	
	@Column(name="password")
	private String password;
	
	@Column(name="latitude")
	private String latitude;
	
	@Column(name="longitude")
	private String longitude;
	
	@Column(name="additionalcontext")
	private String additionalcontext;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="created_at")
	private Date created_at;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updated_at")
	private Date updated_at;
	
	public States getState() {
		return state;
	}

	public void setState(States state) {
		this.state = state;
	}
	
	public city getCity() {
		return city;
	}

	public void setCity(city city) {
		this.city = city;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBussiness_name() {
		return bussiness_name;
	}

	public void setBussiness_name(String bussiness_name) {
		this.bussiness_name = bussiness_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getAdditionalcontext() {
		return additionalcontext;
	}

	public void setAdditionalcontext(String additionalcontext) {
		this.additionalcontext = additionalcontext;
	}
	
	
}
