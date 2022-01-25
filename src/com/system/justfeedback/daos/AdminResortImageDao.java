package com.system.justfeedback.daos;

import com.system.justfeedback.model.ResortImages;

public interface AdminResortImageDao extends GenericDao<ResortImages> {
	
	public void addResortImage(ResortImages p);

	//public void updateResort(ResortImages p);

	//public List<ResortImages> findResortImagesDetials(Object... values) throws Exception;
	
}
