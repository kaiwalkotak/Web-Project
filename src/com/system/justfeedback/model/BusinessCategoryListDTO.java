package com.system.justfeedback.model;

import java.io.Serializable;
import java.util.List;

public class BusinessCategoryListDTO implements Serializable{
	private List<BusinessCategoryDTO> businesscategory;

	public List<BusinessCategoryDTO> getBusinesscategory() {
		return businesscategory;
	}

	public void setBusinesscategory(List<BusinessCategoryDTO> businesscategory) {
		this.businesscategory = businesscategory;
	}
	
}
