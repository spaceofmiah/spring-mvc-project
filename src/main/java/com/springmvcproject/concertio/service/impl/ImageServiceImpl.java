package com.springmvcproject.concertio.service.impl;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
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
	ServletContext servletContext;
	
	
	@Override
	public Image addNewImage(MultipartFile file, String parentHall, Errors error) {
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		Image newImage = new Image();
		
		try {
			newImage.setFileName(fileName);
			newImage.setFileType(file.getContentType());
			newImage.setImage(file.getBytes());
			
			String fileNameExt = fileName.substring(fileName.length() - 3);
			
			
			/**
			 * Saving uploaded file to base directory
			 * 
			 * -- converts event center name to be pattern allowed for directory name
			 * -- create path were uploaded image will be saved
			 * -- use the page to create a directory
			 * -- save the file 
			 */
		
			parentHall = parentHall.toLowerCase().replaceAll("\\s+", "");
			String path = "event-images" + File.separator + "" +  parentHall;
			String path_to_save_image = servletContext.getRealPath("/") + File.separator + "resources" +
						File.separator + path;
			
			/**
			 * -- save the url to image
			 */
			String imageUrl = path.toString() + File.separator + "" + fileName;
			newImage.setUrl(imageUrl);
			
			File fileObject = new File(path_to_save_image);
			boolean fileCreated = false;
			
			try {
				fileCreated = fileObject.mkdirs();
			}
			catch(Exception e) {
				System.out.println(e);
			}
			
			
			if (fileCreated) {
				
				fileObject = new File(path_to_save_image + "" + File.separator + "" + fileName);
				
				try(FileOutputStream outputStream = new FileOutputStream(fileObject)) {
					
					BufferedImage bufferedImage = ImageIO.read(file.getInputStream());
					ImageIO.write(bufferedImage, fileNameExt, outputStream);
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
