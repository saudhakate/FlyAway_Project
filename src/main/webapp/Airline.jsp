<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.Servlets.*" %>
 <%@include file="AdminDashboard.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Airline Adding</title>

</head>
<body>



<form action="FlightAdd" method="post">

<h2>Add Airline</h2>

<label>Airport Name</label>
<input type="text" name="airport" placeholder="Airport">
<br>

<br>
<label>Airline Name</label>
<input type="text" name="airline" placeholder="Airline">
<br>

<br>
<label>Source</label>
<input type="text" name="source" placeholder="Source">
<br>

<br>
<label>Destination</label>
<input type="text" name="destination" placeholder="Destination">
<br>

<br>

<br>

<br>
<label>Seats</label>
<input type="text" name="seats" placeholder="Seats">
<br>

<br>
<label>Price</label>
<input type="text" name="price" placeholder="Price">

<input type="submit" value="Add">

</form>


<%
	String msg = request.getParameter("msg");
	if("done".equals(msg))
	{
		%>
		<h3>Operation Successful</h3>
	<%}%>

<%
	if("wrong".equals(msg))
	{%>
		<h3>Invalid Data</h3>
	<% }%>

</body>
</html>