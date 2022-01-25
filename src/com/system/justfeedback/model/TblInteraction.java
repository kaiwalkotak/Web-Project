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
@Table(name="tbl_interaction")
public class TblInteraction {
	public TblInteraction() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblInteraction(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="interaction_id")
	private Long id;
	
	@Column(name="interactionname")
	private String interactionname;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getInteractionname() {
		return interactionname;
	}

	public void setInteractionname(String interactionname) {
		this.interactionname = interactionname;
	}
	
	

}
