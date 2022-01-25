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
@Table(name = "tbl_ticket")
public class TblTicket {
	public TblTicket() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblTicket(Long id) {
		super();
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "ticket_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Column(name = "memberCode")
	private long memberCode;
	
	@ManyToOne
	@JoinColumn(name="subtype_id")
    private TblInteractionSubtype interactionsubtype;
	
	@Column(name = "subtypename")
	private String subtypename;

	@Column(name = "typename")
	private String typename;

	@Column(name = "interactiontype")
	private String interactiontype;
	
	@Column(name = "tat")
	private int tat;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="careateddatetime")
	private Date careateddatetime;
	
	@Temporal(TemporalType.DATE)
	@Column(name="approxresolveddate")
	private Date approxresolveddate;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="actualresolveddate")
	private Date actualresolveddate;
	
	@Column(name = "status")
	private int status;

	@Column(name = "usercomment")
	private String usercomment;

	@Column(name = "membercomment")
	private String membercomment;
	
	@Column(name = "admincomment")
	private String admincomment;
	
	@Column(name = "isadminentry")
	private int isadminentry;

	@Column(name = "employeeId")
	private long employeeId;

	@Column(name = "employeename")
	private String employeename;
	
	@Column(name = "ticketno")
	private String ticketno;
	
	@Column(name = "ticketfrom")
	private String ticketfrom;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TblMember getMember() {
		return member;
	}

	public void setMember(TblMember member) {
		this.member = member;
	}

	public long getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(long memberCode) {
		this.memberCode = memberCode;
	}

	public TblInteractionSubtype getInteractionsubtype() {
		return interactionsubtype;
	}

	public void setInteractionsubtype(TblInteractionSubtype interactionsubtype) {
		this.interactionsubtype = interactionsubtype;
	}

	public String getSubtypename() {
		return subtypename;
	}

	public void setSubtypename(String subtypename) {
		this.subtypename = subtypename;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public String getInteractiontype() {
		return interactiontype;
	}

	public void setInteractiontype(String interactiontype) {
		this.interactiontype = interactiontype;
	}

	public int getTat() {
		return tat;
	}

	public void setTat(int tat) {
		this.tat = tat;
	}

	public Date getCareateddatetime() {
		return careateddatetime;
	}

	public void setCareateddatetime(Date careateddatetime) {
		this.careateddatetime = careateddatetime;
	}

	public Date getApproxresolveddate() {
		return approxresolveddate;
	}

	public void setApproxresolveddate(Date approxresolveddate) {
		this.approxresolveddate = approxresolveddate;
	}

	public Date getActualresolveddate() {
		return actualresolveddate;
	}

	public void setActualresolveddate(Date actualresolveddate) {
		this.actualresolveddate = actualresolveddate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getUsercomment() {
		return usercomment;
	}

	public void setUsercomment(String usercomment) {
		this.usercomment = usercomment;
	}

	public String getMembercomment() {
		return membercomment;
	}

	public void setMembercomment(String membercomment) {
		this.membercomment = membercomment;
	}

	public String getAdmincomment() {
		return admincomment;
	}

	public void setAdmincomment(String admincomment) {
		this.admincomment = admincomment;
	}

	public int getIsadminentry() {
		return isadminentry;
	}

	public void setIsadminentry(int isadminentry) {
		this.isadminentry = isadminentry;
	}

	public long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeename() {
		return employeename;
	}

	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}

	public String getTicketno() {
		return ticketno;
	}

	public void setTicketno(String ticketno) {
		this.ticketno = ticketno;
	}

	public String getTicketfrom() {
		return ticketfrom;
	}

	public void setTicketfrom(String ticketfrom) {
		this.ticketfrom = ticketfrom;
	}
	
	
	
}
