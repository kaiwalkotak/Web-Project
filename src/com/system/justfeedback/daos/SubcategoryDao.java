package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.Subcategory;

public interface SubcategoryDao extends GenericDao<Subcategory>{
	public void addSubcategory(Subcategory p);
	public void updateSubcategory(Subcategory p);
	public List<Subcategory> findSubcategory(Object...values) throws Exception;
	public List<Subcategory> getAllSubcategory();
}
