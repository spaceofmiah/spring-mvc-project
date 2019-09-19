/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvcproject.models;

import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author spaceofmiah
 */

@Entity
@Table(name="Hall")
public class Hall {
    
    @Id
    @GeneratedValue(generator="increment")
    @GenericGenerator(name="increment", strategy="increment")
    @Column(name="id")
    private Integer id;
    
    @NotNull
    
    @Column(name="name")
    private String name;
    
    @NotNull
    @Column(name="price")
    private Integer price;
    
    @NotNull
    @Column(name="capacity")
    private Integer capactiy;
    
    @NotNull
    @Column(name="location")
    private String location;
     
    @Column(name="parking_space")
    private Boolean parkingSpace;
    
    @Column(name="is_booked")
    private Boolean isBooked;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getCapactiy() {
		return capactiy;
	}

	public void setCapactiy(Integer capactiy) {
		this.capactiy = capactiy;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Boolean getParkingSpace() {
		return parkingSpace;
	}

	public void setParkingSpace(Boolean parkingSpace) {
		this.parkingSpace = parkingSpace;
	}

	public Boolean getIsBooked() {
		return isBooked;
	}

	public void setIsBooked(Boolean isBooked) {
		this.isBooked = isBooked;
	}
}
