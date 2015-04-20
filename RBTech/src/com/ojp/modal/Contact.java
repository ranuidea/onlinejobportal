package com.ojp.modal;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

public class Contact {

	@NotEmpty
	private String name;
	@NotEmpty @Email
	private String email;
	@Length(max=10,min=10,message="Phone number is not valid. Should be of length 10.")
	@NotEmpty(message="Phone field is mendatory.") @NumberFormat(style= Style.NUMBER)
	private String mobileNo;
	@NotEmpty
	private String comment;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
