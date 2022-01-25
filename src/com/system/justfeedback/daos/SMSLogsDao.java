package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.SMSLogs;

public interface SMSLogsDao extends GenericDao<SMSLogs>{
	public void addSMSLogs(SMSLogs p);
	public void addSMSLogsList(List<SMSLogs> p);
	public void updateSMSLogs(SMSLogs p);
	public List<SMSLogs> findSMSLogs(Object...values) throws Exception;
}
