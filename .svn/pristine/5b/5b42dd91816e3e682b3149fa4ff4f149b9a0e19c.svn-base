package com.system.justfeedback.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="businesscategory")
public class BusinessCategory {
	public BusinessCategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BusinessCategory(Long id) {
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
	@JoinColumn(name="cat_id")
    private Category category;
	
	@ManyToOne
	@JoinColumn(name="sub_id")
    private Subcategory subcategory;

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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Subcategory getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(Subcategory subcategory) {
		this.subcategory = subcategory;
	}
	
	
}
