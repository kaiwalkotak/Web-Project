package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.upgradeMembership;

@Repository
@Transactional
public class UpgradePlanDaoImpl extends JustFeedbackAbstractClass<upgradeMembership> implements UpgradePlanDao {

	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addplan(upgradeMembership up) {
		// TODO Auto-generated method stub
		super.addEntity(up);
	}

	
	
	
}
