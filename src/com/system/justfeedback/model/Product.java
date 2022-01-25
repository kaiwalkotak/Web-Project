package com.system.justfeedback.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="productmaster")
public class Product {
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name="product_id")
	private Long id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="price")
	private Float price;
	
	@Column(name="isActive")
	private float isActive;
	
	@Column(name="image")
	private String image;
	
	@ManyToOne
	@JoinColumn(name="Clientuser_id")
    private ClientUser user;
	public ClientUser getUser() {
		return user;
	}

	public void setUser(ClientUser user) {
		this.user = user;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public float getIsActive() {
		return isActive;
	}

	public void setIsActive(float isActive) {
		this.isActive = isActive;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}	
}
