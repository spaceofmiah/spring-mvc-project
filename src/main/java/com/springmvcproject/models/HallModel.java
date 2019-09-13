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

import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author spaceofmiah
 */

@Entity
@Table(name="Halls")
public class HallModel {
    
    @Id
    @GeneratedValue(generator="increment")
    @GenericGenerator(name="increment", strategy="increment")
    @Column(name="id")
    private Integer id;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "is_booked")
    private Boolean is_booked;
    
    @Column(name = "price")
    private Integer price;
    
    @Column(name = "capacity")
    private Integer capactiy;
    
    @Column(name = "car_park")
    private Boolean car_park;

    
    
    
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

    public Boolean getIs_booked() {
        return is_booked;
    }

    public void setIs_booked(Boolean is_booked) {
        this.is_booked = is_booked;
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

    public Boolean getCar_park() {
        return car_park;
    }

    public void setCar_park(Boolean car_park) {
        this.car_park = car_park;
    }
    
}
