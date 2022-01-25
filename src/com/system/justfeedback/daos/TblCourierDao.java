package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblCourier;

public interface TblCourierDao extends GenericDao<TblCourier>{
	public void addTblCourier(TblCourier p);
	public void updateTblCourier(TblCourier p);
	public List<TblCourier> findTblCourier(Object...values) throws Exception;
}
