package com.ojp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ojp.modal.JobRequirement;
import com.ojp.modal.PersonalDetail;
import com.ojp.service.CandidateService;
import com.ojp.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {

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

	      return "/company/home";
	   }
	
	@RequestMapping(value = "/new_requirement", method = RequestMethod.GET)
	public String newRequirement(ModelMap model) {
		
		return "/company/new_requirement";
	}
	
	@Autowired
	private CompanyService companyService;
	@RequestMapping(value = "/saveJobRequirement", method = RequestMethod.POST)
	public String saveCompanyRequirement(
			@Valid @ModelAttribute JobRequirement jobRequirement,
			BindingResult result, ModelMap model, RedirectAttributes attr) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		Boolean pd = companyService.saveJobRequirementDetails(jobRequirement, userName);
		if (pd == false) {
			attr.addFlashAttribute("error", "true");
			return "redirect:/company/new_requirement";
		}
		return "redirect:/company/home";
		
	}
	
	@RequestMapping(value = "/all_requirements", method = RequestMethod.GET)
	public String allRequirement(ModelMap model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		List<JobRequirement> lst = companyService.getAllRequirementDetails(userName);
		model.addAttribute("listRequirement", lst);
		return "/company/all_requirements";
	}
	
	@RequestMapping(value = "/deleteJobRequirement", method = RequestMethod.POST)
	@ResponseBody
	public String deleteCompanyRequirement(@RequestBody int jobId,
			@Valid @ModelAttribute JobRequirement jobRequirement,
			BindingResult result, ModelMap model, RedirectAttributes attr) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		System.out.println(jobId);
		Boolean pd = companyService.deleteJobRequirementDetails(jobId, userName);
		if (pd == false) {
			attr.addFlashAttribute("error", "true");
			return "/company/all_requirements";
		}
		return "/company/all_requirements";
		
	}
	
	@RequestMapping(value = "/edit_requirement", method = RequestMethod.GET)
	public String editRequirement(@RequestParam("jobId") int jobId, ModelMap model) {
		System.out.println(jobId);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		JobRequirement jobRequirement = companyService.getJobRequirementDetailsById(jobId, userName);
		model.addAttribute("jobRequirement", jobRequirement);
		return "/company/edit_requirement";
	}
	
	@RequestMapping(value = "/editJobRequirement", method = RequestMethod.POST)
	public String editCompanyRequirement(
			@Valid @ModelAttribute JobRequirement jobRequirement,
			BindingResult result, ModelMap model, RedirectAttributes attr) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		Boolean pd = companyService.editJobRequirementDetails(jobRequirement, userName);
		if (pd == false) {
			attr.addFlashAttribute("error", "true");
			return "redirect:/company/edit_requirement";
		}
		System.out.println(jobRequirement.getJobId());
		return "redirect:/company/all_requirements";
		
	}

}
