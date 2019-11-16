package com.springmvcproject.concertio.service.impl;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.ObjectFactory;
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
	ObjectFactory<HttpSession> httpSession;
	
	
	@Override
	public Image addNewImage(MultipartFile file, String parentHall, Errors error) {
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		Image newImage = new Image();
		
		try {
			newImage.setFileName(fileName);
			newImage.setFileType(file.getContentType());
			newImage.setImage(file.getBytes());
			
			parentHall = parentHall.toLowerCase().replaceAll("\\s+", "");
			System.out.println(parentHall);
			String path_to_save_image = httpSession.getObject().getServletContext().getRealPath("/").toString() + 
					 "event-images" + File.separator + "" +  parentHall.toString() + "";
			
			File fileObject = new File(path_to_save_image);
			if (fileObject.mkdir()) {
				
				fileObject = new File(path_to_save_image + "" + File.separator + "" + fileName);
				
				try(FileOutputStream outputStream = new FileOutputStream(fileObject)) {
					
					BufferedImage bufferedImage = ImageIO.read(file.getInputStream());
					ImageIO.write(bufferedImage, "", outputStream);
					System.out.println("Image file location: "+ fileObject.getCanonicalPath());
					
				} catch (IOException e) {
					System.out.println("Error saving image to directory \n\n\n" + e);
				}
				
			}
			else {
				System.out.println("Directory not created");
			}
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return newImage;
	}

}
