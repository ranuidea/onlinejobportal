package com.ojp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ojp.modal.Candidate;
import com.ojp.modal.EducationalDetail;
import com.ojp.modal.PersonalDetail;
import com.ojp.modal.ProfessionalDetail;

@Repository("candidateDao")
public class CandidateDAO {

	//static final String DB_URL = "jdbc:mysql://23.94.156.185:3306/ojp1";
	static final String DB_URL = "jdbc:mysql://localhost:3306/ojp1";
//  Database credentials
   //static final String USER = "dba";
	static final String USER = "root";
   static final String PASS = "password";
	public List<Candidate> getAllCandidate()
	{
	
			Connection conn = null;
			Statement stmt = null;
			List lst = new ArrayList<Candidate>();
			try{
		//STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement...");
	      stmt = conn.createStatement();
	      String sql;
	      sql = "SELECT * FROM candidate";
	      ResultSet rs = stmt.executeQuery(sql);

	      
	      while(rs.next()){
	          //Retrieve by column name
	    	  Candidate candidate = new Candidate();
	          candidate.setId(rs.getInt("id"));
	          //candidate.setAge(rs.getInt("age"));
	          //candidate.setName(rs.getString("name"));
	          //candidate.setAddress(rs.getString("address"));
	          //candidate.setQualification(rs.getString("qualification"));
	          lst.add(candidate);
	       }
	      
			}catch(Exception e){e.printStackTrace();}
	      return lst;
	}
	
	public Boolean addCandidate(Candidate candidate)
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
      System.out.println("Creating statement...");
      String sql;
      sql = "insert into candidate values(?,?,?,?,?)";
      stmt = conn.prepareStatement(sql);
      stmt.setInt(1, candidate.getId());
      stmt.setString(2, candidate.getFirstName());
      //stmt.setInt(3, candidate.getAge());
      //stmt.setString(4, candidate.getAddress());
      //stmt.setString(5, candidate.getQualification());
      
      int rs = stmt.executeUpdate();
      return true;
		}catch(Exception e){e.printStackTrace();return false;}

		
	}
	
	public Boolean saveCandidatePersonalDetails(PersonalDetail personalDetail, String userName)
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
      sql = "update personal_details set mobile_no = ?, gender = ?, date_of_birth = ?, address = ? where username = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, personalDetail.getMobileNo());
      stmt.setString(2, personalDetail.getGender());
      //stmt.setInt(3, candidate.getAge());
      stmt.setString(3, personalDetail.getDateOfBirth());
      stmt.setString(4, personalDetail.getAddress());
      stmt.setString(5, userName);
      
      int rs = stmt.executeUpdate();
      return true;
		}catch(Exception e){e.printStackTrace();return false;}

	}
	
	public PersonalDetail getCandidatePersonalDetailByUserName(String userName)
	{
		Connection conn = null;
		PreparedStatement stmt = null;
		PersonalDetail personalDetail = new PersonalDetail();
		try{
	//STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      
      String sql;
      sql = "SELECT * FROM personal_details where username = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, userName);
      ResultSet rs = stmt.executeQuery();

      
      while(rs.next()){
          //Retrieve by column name   	  
          personalDetail.setFirstName(rs.getString("first_name"));
          personalDetail.setLastName(rs.getString("last_name"));
          personalDetail.setMobileNo(rs.getString("mobile_no"));
          personalDetail.setGender(rs.getString("gender"));
          personalDetail.setDateOfBirth(rs.getString("date_of_birth"));
          personalDetail.setAddress(rs.getString("address"));
       }
      
		}catch(Exception e){e.printStackTrace();}
      return personalDetail;

	}
	
	public Boolean saveCandidateEducationalDetails(EducationalDetail educationalDetail, String userName)
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
      sql = "update educational_details set degree_institute = ?, batch_from = ?, batch_to = ?, degree = ?, degree_course_type = ?, aisse = ?, aisse_percentage = ?, aissce = ?, aissce_percentage = ? where username = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, educationalDetail.getDegreeInstitute());
      stmt.setString(2, educationalDetail.getBatchFrom());
      stmt.setString(3, educationalDetail.getBatchTo());
      stmt.setString(4, educationalDetail.getDegree());
      stmt.setString(5, educationalDetail.getDegreeCourseType());
      stmt.setString(6, educationalDetail.getAisse());
      stmt.setString(7, educationalDetail.getAissePercentage());
      stmt.setString(8, educationalDetail.getAissce());
      stmt.setString(9, educationalDetail.getAisscePercentage());
      stmt.setString(10, userName);
      
      int rs = stmt.executeUpdate();
      if(rs==0)
      {
    	  sql = "insert into educational_details(username, degree_institute, batch_from, batch_to, degree, degree_course_type, aisse, aisse_percentage, aissce, aissce_percentage) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
          stmt = conn.prepareStatement(sql);
          stmt.setString(1, userName);
          stmt.setString(2, educationalDetail.getDegreeInstitute());
          stmt.setString(3, educationalDetail.getBatchFrom());
          stmt.setString(4, educationalDetail.getBatchTo());
          stmt.setString(5, educationalDetail.getDegree());
          stmt.setString(6, educationalDetail.getDegreeCourseType());
          stmt.setString(7, educationalDetail.getAisse());
          stmt.setString(8, educationalDetail.getAissePercentage());
          stmt.setString(9, educationalDetail.getAissce());
          stmt.setString(10, educationalDetail.getAisscePercentage()); 
          
          int rs1 = stmt.executeUpdate();
      }
      return true;
		}catch(Exception e){e.printStackTrace();return false;}

	}
	
	public EducationalDetail getCandidateEducationalDetailByUserName(String userName)
	{
		Connection conn = null;
		PreparedStatement stmt = null;
		EducationalDetail educationalDetail = new EducationalDetail();
		try{
	//STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      
      String sql;
      sql = "SELECT * FROM educational_details where username = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, userName);
      ResultSet rs = stmt.executeQuery();

      
      while(rs.next()){
          //Retrieve by column name   	  
    	  educationalDetail.setDegreeInstitute(rs.getString("degree_institute"));
    	  educationalDetail.setBatchFrom(rs.getString("batch_from"));
    	  educationalDetail.setBatchTo(rs.getString("batch_to"));
    	  educationalDetail.setDegreeCourseType(rs.getString("degree_course_type"));
    	  educationalDetail.setDegree(rs.getString("degree"));
    	  educationalDetail.setAisse(rs.getString("aisse"));
    	  educationalDetail.setAissePercentage(rs.getString("aisse_percentage"));
    	  educationalDetail.setAissce(rs.getString("aissce"));
    	  educationalDetail.setAisscePercentage(rs.getString("aissce_percentage"));
       }
      
		}catch(Exception e){e.printStackTrace();}
      return educationalDetail;

	}
	
	public Boolean saveCandidateProfessionalDetails(ProfessionalDetail professionalDetail, String userName)
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
      sql = "update professional_details set designation = ?, organization = ?, experience_from = ?, experience_to = ? where username = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, professionalDetail.getDesignation());
      stmt.setString(2, professionalDetail.getOrganization());
      stmt.setString(3, professionalDetail.getExperienceFrom());
      stmt.setString(4, professionalDetail.getExperienceTo());
      stmt.setString(5, userName);
      
      int rs = stmt.executeUpdate();
      if(rs==0)
      {
    	  sql = "insert into professional_details(username, designation, organization, experience_from, experience_to) values(?, ?, ?, ?, ?)";
          stmt = conn.prepareStatement(sql);
          stmt.setString(1, userName);
          stmt.setString(2, professionalDetail.getDesignation());
          stmt.setString(3, professionalDetail.getOrganization());
          stmt.setString(4, professionalDetail.getExperienceFrom());
          stmt.setString(5, professionalDetail.getExperienceTo()); 
          
          int rs1 = stmt.executeUpdate();
      }
      return true;
		}catch(Exception e){e.printStackTrace();return false;}

	}
	
	public ProfessionalDetail getCandidateProfessionalDetailByUserName(String userName)
	{
		Connection conn = null;
		PreparedStatement stmt = null;
		ProfessionalDetail professionalDetail = new ProfessionalDetail();
		try{
	//STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      
      String sql;
      sql = "SELECT * FROM professional_details where username = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, userName);
      ResultSet rs = stmt.executeQuery();

      
      while(rs.next()){
          //Retrieve by column name   	  
    	  professionalDetail.setDesignation(rs.getString("designation"));
    	  professionalDetail.setOrganization(rs.getString("organization"));
    	  professionalDetail.setExperienceFrom(rs.getString("experience_from"));
    	  professionalDetail.setExperienceTo(rs.getString("experience_to"));
       }
      
		}catch(Exception e){e.printStackTrace();}
      return professionalDetail;

	}

}
