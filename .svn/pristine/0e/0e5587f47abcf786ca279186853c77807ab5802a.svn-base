package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblProducts;
@Repository
@Transactional
public class TblProductsDaoImpl extends JustFeedbackAbstractClass<TblProducts> implements TblProductsDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblProducts(TblProducts p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblProducts(TblProducts p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblProducts> findTblProducts(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
