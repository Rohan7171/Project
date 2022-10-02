package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Insert {
	private static String result;
	private static Connection con;
	private static int i;
	private static PreparedStatement p;

	public static String savemessage(String name,String mobile,String mail,String adress) {
		try {
                  con = ConnectionFactory.getConnection();
                  System.out.println("welcome");
          		p = con.prepareStatement("insert into myschool.enqyiry2(name,mobile,mail,adress) values(?,?,?,?)");
            System.out.println("started1");
            p.setString(1, name);
            p.setString(2, mobile);
            p.setString(3, mail);
            p.setString(4, adress);
             i = p.executeUpdate();
         	if(i==1)//i=1 is standard number for response
    		{
    			result="saved";
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
		}}
	
		public static String addFeature(String title, String description) {
			// TODO Auto-generated method stub
			
			try 
			{
			con = ConnectionFactory.getConnection();
			p = con.prepareStatement("insert into myschool.feature(title,description) values(?,?)");
			p.setString(1, title);
			p.setString(2, description);
		
			i= p.executeUpdate();
			if(i==1)
			{
				result="saved";
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
		public static String bookseat(String name, String classe ,String mobile) {
			try 
			{
			con = ConnectionFactory.getConnection();
			p = con.prepareStatement("insert into myschool.book(name,classe,mobile) values(?,?,?)");
			p.setString(1, name);
			p.setString(2, classe);
			p.setString(2, mobile);
		
			i= p.executeUpdate();
			if(i==1)
			{
				result="saved";
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

