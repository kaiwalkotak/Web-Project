package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.States;

public interface StatesDao extends GenericDao<States> {
	
	public void addState(States p);

	public void updateStates(States p);

	public List<States> findstateDetials(Object... values) throws Exception;
}
