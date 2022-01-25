package com.system.justfeedback.model;

import java.io.Serializable;

public class BusinessCategoryDTO implements Serializable{
	Long businessid;
	Long cat_id;
	Long sub_id;
	public Long getBusinessid() {
		return businessid;
	}
	public void setBusinessid(Long businessid) {
		this.businessid = businessid;
	}
	public Long getCat_id() {
		return cat_id;
	}
	public void setCat_id(Long cat_id) {
		this.cat_id = cat_id;
	}
	public Long getSub_id() {
		return sub_id;
	}
	public void setSub_id(Long sub_id) {
		this.sub_id = sub_id;
	}
	
	
	
}
