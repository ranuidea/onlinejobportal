package com.ojp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ojp.modal.Contact;
import com.ojp.modal.User;
import com.ojp.service.UserService;

@Controller
public class RegistrationController {

	/*@RequestMapping(value = "/user/registration", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
	    User user = new User();
	    model.addAttribute("user", user);
	    return "/user/registration";
	}*/
	@Autowired
	UserService service;
	/*@RequestMapping(value = "/user/registration", method = RequestMethod.POST)
	public ModelAndView registerUserAccount(@ModelAttribute("user") @Valid User accountDto, 
	      BindingResult result, WebRequest request, Errors errors) {    
		User registered = new User();
	    if (!result.hasErrors()) {
	        registered = createUserAccount(accountDto, result);
	    }
	    if (registered == null) {
	        result.rejectValue("email", "message.regError");
	    }
	    if (result.hasErrors()) {
	        return new ModelAndView("registration", "user", accountDto);
	    } 
	    else {
	        return new ModelAndView("successRegister", "user", accountDto);
	    }
	    // rest of the implementation
	}*/
	private User createUserAccount(User user, BindingResult result) {
	    User registered = null;
	    try {
	        registered = service.registerNewUserAccount(user);
	    } catch (Exception e) {
	        return null;
	    }    
	    return registered;
	}
	
	@RequestMapping(value = "/user/single_sign_up", method = RequestMethod.GET)
	public String oneSignUp(Model model) {
	    //User user = new User();
	    //model.addAttribute("user", user);
	    return "/user/single_sign_up";
	}
	
	@RequestMapping(value = "/user/single_sign_up", method = RequestMethod.POST)
	public String userSelect(@RequestParam(value = "userType") String approveOrDeny, Model model) {
	    //User user = new User();
	    //model.addAttribute("user", user);
	    
	    if (approveOrDeny.equalsIgnoreCase("candidate")) {
	    	return "redirect:/user/candidate_registration";
	    } else if (approveOrDeny.equalsIgnoreCase("consaltancy")) {
	    	return "/user/consaltancy_registration";
	    } else {
	    	return "/user/company_registration";
	    }
	}
	
	@RequestMapping(value = "/user/candidate_registration", method = RequestMethod.GET)
	public String candidateRegistration(Model model) {
		if(!model.containsAttribute("user"))
			model.addAttribute("user",new User());
		      return "/user/candidate_registration";
	}
	
	@Autowired @Qualifier("authenticationManager") private AuthenticationManager authenticationManager;
	@RequestMapping(value="/user/candidateRegister", method = RequestMethod.POST)
	  public String show(@Valid @ModelAttribute("user") User user, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,BindingResult result, ModelMap model,
			  RedirectAttributes attr, HttpServletRequest request) {
		
		System.out.println(firstName);
		if (!result.hasErrors()) {
	        User registeredUser = service.registerNewCandidateUserAccount(user, firstName, lastName);
	        if(registeredUser==null)
	        {
	        	attr.addFlashAttribute("error", "true");
	        	return "redirect:/user/candidate_registration";
	        }
	        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(user.getUserName(), user.getPassword());
			Authentication auth = authenticationManager.authenticate(token);
			if(auth.isAuthenticated()) {
		        SecurityContextHolder.getContext().setAuthentication(auth);
		        request.getSession().setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, SecurityContextHolder.getContext());
		        return "redirect:/candidate/home";
		      }
	    }
		
		attr.addFlashAttribute("error", "true");
		return "redirect:/user/candidate_registration";
		}
}
