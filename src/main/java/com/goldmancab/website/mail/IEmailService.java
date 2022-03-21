package com.goldmancab.website.mail;

import com.goldmancab.website.web.forms.CallForm;
import com.goldmancab.website.web.forms.ContactForm;

public interface IEmailService {

	MailMessage generateConatctEmail(ContactForm contactForm);
	
	MailMessage generateCallEmail(CallForm callForm);
	
}
