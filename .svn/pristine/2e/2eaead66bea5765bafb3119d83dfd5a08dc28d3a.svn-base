package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.BusinessCategory;
@Repository
@Transactional
public class BusinessCategoryDaoImpl extends JustFeedbackAbstractClass<BusinessCategory> implements BusinessCategoryDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addBusinessCategory(BusinessCategory p) {
		super.addEntity(p);
	}

	@Override
	public void updateBusinessCategory(BusinessCategory p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<BusinessCategory> findBusinessCategory(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public void addBusinessCategoryList(List<BusinessCategory> p) {
		super.updateAll(p);
	}
	
}
