package com.springmvcproject.concertio.service;

import org.springframework.validation.Errors;
import com.springmvcproject.concertio.models.Account;

public interface AccountService {
	boolean registerAccount(
		Account account, String password, Errors errors
	);
}
