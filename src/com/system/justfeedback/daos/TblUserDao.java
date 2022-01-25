package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblUser;

public interface TblUserDao extends GenericDao<TblUser>{
	public void addTblUser(TblUser p);
	public void updateTblUser(TblUser p);
	public List<TblUser> findTblUser(Object...values) throws Exception;
}
