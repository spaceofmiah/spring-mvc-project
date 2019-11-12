package com.springmvcproject.concertio.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springmvcproject.concertio.formbeans.HallCreationForm;
import com.springmvcproject.concertio.models.Hall;
import com.springmvcproject.concertio.models.Image;
import com.springmvcproject.concertio.service.HallService;
import com.springmvcproject.concertio.service.ImageService;


@Controller
@RequestMapping(value="/hall")
public class HallController {
	
	@Autowired
	HallService hallService;
	
	@Autowired
	ImageService imageService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
    public String eventListRoute() {
        return "hallList";
    }
	
	
    @RequestMapping(value = "book", method = RequestMethod.GET)
    public String BookEventRoute() {    	
        return "bookEvent";
    }
    
    
    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String getHallCreationForm(Model model) {
    	model.addAttribute("hallForm", new HallCreationForm());
    	return "eventCreation";
    }
    
    @RequestMapping(value="", method= RequestMethod.POST, headers=("content-type=multipart/*"))
    public String postHallCreationForm(
    		@ModelAttribute("hallForm") @Valid HallCreationForm form,
    		@RequestParam("file") MultipartFile file,
    		BindingResult results) {
    	
    	// convert form object to hall
    	Hall hall = toHall(form);    	
    	
    	// create image from multipart file
    	Image image = imageService.addNewImage(form.getFile(), hall.getName(), results);
    	
    	// create a new hall
    	boolean created = hallService.createNewHall(hall, image, results);
    	
    	if (created) {    		
    		return "redirect:/";
    	}
    	
    	return "eventCreation";
    }
    
    
    private static Hall toHall(HallCreationForm form) {
    	Hall newHall = new Hall();
    	newHall.setName(form.getName());
    	newHall.setLocation(form.getLocation());
    	newHall.setPrice(form.getPrice());
    	newHall.setParkingSpace(form.getParkingSpace());
    	newHall.setCapactiy(form.getCapacity());
    	return newHall;
    }

}
