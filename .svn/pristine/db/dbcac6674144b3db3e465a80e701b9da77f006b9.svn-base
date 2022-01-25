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
@Table(name="operating_hrs")
public class BusinessOperationHours {
	public BusinessOperationHours() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BusinessOperationHours(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="businesscat_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="bussiness_id")
    private Businesses business;
	
	@ManyToOne
	@JoinColumn(name="week_id")
    private Weekdaymaster weekday;
	
	@Column(name="from_hr")
	private String from_hr;
	
	@Column(name="to_hr")
	private String to_hr;
	
	@Column(name="is_close")
	private int is_close;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="created_at")
	private Date created_at;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updated_at")
	private Date updated_at;

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

	public Weekdaymaster getWeekday() {
		return weekday;
	}

	public void setWeekday(Weekdaymaster weekday) {
		this.weekday = weekday;
	}

	public String getFrom_hr() {
		return from_hr;
	}

	public void setFrom_hr(String from_hr) {
		this.from_hr = from_hr;
	}

	public String getTo_hr() {
		return to_hr;
	}

	public void setTo_hr(String to_hr) {
		this.to_hr = to_hr;
	}

	public int getIs_close() {
		return is_close;
	}

	public void setIs_close(int is_close) {
		this.is_close = is_close;
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
	
	
	
}
