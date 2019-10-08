
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
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registrationPageRoute() {
		return "registrationPage";
	}
    
}
