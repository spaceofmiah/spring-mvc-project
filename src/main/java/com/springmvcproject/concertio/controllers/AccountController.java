package com.springmvcproject.concertio.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvcproject.concertio.formbeans.AccountCreationForm;
import com.springmvcproject.concertio.models.Account;
import com.springmvcproject.concertio.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	private static final String VN_REG_FORM = "accountRegistration";
	private static final String VN_REG_OK = "redirect:/";
	
	@Autowired 
	private AccountService accountService;
	
	
	/**
	 * defines the field that HTTP parameters will be bound
	 * to and ignore unwanted form parameters.
	 * @param binder
	 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setAllowedFields(
			"firstName", "middleName", "lastName", "email", "password", 
			"confirmPassword", "acceptTerms");
	}
	

	


	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String getRegistrationForm(Model model) {
		model.addAttribute("account", new AccountCreationForm());
		return VN_REG_FORM;
	}

	
	
	@RequestMapping(value = "", method=RequestMethod.POST)
	public String postRegistrationForm(
		@ModelAttribute("account") @Valid AccountCreationForm form,
		BindingResult result) {
			convertPasswordError(result);
			accountService.registerAccount(toAccount(form), result);
			return (result.hasErrors() ? VN_REG_FORM : VN_REG_OK);
	}
	
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
		@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {
		
		// check if there is an authenticated account 
		// redirect to index page if true
		if (isAuthenticated()) {
			return new ModelAndView("redirect:/");
		}
		

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		
		model.setViewName("loginPage");
		return model;
	}
	
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/account/login?logout=true";
    }
	
	
	
	/**
	 * checks if an account has been authenticated
	 * @return boolean
	 */
	private static boolean isAuthenticated() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
		    return true;
		}
		return false;
	}
	

	private static Account toAccount(AccountCreationForm form) {
		Account account = new Account();
		account.setEmail(form.getEmail());
		account.setFirstName(form.getFirstName());
		account.setLastName(form.getLastName());
		account.setMiddleName(form.getMiddleName());
		account.setAcceptTerms(form.getAcceptTerms());
		account.setPassword(form.getPassword());
		return account;
	}
	
	private static void convertPasswordError(BindingResult result) {
		for(ObjectError error : result.getGlobalErrors()) {
			String message = error.getDefaultMessage();
			if("account.password.mismatch.message".equals(message)) {
				if(!result.hasFieldErrors("password")) {
					result.rejectValue("password", "error.mismatch");
				}	
			}
		}
	}
}
