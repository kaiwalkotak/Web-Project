package com.system.justfeedback.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.system.justfeedback.model.RoleMaster;
import com.system.justfeedback.services.UserRoleService;

/**
 * A converter class used in views to map id's to actual userProfile objects.
 */
@Component
public class RoleToUserProfileConverter implements Converter<Object, RoleMaster>{

	static final Logger logger = LoggerFactory.getLogger(RoleToUserProfileConverter.class);
	
	@Autowired
	UserRoleService userRoleService;

	/**
	 * Gets UserProfile by Id
	 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
	 */
	public RoleMaster convert(Object element) {
		Long id = Long.parseLong((String)element);
		RoleMaster profile= userRoleService.findUserRoleById(id);
		/*logger.info("Profile : {}",profile);*/
		return profile;
	}
	
}