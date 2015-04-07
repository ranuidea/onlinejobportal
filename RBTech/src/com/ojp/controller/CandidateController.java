package com.ojp.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ojp.action.CandidateAction;
import com.ojp.modal.Candidate;

@Controller
@RequestMapping("/candidate")
public class CandidateController {

	public CandidateController(){
	      System.out.println("init CandidateController");
	  }
	
	@RequestMapping(value="get", method = RequestMethod.GET)
	  public @ResponseBody List<Candidate> get(HttpServletResponse res) {
			
		System.out.println("inside get");
	      return new CandidateAction().getAllCandidate();
		  //return "redirect:finalPage";
	  }
}
