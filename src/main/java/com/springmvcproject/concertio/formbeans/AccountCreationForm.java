package com.springmvcproject.concertio.formbeans;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.ScriptAssert;

/**
 * An account form for creating a user account
 * 
 * @author spaceofmiah
 *
 */

@ScriptAssert(
		lang="javascript",
		script="_this.confirmPassword.equals(_this.password)",
		message="account.password.mismatch.message")
public class AccountCreationForm {

	private String firstName;
	private String middleName;
	private String LastName;
	private String email;
	private String password;
	private String confirmPassword;
	private Boolean acceptTerms = false;

	@NotNull	@Size(min=1, max=100)
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	// middle name is not really important during registration
	// it can be updated after registration
	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	@NotNull 	@Size(min=1, max=100)
	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	@NotNull	@Size(min=1, max=100)	 @Email
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@NotNull	@Size(min=6, max=100)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@AssertTrue(message="{account.acceptTerms.assertTrue.message}")
	public Boolean getAcceptTerms() {
		return acceptTerms;
	}

	public void setAcceptTerms(Boolean acceptTerms) {
		this.acceptTerms = acceptTerms;
	}

}
