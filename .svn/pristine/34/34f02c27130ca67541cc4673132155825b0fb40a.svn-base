package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Product;

@Repository
@Transactional
public class ProductDaoImpl extends JustFeedbackAbstractClass<Product> implements ProductDao{
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory){
		setSessionFactory(sessionFactory);
	}
	@Override
	public List<Product> findProduct(Object... values) throws Exception {
		return super.findEntity(values);
	}

	@Override
	public void addProduct(Product p) {
		super.addEntity(p);
	}

	@Override
	public void updateProduct(Product p) {
		super.saveOrUpdateEntity(p);
	}

}
