package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Businesses;
@Repository
@Transactional
public class BusinessesDaoImpl extends JustFeedbackAbstractClass<Businesses> implements BusinessesDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addBusinesses(Businesses p) {
		super.addEntity(p);
	}

	@Override
	public void updateBusinesses(Businesses p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<Businesses> findBusinesses(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
