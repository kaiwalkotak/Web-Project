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
@Table(name="tbl_m_callfile")
public class TblCallfile {
	public TblCallfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblCallfile(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="callfile_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="memberId")
    private TblMember member;
	
	@Column(name="fileName")
	private String fileName;
	
	@Column(name="filinamepath")
	private String filinamepath;
	
	@Column(name="filenameext")
	private String filenameext;
	
	@Column(name="isActive")
	private int isActive;
	
	@Temporal(TemporalType.DATE)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Column(name="createdBy")
	private String createdBy;
	
	@Column(name="memberIdNo")
	private Long memberIdNo;
	
	@Column(name="internalId")
	private String internalId;

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

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilinamepath() {
		return filinamepath;
	}

	public void setFilinamepath(String filinamepath) {
		this.filinamepath = filinamepath;
	}

	public String getFilenameext() {
		return filenameext;
	}

	public void setFilenameext(String filenameext) {
		this.filenameext = filenameext;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Long getMemberIdNo() {
		return memberIdNo;
	}

	public void setMemberIdNo(Long memberIdNo) {
		this.memberIdNo = memberIdNo;
	}

	public String getInternalId() {
		return internalId;
	}

	public void setInternalId(String internalId) {
		this.internalId = internalId;
	}
	
	
}
