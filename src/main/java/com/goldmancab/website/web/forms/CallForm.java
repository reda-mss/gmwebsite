package com.goldmancab.website.web.forms;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import com.goldmancab.website.web.validator.ValidPhone;

public class CallForm implements Serializable {
	private static final long serialVersionUID = -1640524521062972645L;

	@ValidPhone
	@NotNull
	private String number;
	
	public CallForm() {
	}

	public String getNumber() {
		return number;
	}
	
	public void setNumber(String number) {
		this.number = number;
	}
	
	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
        builder.append("CallForm [number=").append(number).append("]");
        return builder.toString();
	}
	
}
