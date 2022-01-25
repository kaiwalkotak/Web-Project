package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblPlcStatus;
import com.system.justfeedback.model.TblSalesStatus;
@Repository
@Transactional
public class TblSalesStatusDaoImpl extends JustFeedbackAbstractClass<TblSalesStatus> implements TblSalesStatusDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblSalesStatus(TblSalesStatus p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblSalesStatus(TblSalesStatus p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblSalesStatus> findTblSalesStatus(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
