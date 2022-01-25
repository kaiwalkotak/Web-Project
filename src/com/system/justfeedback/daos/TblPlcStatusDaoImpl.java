package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblPlcStatus;
@Repository
@Transactional
public class TblPlcStatusDaoImpl extends JustFeedbackAbstractClass<TblPlcStatus> implements TblPlcStatusDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblPlcStatus(TblPlcStatus p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblPlcStatus(TblPlcStatus p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblPlcStatus> findTblPlcStatus(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
