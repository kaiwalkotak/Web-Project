package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Emimaster;
@Repository
@Transactional
public class EmiDaoImpl extends JustFeedbackAbstractClass<Emimaster>  implements EmiDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addEmi(Emimaster e) {
		super.addEntity(e);
		
	}

	@Override
	public void updateEmi(Emimaster e) {
		super.saveOrUpdateEntity(e);
		
	}

	@Override
	public List<Emimaster> findEmiDetials(Object... values) throws Exception {
		// TODO Auto-generated method stub
		return  super.findEntity(values);
	}

}
