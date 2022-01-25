package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblCallfile;

public interface TblCallfileDao extends GenericDao<TblCallfile>{
	public void addTblCallfile(TblCallfile p);
	public void updateTblCallfile(TblCallfile p);
	public List<TblCallfile> findTblCallfile(Object...values) throws Exception;
}
