package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblAsf;

public interface TblAsfDao extends GenericDao<TblAsf>{
	public void addTblAsf(TblAsf p);
	public void addTblAsfList(List<TblAsf> p);
	public void updateTblAsf(TblAsf p);
	public List<TblAsf> findTblAsf(Object...values) throws Exception;
}
