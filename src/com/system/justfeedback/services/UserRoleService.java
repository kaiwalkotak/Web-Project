package com.system.justfeedback.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.justfeedback.daos.UserRoleDao;
import com.system.justfeedback.model.RoleMaster;

@Service
public class UserRoleService {
	
	@Autowired
	UserRoleDao userRoleDao;
	
	public List<RoleMaster> findAll(){
		return userRoleDao.getAllEntity();
	}
	
	public RoleMaster findUserRoleById(Long id){
		return userRoleDao.getByKey(id);
	}
}
