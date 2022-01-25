package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.UserLang;

public interface UserLangDao extends GenericDao<UserLang>{
	public void addUserLang(UserLang p);
	public void updateUserLang(UserLang p);
	public List<UserLang> findUserLang(Object...values) throws Exception;
	public List<UserLang> getAllUserLang();
}
