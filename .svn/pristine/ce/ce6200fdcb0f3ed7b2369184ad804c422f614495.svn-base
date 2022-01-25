package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.CustomerPay;
@Repository
@Transactional
public class CustomerPayDaoImpl extends JustFeedbackAbstractClass<CustomerPay> implements CustomerPayDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addCustomerPay(CustomerPay p) {
		super.addEntity(p);
	}

	@Override
	public void updateCustomerPay(CustomerPay p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<CustomerPay> findCustomerPay(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
