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

@Entity
@Table(name = "upgrade_membership")
public class upgradeMembership {

	public upgradeMembership() {
		super();
		// TODO Auto-generated constructor stub
	}

	public upgradeMembership(Long id) {
		super();
		this.id = id;
	}
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private long id ;

	@ManyToOne
	@JoinColumn(name = "memberid")
	private TblMember member;
	
	@Column(name = "comment")
	private String comment;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;


	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public TblMember getMember() {
		return member;
	}

	public void setMember(TblMember member) {
		this.member = member;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	
	
}
