package com.springmvcproject.concertio.dao;

import java.util.List;

import com.springmvcproject.concertio.models.Account;
import com.springmvcproject.concertio.models.Role;


public interface AccountDao extends Dao<Account> {

	void createAccount(Account account);
	
	Account findAccountByEmail(String email);
	
	List<Role> getAllRoles(Account account);
}
