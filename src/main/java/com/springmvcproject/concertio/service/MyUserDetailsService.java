package com.springmvcproject.concertio.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springmvcproject.concertio.dao.AccountDao;
import com.springmvcproject.concertio.models.Account;
import com.springmvcproject.concertio.models.Role;


@Service
public class MyUserDetailsService implements UserDetailsService {
	
	@Autowired
	private AccountDao accountDao;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Account account = accountDao.findAccountByEmail(email);
				
		if(account == null ) {
			throw new UsernameNotFoundException("No user found with " + email );
		}
		
		return new User(account.getEmail(), account.getPassword(), account.isEnabled(), 
				true, true, true, getGrantedAuthorities(account));
	}
	
	
	private List<GrantedAuthority> getGrantedAuthorities(Account account){
		List<GrantedAuthority> privileges = new ArrayList<GrantedAuthority>();
		
		System.out.println(accountDao.getAllRoles(account));
		System.out.println("\n\n\n\n\n");
		
		
		for(Role userRole : accountDao.getAllRoles(account)) {
			privileges.add(new SimpleGrantedAuthority("ROLE_" + userRole.getRole()));
		}
		
		return privileges;
	}
}
