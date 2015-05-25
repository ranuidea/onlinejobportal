package com.ojp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ojp.dao.CompanyDAO;
import com.ojp.modal.JobRequirement;

@Service("companyService")
public class CompanyService {

	@Autowired  
	 private CompanyDAO companyDAO; 
	public Boolean saveJobRequirementDetails(JobRequirement jobRequirement, String userName)
	{
		return companyDAO.saveJobRequirementDetails(jobRequirement, userName);
	}
	
	public List<JobRequirement> getAllRequirementDetails(String userName)
	{
		return companyDAO.getAllRequirementDetails(userName);
	}
	
	public Boolean deleteJobRequirementDetails(int jobId, String userName)
	{
		return companyDAO.deleteJobRequirementDetails(jobId, userName);
	}
}
