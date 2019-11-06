package com.springmvcproject.concertio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvcproject.concertio.dao.AccountDao;
import com.springmvcproject.concertio.models.Account;


@Component
public class MyUserDetailsService implements UserDetailsService {
	
	@Autowired
	private AccountDao accountDao;
	
	@Transactional(readOnly=true)
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Account account = accountDao.findAccountByEmail(email);
		System.out.println("User " + account );
		
		if(account == null ) {
			throw new UsernameNotFoundException(
					"User " + email + " was not found in database");
		}
		
		return (UserDetails) account;
	}
}
