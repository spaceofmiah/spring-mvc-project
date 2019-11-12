package com.springmvcproject.concertio.service.impl;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;

import com.springmvcproject.concertio.dao.Dao;
import com.springmvcproject.concertio.models.Image;
import com.springmvcproject.concertio.service.ImageService;

@Service("imageService")
@Transactional
public class ImageServiceImpl implements ImageService {
	
	@Autowired
	Dao imageDao;
	
	
	@Override
	public Image addNewImage(MultipartFile file, Errors error) {
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		Image newImage = new Image();
		
		try {
			newImage.setFileName(fileName);
			newImage.setFileType(file.getContentType());
			newImage.setImage(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return newImage;
	}
	
	

}
