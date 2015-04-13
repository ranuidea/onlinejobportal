package com.ojp.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import com.ojp.action.CandidateAction;
import com.ojp.dao.CandidateDAO;
import com.ojp.modal.Candidate;

@Controller
@RequestMapping("/candidate")
public class CandidateController {

	public CandidateController(){
	      System.out.println("init CandidateController");
	  }
	
	@Autowired  
	 private CandidateAction candidateAction;
	@RequestMapping(value="show", method = RequestMethod.GET)
	  public String show(ModelMap model) {
		System.out.println("inside get");
	      List<Candidate> lst = candidateAction.getAllCandidate();
	      //ModelAndView mv = new ModelAndView("/candidate/show"); 
	      model.addAttribute("lst", lst);
	      return "/candidate/show";
		  //return "redirect:finalPage";
	  }
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String candidateHome(Model model) {
	     //return new ModelAndView("home", "command", new Candidate());
	      model.addAttribute("command",new Candidate());
	      return "/candidate/home";
	   }
	
	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	   public String addStudent(@ModelAttribute Candidate candidate, 
	   ModelMap model) {
		candidateAction.addCandidate(candidate);
		System.out.println(candidate.getId());
		System.out.println(candidate.getName());
	      model.addAttribute("name", candidate.getName());
	      model.addAttribute("age", candidate.getAge());
	     model.addAttribute("id", candidate.getId());
	     model.addAttribute("address", candidate.getAddress());
	     model.addAttribute("id", candidate.getQualification());
	      return showAll(model);
	      //return "result";
	   }
	
	public String showAll(ModelMap model)
	{
		List<Candidate> lst = candidateAction.getAllCandidate();
	      //ModelAndView mv = new ModelAndView("/candidate/show"); 
	      model.addAttribute("lst", lst);
	      return "/candidate/show";
	}
}
