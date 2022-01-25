package com.system.justfeedback.daos;

import java.util.Collection;
import java.util.List;

import com.system.justfeedback.model.ClientUser;

public interface ClientuserDao extends GenericDao<ClientUser> {
	
	public ClientUser getByKey(Long id);

	public void deleteEntity(ClientUser user);

	public void deleteAll(Collection<ClientUser> clientList);
    
	public void updateEntityBySession(ClientUser user);

	public void saveOrUpdateEntity(ClientUser user);

	public void updateAll(Collection<ClientUser> userList);
	
	public List<ClientUser> findEmployee(Object... values) throws Exception;

	public List<ClientUser> getAllEmployee();

	public void addClientUser(ClientUser user);

	public void updateClientUser(ClientUser user);
}
