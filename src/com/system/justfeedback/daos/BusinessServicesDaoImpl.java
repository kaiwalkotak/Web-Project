package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.BusinessServices;
@Repository
@Transactional
public class BusinessServicesDaoImpl extends JustFeedbackAbstractClass<BusinessServices> implements BusinessServicesDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addBusinessServices(BusinessServices p) {
		super.addEntity(p);
	}

	@Override
	public void updateBusinessServices(BusinessServices p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<BusinessServices> findBusinessServices(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public void addBusinessServicesList(List<BusinessServices> p) {
		super.updateAll(p);
	}
	
}
