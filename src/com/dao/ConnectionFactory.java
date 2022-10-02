package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public static Connection getConnection() {
		// TODO Auto-generated method stub
  Connection con=null;
try {
	
	       Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306";
				String user="root";
				String password="";	
				con = DriverManager.getConnection(url, user, password);
				System.out.println(con);	
}
catch(ClassNotFoundException | SQLException e)
{  e.printStackTrace();
	}
finally {
		return con;
	}

	}
}
