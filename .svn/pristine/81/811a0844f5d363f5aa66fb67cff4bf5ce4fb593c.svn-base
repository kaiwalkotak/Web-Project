package com.system.justfeedback.security;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import com.system.justfeedback.bean.SessionBean;
import com.system.justfeedback.daos.HibernateQueryDao;
import com.system.justfeedback.services.CommonService;
import com.system.justfeedback.utility.CommonKeywords;

/**
 * @author Keval.soni 
 */

@Component
public class SecureFilter extends OncePerRequestFilter {

	private SessionFactory sessionFactory;
	private String contextName;
	
	@Autowired
	HibernateQueryDao hibernateQueryDao;
	
	@Autowired
	CommonService commonService;
	
	@Autowired
	private Environment environment;
	
	public SecureFilter() {
		super();
	}
	public SecureFilter(SessionFactory sessionFactory,String contextName) {
		this.sessionFactory = sessionFactory;
		this.contextName = contextName;
	}


	@Override
	protected void doFilterInternal(HttpServletRequest request,HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
		if(!isPageSkipped(request.getRequestURI())){
			System.out.println("request: "+request.getRequestURI());
			SessionBean sessionBean = (SessionBean) request.getSession().getAttribute(CommonKeywords.SESSIONOBJECT.toString());
			if(sessionBean != null){
				Session hsession = null;
				HttpSession session = request.getSession();
				
				if (hsession == null) { hsession = sessionFactory.openSession(); }
				try {
					session.setAttribute("sessionBeanF", sessionBean);
					hsession.flush();
					hsession.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		chain.doFilter(request, response);
	}
	private boolean isPageSkipped(String uri){
		System.out.println("ConName: "+contextName);
		boolean pageSkipped = false;
		if(uri.startsWith("/resources")){
			pageSkipped = true;
		}
		return pageSkipped;
	}
}
