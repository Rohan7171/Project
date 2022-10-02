<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    //java code 
     String s=(String)session.getAttribute("abcd");
     out.print(s);
     if(s!=null)
     {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Welcome to Admin Home<br>
<a href="addfeature.html">ADD FEATURE</a><br>
<a href="viewfeature.jsp">View Feature</a>


<form action="Logout" method="post">
<button>LOGOUT</button>
</form>


</body>
</html>
<%
     }
     else
     {
     response.sendRedirect("adminauthentication.html");
     }
     
%>