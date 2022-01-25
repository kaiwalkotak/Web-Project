package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblUser;
@Repository
@Transactional
public class TblUserDaoImpl extends JustFeedbackAbstractClass<TblUser> implements TblUserDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblUser(TblUser p) {
		super.addEntity(p);
	}

	@Override
	public void updateTblUser(TblUser p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblUser> findTblUser(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
