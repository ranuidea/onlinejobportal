package com.ojp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ojp.modal.JobRequirement;
import com.ojp.modal.PersonalDetail;

@Repository("companyDao")
public class CompanyDAO {

	//static final String DB_URL = "jdbc:mysql://23.94.156.185:3306/ojp1";
		static final String DB_URL = "jdbc:mysql://localhost:3306/ojp1";
	//  Database credentials
	   //static final String USER = "dba";
		static final String USER = "root";
	   static final String PASS = "password";
	   
	   public Boolean saveJobRequirementDetails(JobRequirement jobRequirement, String userName)
		{
			Connection conn = null;
			//Statement stmt = null;
			PreparedStatement stmt = null;
			try{
		//STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement..."+userName);
	      String sql;
	      sql = "select count(job_id)+1 as job_id from job_requirement_details where username=?";
	      stmt = conn.prepareStatement(sql);
	      stmt.setString(1, userName);
	      ResultSet resultSet = stmt.executeQuery();
	      int jobId=0;
	      while(resultSet.next())
	      jobId = resultSet.getInt("job_id");
	      sql = "insert into job_requirement_details(job_id, username, job_title, job_type, required_skill, job_description) values(?,?,?,?,?,?)";
	      stmt = conn.prepareStatement(sql);
	      stmt.setInt(1, jobId);
	      stmt.setString(2, userName);
	      stmt.setString(3, jobRequirement.getJobTitle());
	      stmt.setString(4, jobRequirement.getJobType());
	      stmt.setString(5, jobRequirement.getRequiredSkill());
	      stmt.setString(6, jobRequirement.getJobDescription());
	      
	      int rs = stmt.executeUpdate();
	      return true;
			}catch(Exception e){e.printStackTrace();return false;}

		}
	   
	   public List<JobRequirement> getAllRequirementDetails(String userName)
	   {
		   Connection conn = null;
			//Statement stmt = null;
			PreparedStatement stmt = null;
			try{
		//STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement..."+userName);
	      String sql;
	      sql = "select * from job_requirement_details where username=? and disable_flag=?";
	      stmt = conn.prepareStatement(sql);
	      stmt.setString(1, userName);
	      stmt.setString(2, "N");
	      ResultSet resultSet = stmt.executeQuery();
	      //int jobId=0;
	      List<JobRequirement> lst = new ArrayList<JobRequirement>();
	      while(resultSet.next()) {
	    	  JobRequirement jobRequirement = new JobRequirement();
	    	  jobRequirement.setJobId(resultSet.getInt("job_id"));
	    	  jobRequirement.setJobTitle(resultSet.getString("job_title"));
	    	  jobRequirement.setJobType(resultSet.getString("job_type"));
	    	  jobRequirement.setRequiredSkill(resultSet.getString("required_skill"));
	    	  jobRequirement.setJobDescription(resultSet.getString("job_description"));
	    	  lst.add(jobRequirement);
	      }
	      
	      return lst;
			}catch(Exception e){e.printStackTrace();return null;}


	   }
	   
	   public Boolean deleteJobRequirementDetails(int jobId, String userName)
	   {
		   Connection conn = null;
			//Statement stmt = null;
			PreparedStatement stmt = null;
			try{
		//STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement..."+userName);
	      String sql;
	      sql = "update job_requirement_details set disable_flag = ? where job_id = ? and username=?";
	      stmt = conn.prepareStatement(sql);
	      stmt.setString(1, "Y");
	      stmt.setInt(2, jobId);
	      stmt.setString(3, userName);
	      int resultSet = stmt.executeUpdate();
	      
	      return true;
			}catch(Exception e){e.printStackTrace();return false;}

	   }

}
