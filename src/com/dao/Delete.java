package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Delete {
	private static int i;
	private static Connection con;
	private static PreparedStatement p;
	private static String result;
	
   public static String deleteFeature(String title) {
	// TODO Auto-generated method stub
	   
	   
	   try 
		{
		con = ConnectionFactory.getConnection();
		p = con.prepareStatement("delete from myschool.feature where title=?");
		p.setString(1, title);
		i= p.executeUpdate();
		if(i==1)
		{
			result="deleted";
		}
		else
		{
			result="failed";
		}
		} catch (SQLException e) {
			
			result="exp";
			System.out.println(e);
		}
		finally {
			return result;
		}
	
	
	
}
}
