package com.ojp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ojp.dao.CandidateDAO;
import com.ojp.modal.Candidate;
import com.ojp.service.CandidateService;

@Controller
@RequestMapping("/candidate")
public class CandidateController {

	public CandidateController(){
	      System.out.println("init CandidateController");
	  }
	
	@Autowired  
	 private CandidateService candidateService;
	@RequestMapping(value="show", method = RequestMethod.GET)
	  public String show(ModelMap model) {
		System.out.println("inside get");
	      List<Candidate> lst = candidateService.getAllCandidate();
	      //ModelAndView mv = new ModelAndView("/candidate/show"); 
	      model.addAttribute("lst", lst);
	      return "/candidate/show";
		  //return "redirect:finalPage";
	  }
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String candidateHome(Model model, HttpServletRequest request) {
	     //return new ModelAndView("home", "command", new Candidate());
		if(!model.containsAttribute("command")){
	      model.addAttribute("command",new Candidate());
	      Object principal = SecurityContextHolder.getContext()
				     .getAuthentication().getPrincipal();
				HttpSession session = request.getSession(true); //create a new session

				// put the UserDetails object here.
				session.setAttribute("userDetails", principal);

		}
	      return "/candidate/home";
	   }
	
	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	   public String addStudent(@Valid @ModelAttribute("command") Candidate candidate, BindingResult result,
	   ModelMap model, RedirectAttributes attr) {
	    
		if (result.hasErrors()) {
			attr.addFlashAttribute("org.springframework.validation.BindingResult.command", result);
		    attr.addFlashAttribute("command", candidate);
            return "redirect:/candidate/home";
        }
		candidateService.addCandidate(candidate);
		return "redirect:/candidate/show";
	   }
}
