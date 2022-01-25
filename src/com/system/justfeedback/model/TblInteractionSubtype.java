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
@Table(name="tbl_interactionsubtype")
public class TblInteractionSubtype {
	public TblInteractionSubtype() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblInteractionSubtype(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="subtype_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="intertype_id")
    private TblInteractionType interactiontype;
	
	@Column(name="subtypename")
	private String subtypename;
	
	@Column(name="tat")
	private int tat;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TblInteractionType getInteractiontype() {
		return interactiontype;
	}

	public void setInteractiontype(TblInteractionType interactiontype) {
		this.interactiontype = interactiontype;
	}

	public String getSubtypename() {
		return subtypename;
	}

	public void setSubtypename(String subtypename) {
		this.subtypename = subtypename;
	}

	public int getTat() {
		return tat;
	}

	public void setTat(int tat) {
		this.tat = tat;
	}
	
	
}
