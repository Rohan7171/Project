package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Insert;

/**
 * Servlet implementation class Submit
 */
public class Submit extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String mail = request.getParameter("mail");
		String adress = request.getParameter("adress");
	
		String result = Insert.savemessage(name, mobile, mail, adress);
		if(result.equals("saved"))
		{
			//servlet to html
			response.sendRedirect("contact.jsp");
		}
		else if(result.equals("failed"))
		{
			response.sendRedirect("contact.jsp");
		}
		else if(result.equals("exp"))
		{
			response.sendRedirect("contact.html");   
		}
	}
	}
		
