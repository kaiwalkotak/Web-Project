package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblMember;

public interface TblMemberDao extends GenericDao<TblMember>{
	public void addTblMember(TblMember p);
	public void updateTblMember(TblMember p);
	public List<TblMember> findTblMember(Object...values) throws Exception;
}
