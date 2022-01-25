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
@Table(name="subcategory")
public class Subcategory {
	public Subcategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Subcategory(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="sub_id")
	private Long id;
	
	@Column(name="sub_name")
	private String sub_name;
	
	@ManyToOne
	@JoinColumn(name="cat_id")
    private Category category;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
}
