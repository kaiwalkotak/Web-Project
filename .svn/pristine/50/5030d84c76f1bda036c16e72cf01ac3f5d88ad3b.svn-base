package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.JoinUs;

@Repository
@Transactional
public class JoinUsDaoImpl extends JustFeedbackAbstractClass<JoinUs> implements JoinUsDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addJoinus(JoinUs p) {
		super.addEntity(p);

	}

}
