package com.springmvcproject.concertio.services;

import java.util.List;

import com.springmvcproject.concertio.models.Hall;


public interface HallService {
	List<Hall> findAll();
	Hall findByLocation(String location);
	Hall findById(Integer id);
}
