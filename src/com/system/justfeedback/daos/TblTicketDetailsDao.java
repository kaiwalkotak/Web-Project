package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.TblTicketDetails;

public interface TblTicketDetailsDao extends GenericDao<TblTicketDetails>{
	public void addTblTicketDetails(TblTicketDetails p);
	public void addTblTicketDetailsList(List<TblTicketDetails> p);
	public void updateTblTicketDetails(TblTicketDetails p);
	public List<TblTicketDetails> findTblTicketDetails(Object...values) throws Exception;
}
