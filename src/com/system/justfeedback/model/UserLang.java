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
@Table(name="userlang")
public class UserLang {
	public UserLang() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserLang(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="lang_id")
	private Long id;
	
	@Column(name="langname")
	private String langname;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLangname() {
		return langname;
	}

	public void setLangname(String langname) {
		this.langname = langname;
	}
	
	
}
