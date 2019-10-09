package com.springmvcproject.concertio.services.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springmvcproject.concertio.models.Hall;
import com.springmvcproject.concertio.services.HallService;




@Service("hallService")
public class HallServiceImpl implements HallService {

	@Override
	public List<Hall> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Hall findByLocation(String location) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Hall findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

}
