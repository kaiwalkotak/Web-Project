package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.Emimaster;


public interface EmiDao  extends GenericDao<Emimaster>{

	public void addEmi(Emimaster e);

	public void updateEmi(Emimaster e);

	public List<Emimaster> findEmiDetials(Object... values) throws Exception;
}
