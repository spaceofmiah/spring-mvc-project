package com.springmvcproject.concertio.models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

import static javax.persistence.GenerationType.IDENTITY;



@NamedQueries({
	@NamedQuery(
			name = "findAccountByEmail",
			query = "from Account where email = :email"
	),
	
	@NamedQuery(
			name = "getAllRoles",
			query = "from Account a join Role r on a.id = r.account.id where email = :email"
	)
})
@Entity
@Table(name="Account")
public class Account {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=IDENTITY)
	private Long id;
	
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
	
	@Null
	@Column(name="date_joined")
	private Date dateJoined;
	
	@Column(name="accept_terms")
	private boolean acceptTerms;
	
    @Column(name="enabled")
    private Boolean enabled = true;    
    
    @Column(name="password")
    private String password;
    
    @OneToMany(fetch=FetchType.LAZY, mappedBy="account")
    private List<Role> accountRole = new ArrayList<Role>();
    
    
    
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

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

	public Date getDateJoined() {
		return dateJoined;
	}

	public void setDateJoined(Date dateJoined) {
		this.dateJoined = dateJoined;
	}

	
	public boolean isAcceptTerms() {
		return acceptTerms;
	}

	public void setAcceptTerms(boolean acceptTerms) {
		this.acceptTerms = acceptTerms;
	}

	public Boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public List<Role> getAccountRole() {
		return accountRole;
	}

	public void setAccountRole(List<Role> accountRole) {
		this.accountRole = accountRole;
	}

	@Transient
	public String getFullName() {
		return this.firstName + " " + this.lastName;
	}
	
	public String toString() {
		return "<Account: " + this.getFullName() + " >";
	}
}
