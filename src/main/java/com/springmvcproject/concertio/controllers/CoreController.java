
package com.springmvcproject.concertio.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author spaceofmiah
 */

@Controller
public class CoreController {
    
    /*
        *
            this conroller will be used to handle routes and pages
            that do not include forms processing  e.g
            
            about us page, faq page e.t.c
        *
    */
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registrationPageRoute() {
		return "registrationPage";
	}
        
        @RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginPageRoute() {
		return "loginPage";
	}
    
} 
