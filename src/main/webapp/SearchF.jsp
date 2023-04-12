<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*"%>
 <%@ page import="com.Servlets.*" %>   
 <%@ page import="com.Dbconnection.*" %> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Flight</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>

<h3 style="text-align:center;">Searching Flight</h3>

<form action="SearchFun.jsp" method="post">

<label for="sour">Source</label>

<select id="sour" name="sourc">
   <option value="-1">Select Source</option>
  <option value="Nagpur">Nagpur</option>
  <option value="Delhi">Delhi</option>Kolkata
   <option value="Kolkata">Kolkata</option>
</select>

<br>
<br>

<select id="desti" name="destin">
  <option value="-1">Select Destination</option>
  <option value="Nagpur">Nagpur</option>
  <option value="Delhi">Delhi</option>
  <option value="Kolkata">Kolkata</option>
</select>
<input type="submit" value="Submit">




</form>

</body>
</html>