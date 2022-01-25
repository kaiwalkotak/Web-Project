package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.AdminImages;

public interface AdminImageDao extends GenericDao<AdminImages> {

	public void addAdminImages(AdminImages p);

	public void updateAdminImages(AdminImages p);

	public List<AdminImages> findAdminImages(Object... values) throws Exception;
}
