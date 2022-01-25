package com.system.justfeedback.daos;

import com.system.justfeedback.model.TicketRaise;

public interface TicketRaiseDao extends GenericDao<TicketRaise> {
	
	public void addTicketRaise(TicketRaise t);

	
}
