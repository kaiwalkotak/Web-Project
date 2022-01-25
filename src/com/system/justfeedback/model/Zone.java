package com.system.justfeedback.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "zone")
public class Zone {

	public Zone() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Zone(int id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "zone_id")
	private int id;

	@Column(name = "zone_name")
	private String zoneName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getZoneName() {
		return zoneName;
	}

	public void setZoneName(String zoneName) {
		this.zoneName = zoneName;
	}

}