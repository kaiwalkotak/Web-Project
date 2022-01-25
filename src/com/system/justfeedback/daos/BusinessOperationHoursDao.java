package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.BusinessOperationHours;

public interface BusinessOperationHoursDao extends GenericDao<BusinessOperationHours>{
	public void addOperatinBusinessHours(BusinessOperationHours p);
	public void addOperatinBusinessHoursList(List<BusinessOperationHours> p);
	public void updateOperatinBusinessHours(BusinessOperationHours p);
	public List<BusinessOperationHours> findOperatinBusinessHours(Object...values) throws Exception;
}
