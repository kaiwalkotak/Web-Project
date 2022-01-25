package com.system.justfeedback.security;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.system.justfeedback.model.ClientUser;
import com.system.justfeedback.model.RoleMaster;
import com.system.justfeedback.services.ClientuserService;
import com.system.justfeedback.services.CommonService;


@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService{

	static final Logger logger = LoggerFactory.getLogger(CustomUserDetailsService.class);
	
	@Autowired
	ClientuserService clientuserService;
	
	@Autowired
	CommonService commonServiec;
	
	@Transactional(readOnly=true)
	public UserDetails loadUserByUsername(String ecode)
			throws UsernameNotFoundException {
		ClientUser user = null;
		String password = "";
		try {
			user = clientuserService.findEmployeeByCode(ecode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("User : {}", user);
		if(user==null){
			logger.info("User not found");
			throw new UsernameNotFoundException("Username not found");
		}
		password = commonServiec.encryptionDecryption(user.getCpass(),false);
			return new org.springframework.security.core.userdetails.User(user.getCcode()+"NOITSASPLITNO"+user.getCname(), password, 
				 true, true, true, true, getGrantedAuthorities(user));
	}

	
	private List<GrantedAuthority> getGrantedAuthorities(ClientUser user){
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for(RoleMaster userProfile : user.getUserProfiles()){
			logger.info("UserProfile : {}", userProfile);
			authorities.add(new SimpleGrantedAuthority("ROLE_"+userProfile.getRname()));
		}
		logger.info("authorities : {}", authorities);
		return authorities;
	}
	
}
