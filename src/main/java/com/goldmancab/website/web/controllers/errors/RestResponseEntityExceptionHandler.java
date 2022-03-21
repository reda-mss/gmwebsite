package com.goldmancab.website.web.controllers.errors;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailAuthenticationException;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.ServletWebRequest;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.goldmancab.website.utils.GenericResponse;

@ControllerAdvice
public class RestResponseEntityExceptionHandler extends ResponseEntityExceptionHandler {

	
    private MessageSource messages;
	
    @Autowired
	public RestResponseEntityExceptionHandler(MessageSource messages) {
    	this.messages = messages;
	}
	
	private Locale castLocale(final WebRequest request) {
		return RequestContextUtils.getLocale(((ServletWebRequest) request).getRequest());
	}
	
	@Override
	protected ResponseEntity<Object> handleBindException(final BindException ex, final HttpHeaders headers, final HttpStatus status,
			final WebRequest request) {
		final BindingResult result = ex.getBindingResult();
		final GenericResponse bodyOfResponse = new GenericResponse(result.getAllErrors(), "Invalid" + result.getObjectName());
		return handleExceptionInternal(ex, bodyOfResponse, new HttpHeaders(), HttpStatus.BAD_REQUEST, request);
	}
	
	@Override
	protected ResponseEntity<Object> handleMethodArgumentNotValid(final MethodArgumentNotValidException ex,
			final HttpHeaders headers, final HttpStatus status, final WebRequest request) {
		final BindingResult result = ex.getBindingResult();
        final GenericResponse bodyOfResponse = new GenericResponse(result.getAllErrors(), "Invalid" + result.getObjectName());
        return handleExceptionInternal(ex, bodyOfResponse, new HttpHeaders(), HttpStatus.BAD_REQUEST, request);
	}
	
	@ExceptionHandler({MailAuthenticationException.class})
	public ResponseEntity<Object> handleMail(final RuntimeException ex, final WebRequest request) {
		final GenericResponse bodyOfResponse = new GenericResponse(messages.getMessage("message.error.email", null, 
				castLocale(request)), "Internal");
		return new ResponseEntity<Object>(bodyOfResponse, new HttpHeaders(), HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@ExceptionHandler({Exception.class})
	public ResponseEntity<Object> handleInternal(final RuntimeException ex, final WebRequest request) {
		final GenericResponse bodyOfResponse = new GenericResponse(messages.getMessage("message.error.internal", null, 
				castLocale(request)), "Internal");
		ex.printStackTrace();
		return new ResponseEntity<Object>(bodyOfResponse, new HttpHeaders(), HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	
}
