package com.infinitryout.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	 private static final String URL = "jdbc:mysql://localhost:3306/mindtap";
	 private static final String USERNAME = "root";
	 private static final String PASSWORD = "root";
	 static {
	        try {
	            // Load the MySQL JDBC driver
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	    }

	    public static Connection getConnection() throws SQLException {
	    	 System.out.println("query is connecting");
	        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
	    }
}
