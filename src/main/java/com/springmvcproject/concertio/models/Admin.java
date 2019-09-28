package com.springmvcproject.concertio.models;

import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.validation.constraints.NotNull;

import static javax.persistence.GenerationType.IDENTITY;


@Entity
@Table(name="Admin")
public class Admin {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=IDENTITY)
	private Integer id;
	
	@NotNull
	@Column(name="email", unique=true)
	private String email;
	
	@NotNull
	@Column(name="last_name", length=100)
	private String lastName;
	
	@NotNull
	@Column(name="first_name", length=100)
	private String firstName;
	
	@Column(name="middle_name", length=100)
	private String middleName;
	
	@Column(name="phone_number", length=16)
	private String phoneNumber;
	
	@NotNull
	@Column(name="pass_key", length=100)
	private String password;
	
	@NotNull
	@Column(name="date_joined")
	private Date dateJoined;
	
    @Column(name="is_admin")
    private Boolean isAdmin;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String mobileNumber) {
		this.phoneNumber = mobileNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDateJoined() {
		return dateJoined;
	}

	public void setDateJoined(Date dateJoined) {
		this.dateJoined = dateJoined;
	}


}
