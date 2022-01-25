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
@Table(name = "videoSlideImage")
public class VideoSlideImages {
	public VideoSlideImages() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VideoSlideImages(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "videoSlide_id")
	private VideoSlide videoSlide;

	@Column(name = "image_path")
	private String imagePath;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdAt")
	private Date createdAt;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public VideoSlide getVideoSlide() {
		return videoSlide;
	}

	public void setVideoSlide(VideoSlide videoSlide) {
		this.videoSlide = videoSlide;
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