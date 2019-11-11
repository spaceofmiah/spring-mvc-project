package com.springmvcproject.concertio.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value="/hall")
public class HallController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
    public String eventListRoute() {
        return "hallList";
    }
	
	
    @RequestMapping(value = "book", method = RequestMethod.GET)
    public String BookEventRoute() {
        return "bookEvent";
    }
    
    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String createNewEvent() {
        return "eventCreation";
    }

}
