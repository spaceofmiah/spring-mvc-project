package com.springmvcproject.concertio.appconfig.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.springmvcproject.concertio.service.MyUserDetailsService;


/**
 * Spring-security
 * https://docs.spring.io/spring-security/site/docs/current/reference/htmlsingle/#servlet-hello-jc
 * 
 * @author spaceofmiah
 */

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
    private UserDetailsService userDetailsService;
	
	
	@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
    }


	/**
	 * When authentication is required, automatically redirect to the 
	 * login page... 
	 * A good example will be when a user is trying to like or rate a
	 * product or service, that user needs to be authenticated before
	 * such an action could be perform, so if the user is not authenticated
	 * spring-security automatically redirects to the login page.
	 * 
	 * HELPFUL-LINK: https://docs.spring.io/spring-security/site/docs/current/guides/html5/form-javaconfig.html
	 */
	@Override
	protected void configure (HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				/**
				 * None of these urls requires authentication and any other urls
				 * not specified here, will require authentication
				 */
				.antMatchers(
						"/", 
						"/concertio", 
						"/concertio/about", 
						"/concertion/account/create"
				).permitAll();
		
		http
			.formLogin()
				.loginPage("/account/login")
				.usernameParameter("email")
				.permitAll()
				.and()
					.logout()
					.permitAll();
	}
}
