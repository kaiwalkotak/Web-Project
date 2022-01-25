package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.AdminVideo;

public interface AdminVideoDao extends GenericDao<AdminVideo> {

	public void addAdminVideo(AdminVideo p);

	public void updateAdminVideo(AdminVideo p);

	public List<AdminVideo> findAdminVideo(Object... values) throws Exception;
}
