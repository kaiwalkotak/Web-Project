package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Customermaster;

@Repository
@Transactional
public class CustomerDaoImpl extends JustFeedbackAbstractClass<Customermaster> implements CustomerDao{
	
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public List<Customermaster> findCustomer(Object... values) throws Exception {
		return super.findEntity(values);
	}

	@Override
	public void addCustomer(Customermaster cust) {
		super.addEntity(cust);
	}

	@Override
	public void updateCustomer(Customermaster cust) {
		super.saveOrUpdateEntity(cust);
	}

}
