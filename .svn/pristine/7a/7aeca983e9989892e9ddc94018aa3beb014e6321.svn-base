package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.TblTicketDetails;
@Repository
@Transactional
public class TblTicketDetailsDaoImpl extends JustFeedbackAbstractClass<TblTicketDetails> implements TblTicketDetailsDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addTblTicketDetails(TblTicketDetails p) {
		super.addEntity(p);
	}
	@Override
	public void addTblTicketDetailsList(List<TblTicketDetails> p) {
		super.updateAll(p);
	}

	@Override
	public void updateTblTicketDetails(TblTicketDetails p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<TblTicketDetails> findTblTicketDetails(Object... values) throws Exception {
		return super.findEntity(values);
	}
	
}
