package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Websiteoffers;

@Repository
@Transactional
public class WebsiteoffersDaoImpl extends JustFeedbackAbstractClass<Websiteoffers> implements WebsiteOffersDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addEnquiry(Websiteoffers p) {
		super.addEntity(p);

	}

}
