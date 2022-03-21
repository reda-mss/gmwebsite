package com.goldmancab.website.mail;

public class MailMessage {

	private String from;
    private String to;
    private String subject;
    private String message;
    
    public MailMessage() {
	}
    
    public MailMessage(String from, String to, String subject, String message) {
    	this.from = from;
    	this.to = to;
    	this.subject = subject;
    	this.message = message;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
    
	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
        builder.append("Mail [from=").append(from).append("]").append("[to=").append(to).append("]")
        		.append("[subject=").append(subject).append("]").append("[message=").append(message).append("]");
        return builder.toString();
	}
    
}
