package com.springmvcproject.concertio.services.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springmvcproject.concertio.models.Hall;
import com.springmvcproject.concertio.services.AdminService;


@Service("adminService")
public class AdminServiceImpl implements AdminService {

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
