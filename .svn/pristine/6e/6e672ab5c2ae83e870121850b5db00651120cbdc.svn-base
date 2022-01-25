package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblMember;
import com.system.justfeedback.model.TblPlcStatus;
import com.system.justfeedback.model.TblWcStatus;
@Repository
@Transactional
public class TblWcStatusDaoImpl extends JustFeedbackAbstractClass<TblWcStatus> implements TblWcStatusDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblWcStatus(TblWcStatus p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblWcStatus(TblWcStatus p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblWcStatus> findTblWcStatus(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
