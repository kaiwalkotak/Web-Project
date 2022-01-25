package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Resorts;

@Repository
@Transactional
public class AdminResortsDaoimpl extends JustFeedbackAbstractClass<Resorts> implements AdminResortsDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}


	@Override
	public void addResort(Resorts p) {
		super.addEntity(p);
		
	}

	@Override
	public void updateResort(Resorts p) {
		super.saveOrUpdateEntity(p);
		
	}

	@Override
	public List<Resorts> findResortDetials(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
