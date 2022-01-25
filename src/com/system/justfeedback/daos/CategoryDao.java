package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.Category;

public interface CategoryDao extends GenericDao<Category>{
	public void addCategory(Category p);
	public void updateCategory(Category p);
	public List<Category> findCategory(Object...values) throws Exception;
	public List<Category> getAllCategory();
}
