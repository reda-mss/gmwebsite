package com.goldmancab.website.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.goldmancab.website.web.forms.CallForm;
import com.goldmancab.website.web.forms.ContactForm;

@Service
public class EmailService implements IEmailService {
	private static final String EMAIL_TO = "creagoldman@gmail.com";
	private static final String OBJECT = "Conatct depuis le site GM Goldman";
	

	private Environment env;
    
    @Autowired
	public EmailService(Environment env) {
		this.env = env;
	}
    
    private final String generateContactMessage(final ContactForm contactForm) {
    	final StringBuilder builder = new StringBuilder();
    	builder.append("Nouvel contact depuis le site GM Goldman : [Java]\n")
    			.append("[nom = ").append(contactForm.getName()).append("]\n")
    			.append("[email = ").append(contactForm.getEmail()).append("]\n")
    			.append("[phone = ").append(contactForm.getPhone()).append("]\n")
    			.append("[message = ").append(contactForm.getMessage()).append("]\n");
        return builder.toString();
    }
    
    @Override
    public MailMessage generateConatctEmail(final ContactForm contactForm) {
    	//final String from = env.getProperty("support.email");
    	final String from = env.getProperty("spring.mail.username");
    	return new MailMessage(from, EMAIL_TO, OBJECT, generateContactMessage(contactForm));
    }
    
    private final String generateCallMessage(final CallForm callForm) {
    	final StringBuilder builder = new StringBuilder();
    	builder.append("Nouvel demande d'appel depuis le site GM Goldman : [Java]\n")
    			.append("[phone = ").append(callForm.getNumber()).append("]\n");
        return builder.toString();
    }
    
    @Override
    public MailMessage generateCallEmail(final CallForm callForm) {
    	//final String from = env.getProperty("support.email");
    	final String from = env.getProperty("spring.mail.username");
    	return new MailMessage(from, EMAIL_TO, OBJECT, generateCallMessage(callForm));
    }
    
	
}
