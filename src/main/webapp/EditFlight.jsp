<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@ page import="com.Servlets.*" %>   
 <%@ page import="com.Dbconnection.*" %> 


<%
	String id = request.getParameter("id");
	try{
	Connection con = Dbconnection.GetConnection();
	PreparedStatement ps = con.prepareStatement("delete from flight where Airport='"+ id+"';");
	ps.executeUpdate();
	response.sendRedirect("ViewAllFlight.jsp");
	
	}catch(Exception ex)
	{
		
		System.out.print(ex);
	}
%>