/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvcproject.concertio.models;

import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;

/**
 *
 * @author spaceofmiah
 */

@NamedQueries({
	@NamedQuery(
		name="findHallByName",
		query="from Hall where name = :name"
	),
	
	/**
	 * A very helpful link to fix error <Path expected for join>
	 * https://stackoverflow.com/questions/10448935/hql-error-path-expected-for-join
	 * @author spaceofmiah
	 */
	@NamedQuery(
		name="getAllImages",
		query="from Hall h join h.images i where h.id = :id"
	)
})
@Entity
@Table(name="Hall")
public class Hall {
    
    @Id
    @GeneratedValue(strategy=IDENTITY)
    @Column(name="id")
    private Integer id;
    
    @NotNull
    @Column(name="name")
    private String name;
    
    @NotNull
    @Column(name="price")
    private Float price;
    
    @NotNull
    @Column(name="capacity")
    private Integer capactiy;

    
    @Column(name="parking_space")
    private Boolean parkingSpace = true;
    
    
    @NotNull
    @Column(name="location")
    private String location;
    
    
    
    /**
     * One hall to many ImageField
     */
    @OneToMany(mappedBy = "hall", cascade = CascadeType.ALL, fetch=FetchType.EAGER)
    private Set<Image> images = new HashSet<Image>();
    
    
    // method to manage the bidirectional association
    public void addToImage(Image image) {
        this.images.add(image);
        image.setHall(this);
    }
        

	public Set<Image> getImages() {
		return images;
	}

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

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
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
	
	public String toString() {
		return "<Hall " + this.getName()  + ">";
	}
}
