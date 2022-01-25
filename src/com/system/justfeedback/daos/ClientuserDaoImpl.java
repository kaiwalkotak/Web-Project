package com.system.justfeedback.daos;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.ClientUser;

@Repository
@Transactional
public class ClientuserDaoImpl extends JustFeedbackAbstractClass<ClientUser> implements ClientuserDao {

	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	
	@Override
	public long getEntityCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Object[]> createQuery(String query, Map<String, Object> var) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object[]> createSQLQuery(String query, Map<String, Object> var) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object[]> createSQLQuery(String query, Map<String, Object> var,
			int[] ncharsIndex, int colcount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object[]> createByCountQuery(String query,
			Map<String, Object> var, int firstResult, int maxResult) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long countForQuery(String from, String countOn, String where,Map<String, Object> var) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Object> singleColQuery(String query, Map<String, Object> var) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateDeleteQuery(String query, Map<String, Object> var) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateDeleteSQLQuery(String query, Map<String, Object> var) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List nativeQueryToBean(String query, Class classAlias,
			Map<String, Object> var) throws DataAccessResourceFailureException,
			HibernateException, IllegalStateException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ClientUser getByKey(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteEntity(ClientUser employee) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEntityBySession(ClientUser user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOrUpdateEntity(ClientUser user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAll(Collection<ClientUser> userList) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List<ClientUser> findEmployee(Object... values) throws Exception {
		// TODO Auto-generated method stub
		return super.findEntity(values);
	}

	@Override
	public void persist(ClientUser entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ClientUser> getAllEmployee() {
		return super.getAllEntity();
	}

	@Override
	public void addClientUser(ClientUser user) {
		super.addEntity(user);
	}

	@Override
	public void updateClientUser(ClientUser user) {
		super.saveOrUpdateEntity(user);
	}
}
