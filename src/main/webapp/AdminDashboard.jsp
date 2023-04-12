<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.Servlets.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>


<h1>Welcome <%=session.getAttribute("email").toString() %></h1>


<a  href="AdminLogin.jsp"> Logout</a>

<a href="Airline.jsp">Add airline</a>

<a href="ViewAllFlight.jsp">ViewAllFlight</a>


<a href="Changepass.jsp">Change Password</a>




</body>
</html>