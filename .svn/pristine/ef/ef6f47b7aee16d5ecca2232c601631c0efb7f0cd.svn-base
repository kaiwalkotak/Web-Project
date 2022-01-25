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
@Table(name = "raise_trip")
public class RaiseTrip {
	public RaiseTrip() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RaiseTrip(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "raise_trip_id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "city_id")
	private city city;

	@ManyToOne
	@JoinColumn(name = "member_id")
	private TblMember member;

	@Column(name = "start_date")
	private Date startDate;

	@Column(name = "end_date")
	private Date endDate;

	@Column(name = "total_days")
	private String totalDays;

	@Column(name = "adults")
	private String adults;

	@Column(name = "child")
	private String child;

	@Column(name = "child1")
	private int child1;

	@Column(name = "child2")
	private int child2;

	@Column(name = "child3")
	private int child3;

	@Column(name = "child4")
	private int child4;

	@Column(name = "child5")
	private int child5;

	@Column(name = "child6")
	private int child6;

	@Column(name = "child7")
	private int child7;

	@Column(name = "child8")
	private int child8;

	@Column(name = "child9")
	private int child9;

	@Column(name = "child10")
	private int child10;

	@Column(name = "remarks")
	private String remarks;

	@Column(name = "isActive")
	private int isActive;

	@Column(name = "pending")
	private int pending;

	@Column(name = "approve")
	private int approve;

	@Column(name = "disapprove")
	private int disapprove;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public city getCity() {
		return city;
	}

	public void setCity(city city) {
		this.city = city;
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

	public String getTotalDays() {
		return totalDays;
	}

	public void setTotalDays(String totalDays) {
		this.totalDays = totalDays;
	}

	public String getAdults() {
		return adults;
	}

	public void setAdults(String adults) {
		this.adults = adults;
	}

	public String getChild() {
		return child;
	}

	public void setChild(String child) {
		this.child = child;
	}

	public int getChild1() {
		return child1;
	}

	public void setChild1(int child1) {
		this.child1 = child1;
	}

	public int getChild2() {
		return child2;
	}

	public void setChild2(int child2) {
		this.child2 = child2;
	}

	public int getChild3() {
		return child3;
	}

	public void setChild3(int child3) {
		this.child3 = child3;
	}

	public int getChild4() {
		return child4;
	}

	public void setChild4(int child4) {
		this.child4 = child4;
	}

	public int getChild5() {
		return child5;
	}

	public void setChild5(int child5) {
		this.child5 = child5;
	}

	public int getChild6() {
		return child6;
	}

	public void setChild6(int child6) {
		this.child6 = child6;
	}

	public int getChild7() {
		return child7;
	}

	public void setChild7(int child7) {
		this.child7 = child7;
	}

	public int getChild8() {
		return child8;
	}

	public void setChild8(int child8) {
		this.child8 = child8;
	}

	public int getChild9() {
		return child9;
	}

	public void setChild9(int child9) {
		this.child9 = child9;
	}

	public int getChild10() {
		return child10;
	}

	public void setChild10(int child10) {
		this.child10 = child10;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public int getPending() {
		return pending;
	}

	public void setPending(int pending) {
		this.pending = pending;
	}

	public int getApprove() {
		return approve;
	}

	public void setApprove(int approve) {
		this.approve = approve;
	}

	public int getDisapprove() {
		return disapprove;
	}

	public void setDisapprove(int disapprove) {
		this.disapprove = disapprove;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

}