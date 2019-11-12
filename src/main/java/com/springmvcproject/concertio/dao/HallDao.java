package com.springmvcproject.concertio.dao;

import java.util.List;

import com.springmvcproject.concertio.models.Hall;
import com.springmvcproject.concertio.models.Image;

public interface HallDao extends Dao<Hall> {
	
	void createHall(Hall hall, Image img);
	
	Hall findHallByName(String name);
	
	List<Hall> getAllImages(Integer id);

}
