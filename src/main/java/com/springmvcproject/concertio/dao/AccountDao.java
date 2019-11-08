package com.springmvcproject.concertio.dao;

import com.springmvcproject.concertio.models.Account;

public interface AccountDao extends Dao<Account> {

	void createAccount(Account account);
	
	Account findAccountByEmail(String email);
}
