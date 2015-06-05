package com.ojp.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ojp.modal.Candidate;
import com.ojp.modal.EducationalDetail;
import com.ojp.modal.PersonalDetail;
import com.ojp.modal.ProfessionalDetail;
import com.ojp.modal.UploadedFile;
import com.ojp.service.CandidateService;
import com.ojp.validator.FileValidator;

@Controller
public class UploadController {

	@RequestMapping(value = "/upload/personal", method = RequestMethod.GET)
	public String personal(ModelMap model) {
		//model.addAttribute("mo", "");
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String userName = auth.getName();

		PersonalDetail personalDetail = candidateService.getCandidatePersonalDetailByUserName(userName);
		model.addAttribute("personalDetail", personalDetail);
		return "/upload/personal";

	}

	@Autowired
	private CandidateService candidateService;

	@RequestMapping(value = "/upload/savePersonalDetails", method = RequestMethod.POST)
	public String savePersonalDetails(
			@Valid @ModelAttribute PersonalDetail personalDetail,
			BindingResult result, ModelMap model, RedirectAttributes attr) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String userName = auth.getName();
		Boolean pd = candidateService.saveCandidatePersonalDetails(
				personalDetail, userName);
		if (pd == false) {
			attr.addFlashAttribute("error", "true");
			return "redirect:/upload/personal";
		}
		return "redirect:/upload/educational";
		// if (result.hasErrors()) {
		// attr.addFlashAttribute("org.springframework.validation.BindingResult.command",
		// result);
		// attr.addFlashAttribute("command", candidate);
		// return "redirect:/candidate/home";
		// }
		// candidateService.addCandidate(candidate);
		// return "redirect:/candidate/show";
	}

	@RequestMapping(value = "/upload/educational", method = RequestMethod.GET)
	public String educational(ModelMap model) {
		//model.addAttribute("mo", "");
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String userName = auth.getName();

		EducationalDetail educationalDetail = candidateService.getCandidateEducationalDetailByUserName(userName);
		model.addAttribute("educationalDetail", educationalDetail);

		return "/upload/educational";

	}
	
	@RequestMapping(value = "/upload/saveEducationalDetails", method = RequestMethod.POST)
	public String saveEducationalDetails(
			@Valid @ModelAttribute EducationalDetail educationalDetail,
			BindingResult result, ModelMap model, RedirectAttributes attr) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String userName = auth.getName();
		Boolean pd = candidateService.saveCandidateEducationalDetails(educationalDetail, userName);
		if (pd == false) {
			attr.addFlashAttribute("error", "true");
			return "redirect:/upload/educational";
		}
		return "redirect:/upload/professional";
		// if (result.hasErrors()) {
		// attr.addFlashAttribute("org.springframework.validation.BindingResult.command",
		// result);
		// attr.addFlashAttribute("command", candidate);
		// return "redirect:/candidate/home";
		// }
		// candidateService.addCandidate(candidate);
		// return "redirect:/candidate/show";
	}
	
	@RequestMapping(value = "/upload/professional", method = RequestMethod.GET)
	public String professional(ModelMap model) {
		//model.addAttribute("mo", "");
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String userName = auth.getName();

		ProfessionalDetail professionalDetail = candidateService.getCandidateProfessionalDetailByUserName(userName);
		model.addAttribute("professionalDetail", professionalDetail);

		return "/upload/professional";

	}
	
	@RequestMapping(value = "/upload/saveProfessionalDetails", method = RequestMethod.POST)
	public String saveProfessionalDetails(
			@Valid @ModelAttribute ProfessionalDetail professionalDetail,
			BindingResult result, ModelMap model, RedirectAttributes attr) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String userName = auth.getName();
		Boolean pd = candidateService.saveCandidateProfessionalDetails(professionalDetail, userName);
		if (pd == false) {
			attr.addFlashAttribute("error", "true");
			return "redirect:/upload/professional";
		}
		System.out.println(professionalDetail.getOrganization());
		
		return "redirect:/upload/upload_resume";
		// if (result.hasErrors()) {
		// attr.addFlashAttribute("org.springframework.validation.BindingResult.command",
		// result);
		// attr.addFlashAttribute("command", candidate);
		// return "redirect:/candidate/home";
		// }
		// candidateService.addCandidate(candidate);
		// return "redirect:/candidate/show";
	}
	
	@RequestMapping(value = "/upload/upload_resume", method = RequestMethod.GET)
	public String uploadResume(ModelMap model) {
		model.addAttribute("mo", "");
		return "/upload/upload_resume";

	}
	
	 @Autowired  
	 FileValidator fileValidator; 
	@RequestMapping(value = "/upload/fileUpload", method = RequestMethod.POST)
	public String fileUploaded(
			@Valid @ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {
		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadedFile.getFile();
		fileValidator.validate(uploadedFile, result);

		String fileName = file.getOriginalFilename();
		
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String userName = auth.getName();
		String arr [] = fileName.split("\\.");
		fileName = userName+""+new Date().getTime()+"."+arr[1];
		System.out.println(fileName);
		
		if (result.hasErrors()) {
			return "redirect:/upload/upload_resume";
		}

		try {
			inputStream = file.getInputStream();

			File newFile = new File("C:/Users/ricky/Desktop/" + fileName);
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
			outputStream.close();
			candidateService.saveUploadResume(fileName, userName);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/candidate/home";
	}  



}
