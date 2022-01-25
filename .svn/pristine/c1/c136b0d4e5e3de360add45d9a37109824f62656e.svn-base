package com.system.justfeedback.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="rolemaster")
public class RoleMaster implements Serializable
{
	
	private static final long serialVersionUID = 1L;

	public RoleMaster() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public RoleMaster(String rname) {
		super();
		this.rname = rname;
	}

	@Id
	@GeneratedValue
	@Column(name="Role_id")
	private Long id;
	
	@Column(name="Role_name",length=50, unique=true, nullable=false)
	private String rname = UserProfileType.USER.getUserProfileType();

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((rname == null) ? 0 : rname.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof RoleMaster))
			return false;
		RoleMaster other = (RoleMaster) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (rname == null) {
			if (other.rname != null)
				return false;
		} else if (!rname.equals(other.rname))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "UserProfile [id=" + id + ", type=" + rname + "]";
	}
}
