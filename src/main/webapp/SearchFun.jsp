<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.HashMap"%>
     <%@page import="java.sql.*"%>
 <%@ page import="com.Servlets.*" %>   
 <%@ page import="com.Dbconnection.*" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Avilable Flight</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>
<h3 style="text-align:center;">Avilable Flight</h3>

<br>
	<%
	int z=0;
	try{
		
		String soure = request.getParameter("sourc");
		String desti = request.getParameter("destin");
		Connection con = Dbconnection.GetConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from flight where sourcee ='"+soure+"' and destination = '"+desti+"'");
		
		while(rs.next())
		{
	%>		
<table width="70%" border="1"> 
		
					 	<tr>
	<th>Airport Name</th>
	<th>Airline Name</th>
	<th>Source</th>
	<th>Destination</th>
	<th>Seats</th>
	<th>Price</th>
	<th>Operations</th>
	</tr>
		
	<tr>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><a href="RegisterPassenger.jsp?book=<%=rs.getString(1) %>">Book</a></td>
	</tr>
</table>	
			
		<%
		
		HashMap<String, String> booking = new HashMap<String, String>();
		booking.put("airpt", rs.getString(1));
		booking.put("airlir", rs.getString(2));
		booking.put("soe", rs.getString(3));
		booking.put("desit", rs.getString(4));
		booking.put("seait", rs.getString(5));
		booking.put("prct", rs.getString(6));
		
		session.setAttribute("bkdetil", booking);
		RequestDispatcher dispatcher = request.getRequestDispatcher("FinalPage.jsp");
		
		
		
		%>
			
	<%	}
		
	}
	catch(Exception ex)
	{
		
	}
	
	
	
	%>																




</body>
</html>