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
<title>Ticket Details</title>
<link rel="stylesheet" href="style.css" >
</head>
<%
	HashMap<String, String> booking = (HashMap)session.getAttribute("bkdetil");
	HashMap<String, String> person = (HashMap)session.getAttribute("persondata");
	
	String airpo = "";
	String airli = "";
	String soure = "";
	String desti = "";
	String seats = "";
	String price = "";
	
	String pname = "";
	String gend = "";
	String loca = "";
	String phone = "";
	String trave = "";
	String nofp = "";
	String email = "";
	
	if(booking!=null && person!=null)
	{
		airpo =booking.get("airpt");
		airli =booking.get("airlir");
		soure =booking.get("soe");
		desti =booking.get("desit"); 
		seats =booking.get("seait"); 
		price=booking.get("prct"); 
		
		pname =person.get("pername"); 
		gend =person.get("gende"); 
		loca =person.get("locash"); 
		phone =person.get("phn"); 
		trave =person.get("trac"); 
		nofp =person.get("notr"); 
		email =person.get("emili"); 
	}
	else{
		
		airpo = null;
		airli = null;
		soure =	null;
		desti = null;
		seats = null;
		price= null;
		
		pname = null;
		gend = null;
		loca = null;
		phone = null;
		trave = null;
		nofp = null;
		email = null;
	}
	
	
%>
<body>

<h1 text-align:center;>Conformation Page</h1>

<br>

<br>

<br>

<br>

<table width="100%" border="1"> 
	
	<tr>
	<th>Airport Name</th>
	<th>Airline Name</th>
	<th>Source</th>
	<th>Destination</th>
	<th>Seats     </th>
	<th>Price</th>
	<th>Remark</th>
	</tr>
	

	
	<tr>
	<td><%=airpo %></td>
	<td><%=airli %></td>
	<td><%=soure %></td>
	<td><%=desti %></td>
	<td><%=seats %></td>
	<td><%=price %></td>
	<td>Happy Journey</td>
	</tr>
	
			<tr>
	<th>Person Name</th>
	<th>Gender</th>
	<th>location</th>
	<th>Phone</th>
	<th>Travel Date    </th>
	<th>No of Person</th>
	<th>Email</th>
	</tr>
	
	<tr>
	<td><%=pname %></td>
	<td><%=gend %></td>
	<td><%=loca %></td>
	<td><%=phone %></td>
	<td><%=trave %></td>
	<td><%=nofp %></td>
	<td><%=email %></td>
	
	
	</tr>
	
	
	
	
	
	</table>
	
	<div text-align: center;>
	<a href="Welcome.jsp">Back To HomePage</a>
	</div>
	


</body>
</html>