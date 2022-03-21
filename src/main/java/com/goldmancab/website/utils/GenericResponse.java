package com.goldmancab.website.utils;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;

public class GenericResponse {

	private String message;
    private String error;
    
    public GenericResponse() {
	}
    
    public GenericResponse(final String message) {
        this.message = message;
    }

    public GenericResponse(final String message, final String error) {
        this.message = message;
        this.error = error;
    }
    
    public GenericResponse(List<ObjectError> allErrors, String error) {
    	this.error = error;
    	String temp = allErrors.stream().map(e -> {
    		if (e instanceof FieldError) {
    			return "{\"field\":\"" + ((FieldError) e).getField() + "\",\"defaultMessage\":\"" + e.getDefaultMessage() + "\"}";
    		} else {
    			return "{\"object\":\"" + e.getObjectName() + "\",\"defaultMessage\":\"" + e.getDefaultMessage() + "\"}";
    		}
    	}).collect(Collectors.joining(","));
    	this.message = "[" + temp + "]";
    }
    
    public String getMessage() {
		return message;
	}
    
    public void setMessage(String message) {
		this.message = message;
	}
    
    public String getError() {
		return error;
	}
    
    public void setError(String error) {
		this.error = error;
	}
    
    @Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
        builder.append("GenericResponse [message=").append(message).append(", error=").append(error).append("]");
        return builder.toString();
	}
    
	
}
