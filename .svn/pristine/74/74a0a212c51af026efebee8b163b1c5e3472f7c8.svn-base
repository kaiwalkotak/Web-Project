package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


import com.system.justfeedback.model.Paymentlogin;

@Repository
@Transactional
public class PaymentloginDaoImpl  extends JustFeedbackAbstractClass<Paymentlogin> implements PaymentloginDao{

	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addPayment(Paymentlogin p) {
		super.addEntity(p);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePayment(Paymentlogin p) {
		super.saveOrUpdateEntity(p);
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Paymentlogin> findpaymentDetials(Object... values) throws Exception {
		// TODO Auto-generated method stub
		return super.findEntity(values);
	}

	
	
	
}
