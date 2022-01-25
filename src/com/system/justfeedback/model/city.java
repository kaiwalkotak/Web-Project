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
import javax.persistence.Transient;

@Entity
@Table(name="cities")
public class city {
	
	public city() {
		super();
		// TODO Auto-generated constructor stub
	}

	public city(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name="city_id")
	private Long id;
	
	@Column(name="city_name")
	private String cityname;
	
	@ManyToOne
	@JoinColumn(name="state_id")
    private States state;
	
	@Transient
	private long state_id;
	
	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="city_id")
    private Set<ClientUser> clientuser;
	public Set<ClientUser> getClientuser() {
		return clientuser;
	}

	public void setClientuser(Set<ClientUser> clientuser) {
		this.clientuser = clientuser;
	}

	public States getState() {
		return state;
	}

	public void setState(States state) {
		this.state = state;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public long getState_id() {
		return state_id;
	}

	public void setState_id(long state_id) {
		this.state_id = state_id;
	}
	
}
