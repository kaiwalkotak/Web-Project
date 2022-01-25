package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblCourier;
@Repository
@Transactional
public class TblCourierDaoImpl extends JustFeedbackAbstractClass<TblCourier> implements TblCourierDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblCourier(TblCourier p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblCourier(TblCourier p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblCourier> findTblCourier(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
