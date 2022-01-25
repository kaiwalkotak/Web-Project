package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblReservation;
@Repository
@Transactional
public class TblReservationDaoImpl extends JustFeedbackAbstractClass<TblReservation> implements TblReservationDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblReservation(TblReservation p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblReservation(TblReservation p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblReservation> findTblReservation(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
