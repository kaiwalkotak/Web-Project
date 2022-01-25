package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblPaymentMode;
@Repository
@Transactional
public class TblPaymentModeDaoImpl extends JustFeedbackAbstractClass<TblPaymentMode> implements TblPaymentModeDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblPaymentMode(TblPaymentMode p) {
		super.addEntity(p);
	}
	@Override
	public void addTblPaymentModeList(List<TblPaymentMode> p) {
		super.updateAll(p);
	}

	@Override
	public void updateTblPaymentMode(TblPaymentMode p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblPaymentMode> findTblPaymentMode(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
