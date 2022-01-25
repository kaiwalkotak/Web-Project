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
@Table(name = "resort_images")
public class ResortImages {
	public ResortImages() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ResortImages(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "resort_images_id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "resort_id")
	private Resorts resorts;

	@Column(name = "image_path")
	private String imagePath;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;

	public Long getResort_images_id() {
		return id;
	}

	public void setResort_images_id(Long resort_images_id) {
		this.id = resort_images_id;
	}

	public Resorts getResorts() {
		return resorts;
	}

	public void setResorts(Resorts resorts) {
		this.resorts = resorts;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

}