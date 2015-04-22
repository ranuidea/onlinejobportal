package com.ojp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ojp.modal.User;

@Controller
public class LoginController {

	@RequestMapping(value="/main", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, User user ) {
	 
	String name = user.getUserName();
	model.addAttribute("username", name);
	return "main_page";
	 
	}
	 
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
	 
	return "login";
	 
	}
	 
	@RequestMapping(value="/loginError", method = RequestMethod.GET)
	public String loginError(ModelMap model, RedirectAttributes attr) {
	attr.addFlashAttribute("error", "true");
	return "redirect:login";
	 
	}
}
