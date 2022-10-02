<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.dao.Read" %>
<%@page import="java.util.*" %>
<%@page import="com.model.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>(window.jQuery||document.write("\u003Cscript src=\u0022/lib/jquery/dist/jquery.min.js\u0022\u003E\u003C/script\u003E"));</script>    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
<style>
#h1
{ 
background-color:skyblue;
 }
 #div
 {
 background-color:darkbrown;
 
 }
#radius
{ border:2px solid black;
width:265px;
height:300px;
border-radius:200px;
padding:30px; 
background-color:brown;}
#img1
{ border: 2px solid black;
background-color:black;
  width:1120px;
padding:20px;}
#t
{border:2px solid black;
width:265px;
height:200px;}
</style></head>
<body id="h1">
<h1 align="center" id="h1"><i>Kindergarten School of Excellence</i></h1>
<nav class="navbar navbar-inverse" id="div">
<div class="container" >
<div class="nav-header">
<a class="navbar-brand" href="index.jsp">Home</a></div>
<ul class="nav navbar-nav">
<li><a href="https://www.pexels.com/search/school/">Gallery</a></li>
<li><a href="Notice.jsp">Notice</a></li>
<li><a href="About.jsp">About us</a></li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown">Menu<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="addfeature.jsp">addfeature.jsp</a></li>
<li><a href="viewfeature.jsp">viewfeature.jsp</a></li>
<li><a href="admin.jsp">admin.jsp</a></li>
</ul>
</li>
<li><a href="contact.jsp">Contact us</a><li>
</ul></div></nav><marquee>Admissions for the year 2022-2023 will start from 11th july</marquee>
<img src="https://hechingerreport.org/wp-content/uploads/2017/12/france1.jpg"   id="img1" align="middle">
   
   
   <%      
            //Scriptlet Tag: it is used to write Java code inside jsp
            
           Read r = new Read();
            ArrayList<Feature> a = r.getfeature();
            for(Feature f:a)
            {
            
            %>
            
                <div class="col-lg-4 col-md-6 pb-1" id="radius">
                    <div class="d-flex bg-light shadow-sm border-top rounded mb-4" style="padding: 30px;">
                        <i class="flaticon-050-fence h1 font-weight-normal text-primary mb-3"></i>
                        <div class="pl-4">
                            <h4><%=f.getTitle() %></h4>
                            <p class="m-0"><%=f.getDescription() %></p>
                        </div>
                    </div>
                </div>
                
            <%
            }
            %>
<br><div>
<h2 align="center">Our Teaching Staff</h2>
<img src="C:\Users\dalvi\Downloads\R (1).jpg" id="t">
<img src="C:\Users\dalvi\Downloads/OIP (1).jpg" id="t">
<img src="C:\Users\dalvi\Downloads\R (2).jpg" id="t">
<img src="C:\Users\dalvi\Downloads\happy-teacher-grading-papers-6581091.jpg" id="t">
<h2>Our Classes</h2>
<img src="C:\Users\dalvi\Downloads\R.jpg" Height="300" width="1080">
<form action="SendMessage" method="post">
<table border="2px solid black" align="center" ><caption><b>Book a Seat</b></caption>
<tr><th>Name</th><td><input type="text" name="name" value=""></td></tr>
<tr><th>Class </th><td><input type="text" name="classe" value=""></td></tr>
<tr><th>Mobile </th><td><input type="text" name="mobile" value=""></td></tr>
<tr><th>SUBMIT</th> <td><input type="submit" value="SendMessage"></td></tr>
</table></form>
</div>
</body>
</html>