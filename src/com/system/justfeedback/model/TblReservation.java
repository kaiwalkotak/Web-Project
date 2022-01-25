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
@Table(name="tbl_t_reservation")
public class TblReservation {
	public TblReservation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblReservation(Long id) {
		super();
		this.id=id;
	}
	
	
	@Id
	@GeneratedValue
	@Column(name="reserv_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Column(name="membercode")
	private String membercode;
	
	@Column(name="upHolidayBooked")
	private String upHolidayBooked;
	
	@Column(name="duration")
	private int duration;
	
	@Column(name="travelingPerson")
	private int travelingPerson;
	
	@Column(name="appBooked")
	private int appBooked;
	
	@Temporal(TemporalType.DATE)
	@Column(name="checkIn")
	private Date checkIn;
	
	@Temporal(TemporalType.DATE)
	@Column(name="checkOut")
	private Date checkOut;
	
	@Column(name="pastHoliday")
	private String pastHoliday;
	
	@Temporal(TemporalType.DATE)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Temporal(TemporalType.DATE)
	@Column(name="updatedAt")
	private Date updatedAt;
	
	@Column(name="isActive")
	private int isActive;
	
	@Column(name="resType")
	private String resType;
	
	@Column(name="actualPrice")
	private float actualPrice;

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

	public String getMembercode() {
		return membercode;
	}

	public void setMembercode(String membercode) {
		this.membercode = membercode;
	}

	public String getUpHolidayBooked() {
		return upHolidayBooked;
	}

	public void setUpHolidayBooked(String upHolidayBooked) {
		this.upHolidayBooked = upHolidayBooked;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getTravelingPerson() {
		return travelingPerson;
	}

	public void setTravelingPerson(int travelingPerson) {
		this.travelingPerson = travelingPerson;
	}

	public int getAppBooked() {
		return appBooked;
	}

	public void setAppBooked(int appBooked) {
		this.appBooked = appBooked;
	}

	public Date getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	public Date getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

	public String getPastHoliday() {
		return pastHoliday;
	}

	public void setPastHoliday(String pastHoliday) {
		this.pastHoliday = pastHoliday;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public String getResType() {
		return resType;
	}

	public void setResType(String resType) {
		this.resType = resType;
	}

	public float getActualPrice() {
		return actualPrice;
	}

	public void setActualPrice(float actualPrice) {
		this.actualPrice = actualPrice;
	}
}
