package com.ojp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ojp.dao.CandidateDAO;
import com.ojp.modal.Candidate;

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
}
