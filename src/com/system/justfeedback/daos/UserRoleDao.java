package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.RoleMaster;


public interface UserRoleDao extends GenericDao<RoleMaster>{
	
	List<RoleMaster> getAllEntity();
	
	RoleMaster getByKey(Long id);
}
