package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Banner;

@Repository
@Transactional
public class BannerDaoImpl extends JustFeedbackAbstractClass<Banner> implements BannerDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addBanner(Banner p) {
		super.addEntity(p);
	}

	@Override
	public void updateBanner(Banner p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<Banner> findBanner(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
