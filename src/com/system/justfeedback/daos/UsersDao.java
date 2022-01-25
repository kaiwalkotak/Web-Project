package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.Users;

public interface UsersDao extends GenericDao<Users>{
	public void addUsers(Users p);
	public void updateUsers(Users p);
	public List<Users> findUsers(Object...values) throws Exception;
}
