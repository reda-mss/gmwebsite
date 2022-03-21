package com.goldmancab.website.mail;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.sendgrid.Content;
import com.sendgrid.Email;
import com.sendgrid.Mail;
import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;

@Service
public class EmailSender implements IEmailSender {

	
	@Value("${spring.sendgrid.api-key}")
    private String sendGridAPIKey;
	
	private JavaMailSender jMailSender;
	private SendGrid sendgrid;
	
	
	@Autowired
	public EmailSender(JavaMailSender jMailSender, SendGrid sendgrid) {
		this.jMailSender = jMailSender;
		this.sendgrid = sendgrid;
	}
	
	@Override
	public void sendMessage(final MailMessage mailMessage) {
		final SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setFrom(mailMessage.getFrom());
		simpleMailMessage.setTo(mailMessage.getTo());
		simpleMailMessage.setSubject(mailMessage.getSubject());
		simpleMailMessage.setText(mailMessage.getMessage());
		simpleMailMessage.setSentDate(new Date());
		jMailSender.send(simpleMailMessage);
	}
	
	private final Response sendEmail(String from, String to, String subject, Content content) {
		final Mail mail = new Mail(new Email(from), subject, new Email(to), content);
		Request request = new Request();
        Response response = null;
        try {
            request.setMethod(Method.POST);
            request.setEndpoint("mail/send");
            request.setBody(mail.build());
            this.sendgrid.api(request);
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }
        return response;
	}
	
	@Override
	public void sendMessageWithGrid(final MailMessage mailMessage) {
		final Response response = sendEmail(mailMessage.getFrom(), mailMessage.getTo(), 
				mailMessage.getSubject(), new Content("text/plain", mailMessage.getMessage()));
		if(response != null) {
			System.out.println(response.getStatusCode());
		}
	}
	
}
