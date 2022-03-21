package com.goldmancab.website.mail;

public interface IEmailSender {

	void sendMessage(MailMessage mailMessage);
	
	void sendMessageWithGrid(MailMessage mailMessage);
	
	
	
	
}
