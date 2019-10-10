package com.springmvcproject.concertio.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvcproject.concertio.formbeans.AccountCreationForm;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@RequestMapping(value="create", method=RequestMethod.GET)
	public String getRegistrationForm(Model model) {
		model.addAttribute("account", new AccountCreationForm());
		return "accountRegistration";
	}
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public String postRegistrationForm(AccountCreationForm form) {
		return "redirect:registration_ok";
	}

}
