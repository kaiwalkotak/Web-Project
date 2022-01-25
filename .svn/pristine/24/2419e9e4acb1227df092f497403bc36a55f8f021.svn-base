package com.system.justfeedback.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="tbl_m_products")
public class TblProducts {
	public TblProducts() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblProducts(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="tenure")
	private String tenure;
	
	@Column(name="planDays")
	private int planDays;
	
	@Column(name="description")
	private String description;
	
	@Column(name="whitePrice")
	private float whitePrice;
	
	@Column(name="purplePrice")
	private float purplePrice;
	
	@Column(name="whiteBasePrice")
	private float whiteBasePrice;
	
	@Column(name="purpleBasePrice")
	private float purpleBasePrice;
	
	@Column(name="isActive")
	private int isActive;
	
	@Column(name="isDisplay")
	private int isDisplay;
	
	@Column(name="isDelete")
	private int isDelete;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updatedAt")
	private Date updatedAt;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTenure() {
		return tenure;
	}

	public void setTenure(String tenure) {
		this.tenure = tenure;
	}

	public int getPlanDays() {
		return planDays;
	}

	public void setPlanDays(int planDays) {
		this.planDays = planDays;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getWhitePrice() {
		return whitePrice;
	}

	public void setWhitePrice(float whitePrice) {
		this.whitePrice = whitePrice;
	}

	public float getPurplePrice() {
		return purplePrice;
	}

	public void setPurplePrice(float purplePrice) {
		this.purplePrice = purplePrice;
	}

	public float getWhiteBasePrice() {
		return whiteBasePrice;
	}

	public void setWhiteBasePrice(float whiteBasePrice) {
		this.whiteBasePrice = whiteBasePrice;
	}

	public float getPurpleBasePrice() {
		return purpleBasePrice;
	}

	public void setPurpleBasePrice(float purpleBasePrice) {
		this.purpleBasePrice = purpleBasePrice;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public int getIsDisplay() {
		return isDisplay;
	}

	public void setIsDisplay(int isDisplay) {
		this.isDisplay = isDisplay;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
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

	
	
	
	
}
