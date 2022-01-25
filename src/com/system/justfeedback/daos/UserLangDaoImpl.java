package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.UserLang;
@Repository
@Transactional
public class UserLangDaoImpl extends JustFeedbackAbstractClass<UserLang> implements UserLangDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addUserLang(UserLang p) {
		super.addEntity(p);
	}

	@Override
	public void updateUserLang(UserLang p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<UserLang> findUserLang(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public List<UserLang> getAllUserLang() {
		// TODO Auto-generated method stub
		return super.getAllEntity();
	}
	
}
