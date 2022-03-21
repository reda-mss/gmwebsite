package com.goldmancab.website.web.controllers;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goldmancab.website.mail.IEmailSender;
import com.goldmancab.website.mail.IEmailService;
import com.goldmancab.website.utils.GenericResponse;
import com.goldmancab.website.web.forms.CallForm;
import com.goldmancab.website.web.forms.ContactForm;
import com.goldmancab.website.web.sitemap.XmlUrl;
import com.goldmancab.website.web.sitemap.XmlUrlSet;

@Controller
public class HomeController {
	private final static String BASE_URL = "http://goldman-dev-website.cfapps.io";
	private final static String[] DOMAINES = {"about", "business-creation", "accounting-assistance", "legal", "tax", "social-audit", "contact-us"};
	
	
	private IEmailService emailService;
	private IEmailSender emailSender;
	
	
	@Autowired
	public HomeController(IEmailService emailService, IEmailSender emailSender) {
		this.emailService = emailService;
		this.emailSender = emailSender;
	}
	

	@ModelAttribute("contact")
    public ContactForm getContactForm() {
        return new ContactForm();
    }
	
	@ModelAttribute("call")
    public CallForm getCallForm() {
        return new CallForm();
    }
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(final Model model) {
		model.addAttribute("hasLoading", true);
		return "homeIndex";
	}
	
	@RequestMapping(value = "/contact-home", method = RequestMethod.POST)
	@ResponseBody
	public GenericResponse saveContact(@Valid final ContactForm contactForm) {
		//emailSender.sendMessage(emailService.generateConatctEmail(contactForm));
		emailSender.sendMessageWithGrid(emailService.generateConatctEmail(contactForm));
		return new GenericResponse("success");
	}
	
	@RequestMapping(value = "/call-home", method = RequestMethod.POST)
	@ResponseBody
	public GenericResponse saveCall(@Valid final CallForm callForm) {
		//emailSender.sendMessage(emailService.generateCallEmail(callForm));
		emailSender.sendMessageWithGrid(emailService.generateCallEmail(callForm));
		return new GenericResponse("success");
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String showAbout() {
		return "about";
	}
	
	@RequestMapping(value = "/business-creation", method = RequestMethod.GET)
	public String showJobs1() {
		return "jobs1";
	}
	
	@RequestMapping(value = "/accounting-assistance", method = RequestMethod.GET)
	public String showJobs2() {
		return "jobs2";
	}
	
	@RequestMapping(value = "/legal", method = RequestMethod.GET)
	public String showJobs3() {
		return "jobs3";
	}
	
	@RequestMapping(value = "/tax", method = RequestMethod.GET)
	public String showJobs4() {
		return "jobs4";
	}
	
	@RequestMapping(value = "/social-audit", method = RequestMethod.GET)
	public String showJobs5() {
		return "jobs5";
	}
	
	@RequestMapping(value = "/contact-us", method = RequestMethod.GET)
	public String showContact() {
		return "contactUS";
	}
	
	@RequestMapping(value = "/plan", method = RequestMethod.GET)
	public String showPlan() {
		return "plan";
	}
	
	@RequestMapping(value = "/mention", method = RequestMethod.GET)
	public String showMention() {
		return "mention";
	}
	
	/*@RequestMapping(value = "/sitemap.xml", method = RequestMethod.GET)
    @ResponseBody
    public FileSystemResource sitemap(final HttpSession httpSession) {
		try {
			WebSitemapGenerator sitemap = WebSitemapGenerator.builder(BASE_URL, new File("/")).build();
			for (String domaine : DOMAINES) {
				WebSitemapUrl urlPage = new WebSitemapUrl.Options(BASE_URL + "/" + domaine).lastMod(new Date())
						.priority(0.9).changeFreq(ChangeFreq.WEEKLY).build();
				sitemap.addUrl(urlPage);
			}
			WebSitemapUrl urlContact = new WebSitemapUrl.Options(BASE_URL + "/").lastMod(new Date())
					.priority(1.0).changeFreq(ChangeFreq.WEEKLY).build();
			sitemap.addUrl(urlContact);
			final List<File> write = sitemap.write();
			return new FileSystemResource(write.get(0));
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		return null;
	}*/
	
	private void create(XmlUrlSet xmlUrlSet, String link, XmlUrl.Priority priority) {
        xmlUrlSet.addUrl(new XmlUrl(BASE_URL + link, priority));
    }
	
	@RequestMapping(value = "/sitemap.xml", method = RequestMethod.GET)
    @ResponseBody
    public XmlUrlSet sitemap() {
		final XmlUrlSet xmlUrlSet = new XmlUrlSet();
		create(xmlUrlSet, "", XmlUrl.Priority.HIGH);
		for (String domaine : DOMAINES) {
			create(xmlUrlSet, "/" + domaine, XmlUrl.Priority.MEDIUM);
		}
		return xmlUrlSet;
	}
	
	@RequestMapping(value = {"/robots", "/robot", "/robot.txt", "/robots.txt", "/null"}, method = RequestMethod.GET)
	public void robot(final HttpServletResponse response) {
		InputStream resourceAsStream = null;
		try {
			ClassLoader classLoader = getClass().getClassLoader();
			resourceAsStream = classLoader.getResourceAsStream("robot.txt");
			response.addHeader("Content-disposition", "filename=robot.txt");
	        response.setContentType("text/plain");
	        response.setCharacterEncoding("UTF-8");
	        IOUtils.copy(resourceAsStream, response.getOutputStream());
	        response.flushBuffer();
		} catch (Exception e) {
			System.out.println("IndexController.Problem with displaying robot.txt : " + e.getMessage());
		} finally {
			try {
				resourceAsStream.close();
			} catch (IOException e) {e.printStackTrace();}
		}
	}
	
	
}
