package com.ojp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ojp.modal.Candidate;

public class CandidateDAO {

	static final String DB_URL = "jdbc:mysql://localhost/ojp1";
//  Database credentials
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
	          candidate.setAge(rs.getInt("age"));
	          candidate.setName(rs.getString("name"));
	          candidate.setAddress(rs.getString("address"));
	          candidate.setQualification(rs.getString("qualification"));
	          lst.add(candidate);
	       }
	      
			}catch(Exception e){e.printStackTrace();}
	      return lst;
	}
}