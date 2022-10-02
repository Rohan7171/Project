package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.model.Feature;

public class Read {
	private static String result;
	private static Connection con;
	private static int i;
	private static PreparedStatement p;
	private static ResultSet rs;

	public ArrayList<Feature> getfeature() {
		ArrayList<Feature> a = new ArrayList<Feature>();
	try {
			
			//connection
			con = ConnectionFactory.getConnection();
			//preparedStatement
			p = con.prepareStatement("select * from myschool.feature");
			rs = p.executeQuery();
			while(rs.next())
			{
				Feature f = new Feature();
				f.setTitle(rs.getString(1));
				f.setDescription(rs.getString(2));
				a.add(f);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		finally
		{
			return a;
		}
	}	
	public static String adminAuth(String username, String password) {
		// TODO Auto-generated method stub
		
          try {
			//connection
			con = ConnectionFactory.getConnection();
			//preparedStatement
			p = con.prepareStatement
	("select * from myschool.admin where username=? and password=?");
			p.setString(1, username);
			p.setString(2, password);
			rs=p.executeQuery();
			if(rs.next())
			{
				result="exist";
			}
			else
			{
				result="notexist";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			result="notexist";
			System.out.println(e);
		}
          finally {
			return result;
		}
		
		
		
	}	
}
