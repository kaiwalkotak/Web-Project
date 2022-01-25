package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.States;

@Repository
@Transactional
public class StatesDaoImpl extends JustFeedbackAbstractClass<States> implements StatesDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addState(States p) {
		super.addEntity(p);
	}

	@Override
	public void updateStates(States p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<States> findstateDetials(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
