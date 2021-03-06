package com.system.justfeedback.daos;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Keval.soni 
 */

@Repository
@Transactional
public class HibernateQueryDaoImpl extends JustFeedbackAbstractClass<Object> implements HibernateQueryDao{

	 @Autowired
	 @Qualifier("sessionFactory")
	 public void init(SessionFactory factory) {
		 setSessionFactory(factory);
	 }
	 
	@Override
	public List<Object[]> createNewQuery(String query, Map<String, Object> var) {
		return super.createQuery(query, var);
	}

	@Override
	public List<Object[]> createByCountNewQuery(String query,Map<String, Object> var, int firstResult, int maxResult) {
		return super.createByCountQuery(query, var,firstResult, maxResult);
	}

	@Override
	public long countForNewQuery(String from, String countOn, String where,Map<String, Object> var) {
		return super.countForQuery(from,countOn,where,var);
	}

	@Override
	public List<Object> getSingleColQuery(String query, Map<String, Object> var) {
		return super.singleColQuery(query,var);
	}

	@Override
	public int updateDeleteNewQuery(String query, Map<String, Object> var) {
		return super.updateDeleteQuery(query,var);
	}

	@Override
	public int updateDeleteSQLNewQuery(String query, Map<String, Object> var) {
		return super.updateDeleteSQLQuery(query,var);
	}

	@Override
	public List<Object[]> nativeSQLQuery(String query, Map<String, Object> var) {
		return super.createSQLQuery(query,var);
	}

	@Override
	public List nativeNewQueryToBean(String query, Class classAlias,Map<String, Object> var) throws DataAccessResourceFailureException, HibernateException, IllegalStateException, ClassNotFoundException {
		return super.nativeQueryToBean(query, classAlias, var);
	}

	@Override
	public List<Object[]> createNewSQLQuery(String query,
			Map<String, Object> var, int[] ncharsIndex, int colcount) {
		return super.createSQLQuery(query, var, ncharsIndex, colcount);
	}
}
