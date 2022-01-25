package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblTicket;
@Repository
@Transactional
public class TblTicketDaoImpl extends JustFeedbackAbstractClass<TblTicket> implements TblTicketDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblTicket(TblTicket p) {
		super.addEntity(p);
	}
	@Override
	public void addTblTicketList(List<TblTicket> p) {
		super.updateAll(p);
	}

	@Override
	public void updateTblTicket(TblTicket p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblTicket> findTblTicket(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
