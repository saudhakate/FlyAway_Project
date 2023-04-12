<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Servlets.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Dashboard</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>


<h1>Welcome <%=session.getAttribute("email").toString() %></h1>


<a  href="SearchF.jsp"> Search Flight</a>

<a href="CustomerLogin.jsp">Logout</a>

<br>

<br>


<h2>Thank You For Choosing FlyAway</h2>



</body>
</html>