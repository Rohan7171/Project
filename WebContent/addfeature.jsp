<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%@include file="message/message.jsp" %> </h3>

<form action="Feature" method="post">
Title
<input type="text" name="title" ><br>
Description
<input type="text" name="description" ><br>
<button>Add</button>

<a href="admin.jsp">Admin Home</a>
<a href="index.jsp">Client Home</a>


</form>
</body>
</html>