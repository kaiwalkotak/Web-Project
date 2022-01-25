package com.system.justfeedback.daos;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Enquiry;

@Repository
@Transactional
public class EnquiryDaoImpl extends JustFeedbackAbstractClass<Enquiry> implements EnquiryDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addEnquiry(Enquiry p) {
		super.addEntity(p);

	}

}
