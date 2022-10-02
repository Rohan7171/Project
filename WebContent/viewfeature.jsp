<%@page import="com.dao.Read" %>
<%@page import="java.util.*" %>
<%@page import="com.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

        <%
           
            Read r=new Read();
            ArrayList<Feature>  a=r.getfeature();
            for(Feature f:a)
            {
        %>
        
        title: <%=f.getTitle() %>
        description: <%=f.getDescription() %>
        <form action="DeleteFeature" method="post">
        <input type="hidden" name="title" value="<%=f.getTitle() %>">
        <button>DeleteFeature</button>
        </form>
        
        <br><br><br>
        
        <%} %>
  
  
</body>
</html>