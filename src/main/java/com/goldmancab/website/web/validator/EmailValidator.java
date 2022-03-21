package com.goldmancab.website.web.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class EmailValidator implements ConstraintValidator<ValidEmail, String> {

	private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	
	@Override
	public void initialize(ValidEmail constraintAnnotation) {
	}
	
	@Override
	public boolean isValid(final String email, ConstraintValidatorContext context) {
		Matcher matcher = Pattern.compile(EMAIL_PATTERN).matcher(email);
        return matcher.matches();
	}

}
