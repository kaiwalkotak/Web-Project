package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblEmi;
@Repository
@Transactional
public class TblEmiDaoImpl extends JustFeedbackAbstractClass<TblEmi> implements TblEmiDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblEmi(TblEmi p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblEmi(TblEmi p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblEmi> findTblEmi(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public void addTblEmiList(List<TblEmi> p) {
		super.updateAll(p);
	}
	
}
