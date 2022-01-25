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
@Table(name="gallery")
public class Businessgallery {
	public Businessgallery() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Businessgallery(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="gal_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="bussiness_id")
    private Businesses business;
	
	@Column(name="image_placeholder")
	private String image_placeholder;
	
	@Column(name="fname")
	private String fname;
	
	@Column(name="imagepath")
	private String imagepath;
	
	@Column(name="isvideo")
	private int isvideo;
	
	@Column(name="ismenu")
	private int ismenu;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="created_at")
	private Date created_at;
	

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

	public String getImage_placeholder() {
		return image_placeholder;
	}

	public void setImage_placeholder(String image_placeholder) {
		this.image_placeholder = image_placeholder;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	public int getIsvideo() {
		return isvideo;
	}

	public void setIsvideo(int isvideo) {
		this.isvideo = isvideo;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public int getIsmenu() {
		return ismenu;
	}

	public void setIsmenu(int ismenu) {
		this.ismenu = ismenu;
	}

}
