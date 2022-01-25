package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblPaymentMode;

public interface TblPaymentModeDao extends GenericDao<TblPaymentMode>{
	public void addTblPaymentMode(TblPaymentMode p);
	public void addTblPaymentModeList(List<TblPaymentMode> p);
	public void updateTblPaymentMode(TblPaymentMode p);
	public List<TblPaymentMode> findTblPaymentMode(Object...values) throws Exception;
}
