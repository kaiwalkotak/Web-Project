package com.system.justfeedback.daos;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.RoleMaster;

@Repository
public class UserRoleDaoImpl extends JustFeedbackAbstractClass<RoleMaster> implements UserRoleDao{

	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	
	@Override
	public RoleMaster getByKey(Long key) {
		// TODO Auto-generated method stub
		return super.getByKey(key);
	}
	@Override
	public List<Object[]> createSQLQuery(String query, Map<String, Object> var,
			int[] ncharsIndex, int colcount) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<RoleMaster> getAllEntity() {
		return super.getAllEntity();
	}

	@Override
	public void persist(RoleMaster entity) {
		// TODO Auto-generated method stub
		
	}

}
