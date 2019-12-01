package com.springmvcproject.concertio.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;

import com.springmvcproject.concertio.dao.HallDao;
import com.springmvcproject.concertio.models.Hall;
import com.springmvcproject.concertio.models.Image;
import com.springmvcproject.concertio.service.HallService;

@Transactional
@Service("hallService")
public class HallServiceImpl implements HallService {
	
	@Autowired 
	private HallDao hallDao;

	@Override
	public boolean createNewHall(Hall hall, Image img, Errors error) {
		boolean valid = !error.hasErrors();
		if(valid) {
			hallDao.createHall(hall, img);
		}
		return valid;
	}

	@Override
	public List<Hall> getAllHalls() {
		return hallDao.getAll();
	}
	
	@Override
	public void addImage(Hall hall, Errors error) {
		// TODO Auto-generated method stub
	}	

}
