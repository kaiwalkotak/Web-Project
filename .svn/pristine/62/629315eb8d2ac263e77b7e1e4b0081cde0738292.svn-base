package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.SMSLogs;
@Repository
@Transactional
public class SMSLogsDaoImpl extends JustFeedbackAbstractClass<SMSLogs> implements SMSLogsDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addSMSLogs(SMSLogs p) {
		super.addEntity(p);
	}
	@Override
	public void addSMSLogsList(List<SMSLogs> p) {
		super.updateAll(p);
	}

	@Override
	public void updateSMSLogs(SMSLogs p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<SMSLogs> findSMSLogs(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
