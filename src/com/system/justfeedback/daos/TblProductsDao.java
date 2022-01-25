package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblProducts;

public interface TblProductsDao extends GenericDao<TblProducts>{
	public void addTblProducts(TblProducts p);
	public void updateTblProducts(TblProducts p);
	public List<TblProducts> findTblProducts(Object...values) throws Exception;
}
