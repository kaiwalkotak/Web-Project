package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.AdminVideo;

@Repository
@Transactional
public class AdminVideoImpl extends JustFeedbackAbstractClass<AdminVideo> implements AdminVideoDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addAdminVideo(AdminVideo p) {
		super.addEntity(p);

	}

	@Override
	public void updateAdminVideo(AdminVideo p) {
		super.saveOrUpdateEntity(p);

	}

	@Override
	public List<AdminVideo> findAdminVideo(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
