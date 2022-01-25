package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Employee;
import com.system.justfeedback.model.Product;

@Repository
@Transactional
public class EmployeeDaoImpl extends JustFeedbackAbstractClass<Employee> implements EmployeeDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public List<Employee> findEmployee(Object... values) throws Exception {
		return super.findEntity(values);
	}

	@Override
	public void addEmployee(Employee p) {
		super.addEntity(p);
	}

	@Override
	public void updateEmployee(Employee p) {
		super.saveOrUpdateEntity(p);
	}

}
