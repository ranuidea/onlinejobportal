package com.ojp.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ojp.dao.CandidateDAO;
import com.ojp.modal.Candidate;

@Service("candidateAction")
public class CandidateAction {

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
