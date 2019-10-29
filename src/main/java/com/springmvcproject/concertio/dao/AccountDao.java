package com.springmvcproject.concertio.dao;

import com.springmvcproject.concertio.models.Account;

public interface AccountDao extends Dao<Account> {

	public void create(Account account, String password);
	
	public Account findAccountByEmail(String email);
}
