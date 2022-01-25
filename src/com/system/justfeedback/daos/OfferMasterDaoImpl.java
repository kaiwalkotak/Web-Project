package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.OfferMaster;

@Repository
@Transactional
public class OfferMasterDaoImpl extends JustFeedbackAbstractClass<OfferMaster> implements OfferMasterDao {

	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addOffer(OfferMaster p) {
		super.addEntity(p);

	}

	@Override
	public void updateOffer(OfferMaster p) {
		super.saveOrUpdateEntity(p);

	}

	@Override
	public List<OfferMaster> findOffer(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
