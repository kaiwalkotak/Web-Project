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
@Table(name = "ticket_raise")
public class TicketRaise {
	public TicketRaise() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TicketRaise(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "memberId")
	private TblMember member;

	@Column(name = "start_date")
	private Date startDate;

	@Column(name = "end_date")
	private Date endDate;

	@Column(name = "note")
	private String note;

	@Column(name = "resort")
	private String resort;
	
	@Column(name = "resolved")
	private int resolved;	

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TblMember getMember() {
		return member;
	}

	public void setMember(TblMember member) {
		this.member = member;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getResort() {
		return resort;
	}

	public void setResort(String resort) {
		this.resort = resort;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

}