package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblAgreement;
@Repository
@Transactional
public class TblAgreementDaoImpl extends JustFeedbackAbstractClass<TblAgreement> implements TblAgreementDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblAgreement(TblAgreement p) {
		super.addEntity(p);
	}
	@Override
	public void addTblAgreementList(List<TblAgreement> p) {
		super.updateAll(p);
	}

	@Override
	public void updateTblAgreement(TblAgreement p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblAgreement> findTblAgreement(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
