package com.goldmancab.website.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.goldmancab.website.web.modal.Langage;

@ControllerAdvice
public class GlobalController {

	private HttpServletRequest request;
	
	@Autowired
	public GlobalController(HttpServletRequest request) {
		this.request = request;
	}
	
	@ModelAttribute("langage")
	public Langage getLangauge() {
		return new Langage(request);
	}
	
}
