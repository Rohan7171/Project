<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body
 { background-image:url("https://th.bing.com/th/id/R.3539654ceccf712e8582b6380db47614?rik=yhj1SoDSDSy8Aw&riu=http%3a%2f%2f3.bp.blogspot.com%2f-pi4pOd2OfSI%2fTuoVjlAT1pI%2fAAAAAAAAMH8%2fD8y2q7u1aSU%2fs1600%2fgreen%2bbackground%2bimage.jpg&ehk=h%2f3Rda4Y5Dcy8g5sVvUrlTXjCOySHM2AvpnfTEgfMpw%3d&risl=&pid=ImgRaw&r=0.jpg");
    background-repeat:no-repeat;
background-size:cover; 
margin-right:200px}

table,tr,th,td
{ border:2px solid black; }
table
{ border-collapse:collapse; 
  }
form
{ margin-top:100px;
  margin-bottom:100px;
margin-left:400px;
  margin-right:400px;
}
#h1
{background-color:"blue";
}
</style>
</head>
<body id="h1">
<h2 align="center">for enquiry please fill the form below</h2>
<form action="Submit" method="post">
<table >
<tr><th>Name</th>      <td><input type="text" name="name" value="" placeholder="Enter your Name"></td></tr>
<tr> <th>Mobile No</th> <td> <input type="text" name="mobile" value="" placeholder="Enter your mobile number"></td></tr>
<tr><th>Email Id </th>  <td><input type="email" name="mail" value="" placeholder="Enter your mail id"></td></tr>
 <tr><th>Adress</th>     <td><input type="text" name="adress"value="" placeholder="Enter your adress"></td></tr>
<tr><td><input type="submit" value="Submit" ></td> <td><input type="reset" value="reset"></td></tr>
</table>
</form>
</body>
</html>