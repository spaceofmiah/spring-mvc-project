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

    /**
     * non form handling controller
     */

    @RequestMapping(value = "book-hall", method = RequestMethod.GET)
    public String BookEventRoute() {
        return "bookEvent";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String aboutUsRoute() {
        return "about";
    }

    @RequestMapping(value = "services", method = RequestMethod.GET)
    public String serviceRoute() {
        return "";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexRoute() {
        return "";
    }
    
    @RequestMapping(value = "/event-list", method = RequestMethod.GET)
    public String eventListRoute() {
        return "hallList";
    }
    
}
