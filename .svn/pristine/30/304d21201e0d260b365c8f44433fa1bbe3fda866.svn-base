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
@Table(name="category")
public class Category {
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="cat_id")
	private Long id;
	
	@Column(name="cat_name")
	private String cat_name;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}
}
