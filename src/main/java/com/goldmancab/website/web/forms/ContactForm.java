package com.goldmancab.website.web.forms;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

import com.goldmancab.website.web.validator.ValidEmail;
import com.goldmancab.website.web.validator.ValidPhone;

public class ContactForm implements Serializable {
	private static final long serialVersionUID = -6609680429188832144L;

	@NotNull
	@Size(min = 3, message = "{message.input.lenght}")
	private String name;
	
	@ValidEmail
	@NotNull
    @Size(min = 1, message = "{message.input.lenght}")
    private String email;
	
	@ValidPhone
	@NotNull
	private String phone;
	
	@NotNull
	@Length(min = 3, max = 512, message = "{message.input.lenght}")
	private String message;
	
	public ContactForm() {
	}

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
        builder.append("ContactForm [name=").append(name).append(", email=").append(email)
        		.append(", phone=").append(phone).append(", message=").append(message).append("]");
        return builder.toString();
	}

}
