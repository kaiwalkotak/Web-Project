package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.AdminImages;
import com.system.justfeedback.model.AdminVideo;

@Repository
@Transactional
public class AdminImageImpl extends JustFeedbackAbstractClass<AdminImages> implements AdminImageDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addAdminImages(AdminImages p) {
		super.addEntity(p);

	}

	@Override
	public void updateAdminImages(AdminImages p) {
		super.saveOrUpdateEntity(p);

	}

	@Override
	public List<AdminImages> findAdminImages(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
