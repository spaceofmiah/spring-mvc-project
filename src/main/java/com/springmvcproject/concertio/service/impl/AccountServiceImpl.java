package com.springmvcproject.concertio.service.impl;

//import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;

import com.springmvcproject.concertio.dao.AccountDao;
import com.springmvcproject.concertio.models.Account;
import com.springmvcproject.concertio.service.AccountService;

@Service("accountService")
@Transactional(readOnly = true)
public class AccountServiceImpl implements AccountService {
	
	@Autowired private AccountDao accountDao;

	@Transactional(readOnly = false)
	@Override
	public boolean registerAccount(Account account, String password, Errors errors) {
		validateEmail(account.getEmail(), errors);
		boolean valid = !errors.hasErrors();
		if(valid) {
			accountDao.create(account, password);
		}
		return valid;
	}
	
	private void validateEmail(String email, Errors errors) {		
		if (accountDao.findAccountByEmail(email) != null) {
			errors.rejectValue(
				"email", "error.duplicate",
				new String[] {email}, null
			);
		}
	}

}
