package com.springmvcproject.concertio.service;

import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;

import com.springmvcproject.concertio.models.Image;




public interface ImageService {

	Image addNewImage(MultipartFile file, Errors error);
}
