package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblPaymentReceipt;
@Repository
@Transactional
public class TblPaymentReceiptDaoImpl extends JustFeedbackAbstractClass<TblPaymentReceipt> implements TblPaymentReceiptDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblPaymentReceipt(TblPaymentReceipt p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblPaymentReceipt(TblPaymentReceipt p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblPaymentReceipt> findTblPaymentReceipt(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
