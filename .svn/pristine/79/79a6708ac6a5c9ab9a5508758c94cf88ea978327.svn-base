package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Category;
@Repository
@Transactional
public class CategoryDaoImpl extends JustFeedbackAbstractClass<Category> implements CategoryDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addCategory(Category p) {
		super.addEntity(p);
	}

	@Override
	public void updateCategory(Category p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<Category> findCategory(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public List<Category> getAllCategory() {
		// TODO Auto-generated method stub
		return super.getAllEntity();
	}
	
}
