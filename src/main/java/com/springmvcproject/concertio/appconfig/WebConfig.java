package com.springmvcproject.concertio.appconfig;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.springmvcproject.concertio.appconfig.security.SecurityConfig;



public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {
			HibernateConfig.class, SecurityConfig.class,
		};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] {
			FrontController.class
		};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {
			"/"	
		};
	}

}
