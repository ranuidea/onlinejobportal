package com.ojp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/consaltancy")
public class ConsaltancyController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String companyHome(Model model, HttpServletRequest request) {
	     //return new ModelAndView("home", "command", new Candidate());
		//if(!model.containsAttribute("command"))
	      //model.addAttribute("command",new Candidate());
		
		Object principal = SecurityContextHolder.getContext()
			     .getAuthentication().getPrincipal();
			HttpSession session = request.getSession(true); //create a new session

			// put the UserDetails object here.
			session.setAttribute("userDetails", principal);
	      return "/consaltancy/home";
	   }
}
