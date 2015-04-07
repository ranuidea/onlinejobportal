package com.ojp.action;

import java.util.List;

import com.ojp.dao.CandidateDAO;
import com.ojp.modal.Candidate;

public class CandidateAction {

	public List<Candidate> getAllCandidate()
	{
		return new CandidateDAO().getAllCandidate();
	}
}
