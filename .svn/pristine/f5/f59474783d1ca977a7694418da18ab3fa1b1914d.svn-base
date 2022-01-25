package com.system.justfeedback.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="tbl_interactiontype")
public class TblInteractionType {
	public TblInteractionType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblInteractionType(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="intertype_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="interaction_id")
    private TblInteraction interaction;
	
	@Column(name="typename")
	private String typename;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TblInteraction getInteraction() {
		return interaction;
	}

	public void setInteraction(TblInteraction interaction) {
		this.interaction = interaction;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	
	
	
}
