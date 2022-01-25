package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.Businesses;

public interface BusinessesDao extends GenericDao<Businesses>{
	public void addBusinesses(Businesses p);
	public void updateBusinesses(Businesses p);
	public List<Businesses> findBusinesses(Object...values) throws Exception;
}
