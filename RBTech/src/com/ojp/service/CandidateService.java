package com.ojp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ojp.dao.CandidateDAO;
import com.ojp.modal.Candidate;
import com.ojp.modal.EducationalDetail;
import com.ojp.modal.PersonalDetail;
import com.ojp.modal.ProfessionalDetail;

@Service("candidateService")
public class CandidateService {

	@Autowired  
	 private CandidateDAO candidateDAO;  
	  
	public List<Candidate> getAllCandidate()
	{
		return candidateDAO.getAllCandidate();
	}
	
	public Boolean addCandidate(Candidate candidate)
	{
		return candidateDAO.addCandidate(candidate);
	}
	
	public Boolean saveCandidatePersonalDetails(PersonalDetail personalDetail, String userName)
	{
		return candidateDAO.saveCandidatePersonalDetails(personalDetail, userName);
	}
	
	public PersonalDetail getCandidatePersonalDetailByUserName(String userName)
	{
		return candidateDAO.getCandidatePersonalDetailByUserName(userName);
	}
	
	public Boolean saveCandidateEducationalDetails(EducationalDetail educationalDetail, String userName)
	{
		return candidateDAO.saveCandidateEducationalDetails(educationalDetail, userName);
	}
	
	public Boolean saveCandidateProfessionalDetails(ProfessionalDetail professionalDetail, String userName)
	{
		return candidateDAO.saveCandidateProfessionalDetails(professionalDetail, userName);
	}
	
	public EducationalDetail getCandidateEducationalDetailByUserName(String userName)
	{
		return candidateDAO.getCandidateEducationalDetailByUserName(userName);
	}
	
	public ProfessionalDetail getCandidateProfessionalDetailByUserName(String userName)
	{
		return candidateDAO.getCandidateProfessionalDetailByUserName(userName);
	}
}
