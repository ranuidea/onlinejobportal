package com.ojp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/consaltancy")
public class ConsaltancyController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String companyHome(Model model) {
	     //return new ModelAndView("home", "command", new Candidate());
		//if(!model.containsAttribute("command"))
	      //model.addAttribute("command",new Candidate());
	      return "/consaltancy/home";
	   }
}
