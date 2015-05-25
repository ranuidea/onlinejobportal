package com.ojp.modal;

public class JobRequirement {

	private int jobId;
	private String jobTitle;
	private String jobType;
	private String requiredSkill;
	private String jobDescription;
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public String getRequiredSkill() {
		return requiredSkill;
	}
	public void setRequiredSkill(String requiredSkill) {
		this.requiredSkill = requiredSkill;
	}
	public String getJobDescription() {
		return jobDescription;
	}
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	
}
