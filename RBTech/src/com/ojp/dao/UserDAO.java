package com.ojp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.Date;

import org.springframework.stereotype.Repository;

import com.ojp.modal.User;

@Repository("userDao")
public class UserDAO {

	//static final String DB_URL = "jdbc:mysql://23.94.156.185:3306/ojp1";
	static final String DB_URL = "jdbc:mysql://localhost:3306/ojp1";
	// Database credentials
	//static final String USER = "dba";
	static final String USER = "root";
	static final String PASS = "password";

	public User saveUser(User user) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating statement...");
			String sql;
			sql = "insert into users(username, password, enabled) values(?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUserName());
			stmt.setString(2, user.getPassword());
			stmt.setInt(3, 1);

			// java.util.Date date = new Date();
			// Timestamp timestamp = new Timestamp(date.getTime());
			// stmt.setTimestamp(5, timestamp);

			int rs = stmt.executeUpdate();

			sql = "insert into user_roles(username, role) values(?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUserName());
			stmt.setString(2, "ROLE_CANDIDATE");

			int rs1 = stmt.executeUpdate();
			return user;
		} catch (Exception e) {
			return null;
		}
	}

	
	
	public User saveCandidateUser(User user, String firstName, String lastName) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating statement...");
			String sql;
			sql = "insert into users(username, password, enabled) values(?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUserName());
			stmt.setString(2, user.getPassword());
			stmt.setInt(3, 1);

			// java.util.Date date = new Date();
			// Timestamp timestamp = new Timestamp(date.getTime());
			// stmt.setTimestamp(5, timestamp);

			int rs = stmt.executeUpdate();

			sql = "insert into user_roles(username, role) values(?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUserName());
			stmt.setString(2, "ROLE_CANDIDATE");

			int rs1 = stmt.executeUpdate();
			
			sql = "insert into personal_details(username, first_name, last_name) values(?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUserName());
			stmt.setString(2, firstName);
			stmt.setString(3, lastName);

			int rs2 = stmt.executeUpdate();

			return user;
		} catch (Exception e) {e.printStackTrace();
			return null;
		}
	}

}
