package com.ojp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ojp.modal.Candidate;
import com.ojp.modal.Contact;

@Repository("contactDao")
public class ContactDAO {

	static final String DB_URL = "jdbc:mysql://23.94.156.185:3306/ojp1";
//  Database credentials
   static final String USER = "dba";
   static final String PASS = "password";
	public Boolean saveContact(Contact contact)
	{
		Connection conn = null;
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
      sql = "insert into contact(name, email, mobileNo, comment, comment_date) values(?,?,?,?,?)";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, contact.getName());
      stmt.setString(2, contact.getEmail());
      stmt.setString(3, contact.getMobileNo());
      stmt.setString(4, contact.getComment());
      java.util.Date date = new Date();
      Timestamp timestamp = new Timestamp(date.getTime());
      stmt.setTimestamp(5, timestamp);
      
      int rs = stmt.executeUpdate();
      return true;
		}catch(Exception e){e.printStackTrace();return false;}
	}
}
