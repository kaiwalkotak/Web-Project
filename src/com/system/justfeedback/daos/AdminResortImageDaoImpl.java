package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.ResortImages;

@Repository
@Transactional
public class AdminResortImageDaoImpl extends JustFeedbackAbstractClass<ResortImages> implements AdminResortImageDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addResortImage(ResortImages p) {
		super.addEntity(p);
		
	}

	

}
