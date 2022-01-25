package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import com.system.justfeedback.model.Career;


@Repository
@Transactional
public class CareerdaoImpl  extends JustFeedbackAbstractClass<Career> implements CareerDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addCareer(Career c) {
		super.addEntity(c);

	}
}
