package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.BusinessOperationHours;
@Repository
@Transactional
public class BusinessOperationHoursDaoImpl extends JustFeedbackAbstractClass<BusinessOperationHours> implements BusinessOperationHoursDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addOperatinBusinessHours(BusinessOperationHours p) {
		super.addEntity(p);
	}

	@Override
	public void updateOperatinBusinessHours(BusinessOperationHours p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<BusinessOperationHours> findOperatinBusinessHours(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public void addOperatinBusinessHoursList(List<BusinessOperationHours> p) {
		super.updateAll(p);
	}
	
}
