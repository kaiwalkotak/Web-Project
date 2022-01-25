package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblAsf;
@Repository
@Transactional
public class TblAsfDaoImpl extends JustFeedbackAbstractClass<TblAsf> implements TblAsfDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblAsf(TblAsf p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblAsf(TblAsf p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblAsf> findTblAsf(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public void addTblAsfList(List<TblAsf> p) {
		super.updateAll(p);
	}
	
}
