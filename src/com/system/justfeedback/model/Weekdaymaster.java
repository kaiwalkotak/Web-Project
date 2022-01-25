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
@Table(name="weekday_master")
public class Weekdaymaster {
	public Weekdaymaster() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Weekdaymaster(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="week_id")
	private Long id;
	
	@Column(name="week_name")
	private String week_name;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getWeek_name() {
		return week_name;
	}

	public void setWeek_name(String week_name) {
		this.week_name = week_name;
	}
	
	
}
