package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.Businessgallery;

public interface BusinessgalleryDao extends GenericDao<Businessgallery>{
	public void addBusinessgallery(Businessgallery p);
	public void addBusinessgalleryList(List<Businessgallery> p);
	public void updateBusinessgallery(Businessgallery p);
	public List<Businessgallery> findBusinessgallery(Object...values) throws Exception;
}
