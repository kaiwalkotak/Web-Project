package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Category;
import com.system.justfeedback.model.Subcategory;
@Repository
@Transactional
public class SubcategoryDaoImpl extends JustFeedbackAbstractClass<Subcategory> implements SubcategoryDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addSubcategory(Subcategory p) {
		super.addEntity(p);
	}

	@Override
	public void updateSubcategory(Subcategory p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<Subcategory> findSubcategory(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public List<Subcategory> getAllSubcategory() {
		// TODO Auto-generated method stub
		return super.getAllEntity();
	}
	
}
