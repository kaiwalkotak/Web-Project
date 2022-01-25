package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.RaiseTrip;

@Repository
@Transactional
public class RaiseTripDaoImpl extends JustFeedbackAbstractClass<RaiseTrip> implements RaiseTripDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addRaiseTrip(RaiseTrip t) {
		super.addEntity(t);

	}
}
