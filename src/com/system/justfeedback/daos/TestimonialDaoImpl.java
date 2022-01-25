package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.Banner;
import com.system.justfeedback.model.Testimonial;

@Repository
@Transactional
public class TestimonialDaoImpl extends JustFeedbackAbstractClass<Testimonial> implements TestimonialDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addTestimonial(Testimonial p) {
		super.addEntity(p);

	}

	@Override
	public void updateTestimonial(Testimonial p) {
		super.saveOrUpdateEntity(p);

	}

	@Override
	public List<Testimonial> findTestimonial(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
