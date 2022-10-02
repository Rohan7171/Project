package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Insert;

/**
 * Servlet implementation class Feature
 */
public class Feature extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		
		System.out.print(title);
		String res = Insert.addFeature(title, description);
		HttpSession session = request.getSession();
		if(res.equals("saved"))
		{		
			session.setAttribute("msg", "Feature Added Successfully");
			response.sendRedirect("addfeature.jsp");
			
		}
		else if(res.equals("failed"))
		{
			session.setAttribute("msg", "Something Went Wrong");
			response.sendRedirect("addfeature.jsp");
		}
		else if(res.equals("exp"))
		{
			session.setAttribute("msg", "Something Went Wrong");
			response.sendRedirect("addfeature.jsp");   

		}
	}

}
