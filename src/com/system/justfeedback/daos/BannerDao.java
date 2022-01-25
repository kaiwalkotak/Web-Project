package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.Banner;
import com.system.justfeedback.model.TblProducts;

public interface BannerDao extends GenericDao<Banner> {
	
	public void addBanner(Banner p);

	public void updateBanner(Banner p);

	public List<Banner> findBanner(Object... values) throws Exception;
}
