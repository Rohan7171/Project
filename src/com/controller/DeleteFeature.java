package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Delete;

/**
 * Servlet implementation class Delete
 */
public class DeleteFeature extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String title = request.getParameter("title");
		System.out.println(title);
		String res = Delete.deleteFeature(title);
		response.sendRedirect("viewfeature.jsp");
	}

}
