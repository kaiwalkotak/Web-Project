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
 * @author
 */

@Entity
@Table(name = "all_resorts")
public class Resorts {
	public Resorts() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Resorts(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "resort_id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "zone_id")
	private Zone zone;

	@ManyToOne
	@JoinColumn(name = "country_id")
	private Country country;

	@ManyToOne
	@JoinColumn(name = "state_id")
	private States state;

	@ManyToOne
	@JoinColumn(name = "city_id")
	private city city;

	@Column(name = "resort_Name")
	private String resortName;

	@Column(name = "description")
	private String description;

	@Column(name = "location")
	private String location;

	@Column(name = "isActive")
	private int isActive;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Zone getZone() {
		return zone;
	}

	public void setZone(Zone zone) {
		this.zone = zone;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

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

	public String getResortName() {
		return resortName;
	}

	public void setResortName(String resortName) {
		this.resortName = resortName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

}