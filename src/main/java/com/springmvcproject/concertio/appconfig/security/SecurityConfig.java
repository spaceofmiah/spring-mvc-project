package com.springmvcproject.concertio.appconfig.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.springmvcproject.concertio.service.MyUserDetailsService;


/**
 * Spring-security
 * https://docs.spring.io/spring-security/site/docs/current/reference/htmlsingle/#servlet-hello-jc
 * 
 * @author spaceofmiah
 */

@EnableWebSecurity
@ComponentScan(basePackages={"com.springmvcproject.concertio"})
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
    private MyUserDetailsService userDetailsService;
		
	
	@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
        auth.authenticationProvider(authenticationProvider());
    }
	
	/**
	 * HELPFUL-LINK: https://docs.spring.io/spring-security/site/docs/current/guides/html5/form-javaconfig.html
	 */
	@Override
	protected void configure (HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/admin/**").access("hasRole('ROLE_USER')")
		.and()
		    .formLogin().loginPage("/login").failureUrl("/account/login").defaultSuccessUrl("/")
		    .usernameParameter("email").passwordParameter("password")		
		.and()
		    .logout().logoutSuccessUrl("/login?logout")
		.and()
		    .csrf().disable();
	}
	
	
	@Bean
	public PasswordEncoder passwordEncoder(){
		return new BCryptPasswordEncoder();
	}
	
	
	@Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        return authenticationProvider;
    }
}
