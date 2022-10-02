package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Insert;

/**
 * Servlet implementation class SendMessage
 */
public class SendMessage extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	      String name = request.getParameter("name");
          String classe = request.getParameter("classe");
             String mobile = request.getParameter("mobile");
             
             System.out.print(mobile);
             
             String result = Insert.bookseat(name, classe, mobile);
         	if(result.equals("saved"))
  		{
  			//servlet to html
  			response.sendRedirect("index.jsp");
  		}
  		else if(result.equals("failed"))
  		{
  			response.sendRedirect("index.jsp");
  		}
  		else if(result.equals("exp"))
  		{
  			response.sendRedirect("index.jsp");   
  		}
  	
	}

}