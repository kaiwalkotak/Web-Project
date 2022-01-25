package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Businessgallery;
@Repository
@Transactional
public class BusinessgalleryDaoImpl extends JustFeedbackAbstractClass<Businessgallery> implements BusinessgalleryDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public void addBusinessgallery(Businessgallery p) {
		super.addEntity(p);
	}

	@Override
	public void updateBusinessgallery(Businessgallery p) {
		super.saveOrUpdateEntity(p);
	}

	@Override
	public List<Businessgallery> findBusinessgallery(Object... values) throws Exception {
		return super.findEntity(values);
	}
	@Override
	public void addBusinessgalleryList(List<Businessgallery> p) {
		super.updateAll(p);
	}
	
}
