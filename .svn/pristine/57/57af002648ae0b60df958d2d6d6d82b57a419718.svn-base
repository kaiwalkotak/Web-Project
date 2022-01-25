package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Employee;
import com.system.justfeedback.model.Product;
import com.system.justfeedback.model.SaleBranch;

@Repository
@Transactional
public class SaleBranchDaoImpl extends JustFeedbackAbstractClass<SaleBranch> implements SaleBranchDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public List<SaleBranch> findBranch(Object... values) throws Exception {
		return super.findEntity(values);
	}

	@Override
	public void addBranch(SaleBranch p) {
		super.addEntity(p);
	}

	@Override
	public void updateBranch(SaleBranch p) {
		super.saveOrUpdateEntity(p);
	}

}
