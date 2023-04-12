<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
 <%@ page import="com.Servlets.*" %>   
 <%@ page import="com.Dbconnection.*" %> 
  <%@include file="AdminDashboard.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Listed Flight</title>
<hr>
</head>
<body>


		<table width="100%" border="1"> 
		


			 	<tr>
	<th>Airport Name</th>
	<th>Airline Name</th>
	<th>Source</th>
	<th>Destination</th>
	<th>Seats</th>
	<th>Price</th>
	<th>Operations</th>
	</tr>

	

	<%
	
	try{
		Connection con = Dbconnection.GetConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from flight");
		
		
		
		while(rs.next())
		{
		%>	
	

		
		<tr>
		
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getInt(5) %></td>
			<td><%=rs.getInt(6) %></td>
			<td><a href="EditFlight.jsp?id=<%=rs.getString(1) %>">Delete Flight</a> </td>
			</tr>
		
			
			
		<% 
		
		}
		
		
		
		
	}
	catch(Exception ex)
	{
		
	}
	
	
	
	%>
	</table>

</body>
</html>