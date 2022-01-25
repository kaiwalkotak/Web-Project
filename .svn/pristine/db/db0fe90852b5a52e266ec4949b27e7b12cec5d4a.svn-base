package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Users;
@Repository
@Transactional
public class UsersDaoImpl extends JustFeedbackAbstractClass<Users> implements UsersDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addUsers(Users p) {
		super.addEntity(p);
	}

	@Override
	public void updateUsers(Users p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<Users> findUsers(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
