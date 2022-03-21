package com.goldmancab.website.web.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneValidator implements ConstraintValidator<ValidPhone, String> {
	
	private static final String PHONE_PATTERN = "^[0-9\\+\\.\\ -]{8,30}$";

	@Override
	public void initialize(ValidPhone constraintAnnotation) {
	}
	
	@Override
	public boolean isValid(final String tel, ConstraintValidatorContext context) {
		Matcher matcher = Pattern.compile(PHONE_PATTERN).matcher(tel);
        return matcher.matches();
	}

	
}
