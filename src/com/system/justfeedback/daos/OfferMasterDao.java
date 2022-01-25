package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.OfferMaster;

public interface OfferMasterDao extends GenericDao<OfferMaster> {

	public void addOffer(OfferMaster p);

	public void updateOffer(OfferMaster p);

	public List<OfferMaster> findOffer(Object... values) throws Exception;
}
