package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TicketRaise;

@Repository
@Transactional
public class TicketRaiseDaoImpl extends JustFeedbackAbstractClass<TicketRaise> implements TicketRaiseDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addTicketRaise(TicketRaise t) {
		super.addEntity(t);
		
	}
}
