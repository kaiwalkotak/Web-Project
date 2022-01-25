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
@Table(name="states")
public class States {
	
	public States() {
		super();
		// TODO Auto-generated constructor stub
	}

	public States(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name="state_id")
	private Long id;
	
	@Column(name="state_name")
	private String statename;
	
	@ManyToOne
	@JoinColumn(name="country_id")
    private Country country;

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}
	
	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="state_id")
    private Set<city> city;
	public Set<city> getCity() {
		return city;
	}

	public void setCity(Set<city> city) {
		this.city = city;
	}
	
	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="state_id")
    private Set<ClientUser> clientuser;
	public Set<ClientUser> getClientuser() {
		return clientuser;
	}

	public void setClientuser(Set<ClientUser> clientuser) {
		this.clientuser = clientuser;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStatename() {
		return statename;
	}

	public void setStatename(String statename) {
		this.statename = statename;
	}
	
	
}
