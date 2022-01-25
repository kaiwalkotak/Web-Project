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
 * @author Keval.soni
 */

@Entity
@Table(name = "tbl_ticketdetails")
public class TblTicketDetails {
	public TblTicketDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblTicketDetails(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "ticketdet_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="ticket_id")
    private TblTicket ticket;
	
	@Column(name = "comment")
	private String comment;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createddatetime")
	private Date createddatetime;
	
	@Column(name = "isreplyfromuser")
	private int isreplyfromuser;
	
	@Column(name = "username")
	private String username;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TblTicket getTicket() {
		return ticket;
	}

	public void setTicket(TblTicket ticket) {
		this.ticket = ticket;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getCreateddatetime() {
		return createddatetime;
	}

	public void setCreateddatetime(Date createddatetime) {
		this.createddatetime = createddatetime;
	}

	public int getIsreplyfromuser() {
		return isreplyfromuser;
	}

	public void setIsreplyfromuser(int isreplyfromuser) {
		this.isreplyfromuser = isreplyfromuser;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
