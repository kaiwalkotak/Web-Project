package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblCallfile;
@Repository
@Transactional
public class TblCallfileDaoImpl extends JustFeedbackAbstractClass<TblCallfile> implements TblCallfileDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblCallfile(TblCallfile p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblCallfile(TblCallfile p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblCallfile> findTblCallfile(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
