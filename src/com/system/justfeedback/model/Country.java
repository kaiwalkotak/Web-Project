package com.system.justfeedback.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="country")
public class Country {
	
	public Country() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Country(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name="country_id")
	private Long id;
	
	@Column(name="sortname")
	private String sortname;
	
	@Column(name="country_name")
	private String name;
	
	@Column(name="phonecode")
	private String phonecode;
	
	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="country_id")
    private Set<States> states;

	public Set<States> getStates() {
		return states;
	}

	public void setStates(Set<States> states) {
		this.states = states;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSortname() {
		return sortname;
	}

	public void setSortname(String sortname) {
		this.sortname = sortname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhonecode() {
		return phonecode;
	}

	public void setPhonecode(String phonecode) {
		this.phonecode = phonecode;
	}
	
	
}
