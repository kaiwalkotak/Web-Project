package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblAgreement;

public interface TblAgreementDao extends GenericDao<TblAgreement>{
	public void addTblAgreement(TblAgreement p);
	public void addTblAgreementList(List<TblAgreement> p);
	public void updateTblAgreement(TblAgreement p);
	public List<TblAgreement> findTblAgreement(Object...values) throws Exception;
}
