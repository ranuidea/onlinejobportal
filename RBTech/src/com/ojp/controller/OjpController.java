package com.ojp.controller;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ojp.modal.Contact;
import com.ojp.service.ContactService;

@Controller
public class OjpController {

	public OjpController(){
	      System.out.println("init OjpController");
	  }
	
	@Autowired  
	 private ContactService contactService;
	
	@RequestMapping(value="contact", method = RequestMethod.GET)
	  public String contact(ModelMap model) {
		if(!model.containsAttribute("command"))
		model.addAttribute("command",new Contact());
	      return "contact";
	  }
	
	@RequestMapping(value="contactSave", method = RequestMethod.POST)
	  public String show(@Valid @ModelAttribute("command") Contact contact, BindingResult result, ModelMap model,
			  RedirectAttributes attr) {
		
		if (result.hasErrors()) {
			attr.addFlashAttribute("org.springframework.validation.BindingResult.command", result);
		    attr.addFlashAttribute("command", contact);
            return "redirect:contact";
        }
			contactService.saveContact(contact);
			attr.addFlashAttribute("msg","Contacted Successfully");
			return "redirect:contact";
	  }
	
	
	@RequestMapping(value="about", method = RequestMethod.GET)
	  public String about() {
	      return "about";
	  }
}
