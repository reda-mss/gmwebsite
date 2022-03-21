package com.goldmancab.website.web.modal;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.support.RequestContextUtils;

public class Langage implements Serializable {
	private static final long serialVersionUID = -2027718599528718386L;
	
	private final String lang;
	
	public Langage(HttpServletRequest request) {
		lang = RequestContextUtils.getLocale(request).getLanguage();
	}

	public String getLang() {
		return lang;
	}
	
	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("Language [lang=").append(lang).append("]");
		return builder.toString();
	}

}
