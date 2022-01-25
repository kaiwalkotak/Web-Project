package com.system.justfeedback.daos;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.web.authentication.rememberme.PersistentRememberMeToken;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.system.justfeedback.model.PersistentLogin;


@Repository("tokenRepositoryDao")
@Transactional
public class HibernateTokenRepositoryImpl extends JustFeedbackAbstractClass<PersistentLogin>
		implements PersistentTokenRepository {

	static final Logger logger = LoggerFactory.getLogger(HibernateTokenRepositoryImpl.class);
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	
	@Override
	public void createNewToken(PersistentRememberMeToken token) {
		/*logger.info("Creating Token for user : {}", token.getUsername());*/
		PersistentLogin persistentLogin = new PersistentLogin();
		persistentLogin.setUsername(token.getUsername());
		persistentLogin.setSeries(token.getSeries());
		persistentLogin.setToken(token.getTokenValue());
		persistentLogin.setLast_used(token.getDate());
		persist(persistentLogin);

	}

	@Override
	public PersistentRememberMeToken getTokenForSeries(String seriesId) {
		/*logger.info("Fetch Token if any for seriesId : {}", seriesId);*/
		try {
			PersistentLogin persistentLogin = (PersistentLogin) findEntity("series",Operation_enum.EQ,seriesId);
			return new PersistentRememberMeToken(persistentLogin.getUsername(), persistentLogin.getSeries(),
					persistentLogin.getToken(), persistentLogin.getLast_used());
		} catch (Exception e) {
			logger.info("Token not found...");
			return null;
		}
	}

	@Override
	public void removeUserTokens(String username) {
		/*logger.info("Removing Token if any for user : {}", username);*/
		try {
			PersistentLogin persistentLogin = (PersistentLogin) findEntity("username",Operation_enum.EQ,username);
			if (persistentLogin != null) {
				/*logger.info("rememberMe was selected");*/
				deleteEntity(persistentLogin);
			}
		} catch (Exception e) {
			logger.info("Token not found...");
		}

	}

	@Override
	public void updateToken(String seriesId, String tokenValue, Date lastUsed) {
		/*logger.info("Updating Token for seriesId : {}", seriesId);*/
		try {
			PersistentLogin persistentLogin = (PersistentLogin) findEntity("series",Operation_enum.EQ,seriesId);;
			persistentLogin.setToken(tokenValue);
			persistentLogin.setLast_used(lastUsed);
			updateEntity(persistentLogin);
		} catch (Exception e) {
			logger.info("Token not found...");
		}
	}
	@Override
	public List<Object[]> createSQLQuery(String query, Map<String, Object> var,
			int[] ncharsIndex, int colcount) {
		// TODO Auto-generated method stub
		return null;
	}

}
