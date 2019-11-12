package com.springmvcproject.concertio.models;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="image_field")
public class Image {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=IDENTITY)
	private Integer id;
	
	
	@Column(name="file_name")
	private String fileName;
	
	
	@Column(name="file_type")
	private String fileType;
	
	
	@Lob 
	@Basic(fetch = FetchType.LAZY)
    @Column(name="image", nullable=false)
    private byte[] image;
	
	/**
	 * Many Images to One Hall
	 */
	@ManyToOne
    @JoinColumn(name ="hall_id")
    private Hall hall;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Hall getHall() {
		return hall;
	}

	public void setHall(Hall hall) {
		this.hall = hall;
	}
	
	public String toString() {
		return "<Imagefield: " + this.getFileName() + " :: " + this.getImage()  + ">";
	}
}
