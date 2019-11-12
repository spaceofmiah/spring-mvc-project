package com.springmvcproject.concertio.service;

import org.springframework.validation.Errors;

import com.springmvcproject.concertio.models.Hall;
import com.springmvcproject.concertio.models.Image;

public interface HallService {
	
	/**
	 * Helps to create a new hall object
	 * @param hall
	 * @param error
	 */
	boolean createNewHall(Hall hall, Image img, Errors error);
	
	/**
	 * Include a new image to an existing hall object, as
	 * a hall can have more than one image representing different areas
	 * of the hall
	 * @param hall existing hall object
	 * @param error any error that may occur when processing this
	 */
	void addImage(Hall hall, Errors error);
	
}
