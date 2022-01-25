package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.city;

@Repository
@Transactional
public class CityDaoImpl extends JustFeedbackAbstractClass<city> implements CityDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addCity(city p) {
		super.addEntity(p);
	}

	@Override
	public void updateCity(city p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<city> findCityDetials(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
