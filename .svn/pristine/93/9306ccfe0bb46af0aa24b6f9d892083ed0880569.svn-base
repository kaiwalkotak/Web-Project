package com.system.justfeedback.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="smslogs")
public class SMSLogs {
	public SMSLogs() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SMSLogs(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="smslogid")
	private Long id;
	
	@Column(name="templateid")
	private String templateid;
	
	@Column(name="templatetext")
	private String templatetext;
	
	@Column(name="responsecode")
	private String responsecode;
	
	@Column(name="responsetext")
	private String responsetext;
	
	@Column(name="senddata")
	private String senddata;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createddate")
	private Date createddate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTemplateid() {
		return templateid;
	}

	public void setTemplateid(String templateid) {
		this.templateid = templateid;
	}

	public String getTemplatetext() {
		return templatetext;
	}

	public void setTemplatetext(String templatetext) {
		this.templatetext = templatetext;
	}

	public String getResponsecode() {
		return responsecode;
	}

	public void setResponsecode(String responsecode) {
		this.responsecode = responsecode;
	}

	public String getResponsetext() {
		return responsetext;
	}

	public void setResponsetext(String responsetext) {
		this.responsetext = responsetext;
	}

	public String getSenddata() {
		return senddata;
	}

	public void setSenddata(String senddata) {
		this.senddata = senddata;
	}

	public Date getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}
	
	
}
