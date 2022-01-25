package com.system.justfeedback.daos;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.system.justfeedback.model.VideoSlide;

@Repository
@Transactional
public class VideoSlideDaoImpl extends JustFeedbackAbstractClass<VideoSlide> implements VideoSlideDao {
	@Autowired
	@Qualifier("sessionFactory")
	public void init(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public void addVideoSlide(VideoSlide p) {
		super.addEntity(p);
		
	}

	@Override
	public void updateVideoSlide(VideoSlide p) {
		super.saveOrUpdateEntity(p);
		
	}

	@Override
	public List<VideoSlide> findVideoSlide(Object... values) throws Exception {
		return super.findEntity(values);
	}

}
