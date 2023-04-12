<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@ page import="com.Servlets.*" %>   
 <%@ page import="com.Dbconnection.*" %> 


<%
	String email = request.getParameter("email");
	String password = request.getParameter("pass");
	try{
	Connection con = Dbconnection.GetConnection();
	PreparedStatement ps = con.prepareStatement("update adminlogin set adpwd='"+ password+"' where ademail='"+ email +"'; ");
	ps.executeUpdate();
	response.sendRedirect("AdminDashboard.jsp");
	
	}catch(Exception ex)
	{
		
		System.out.print(ex);
	}
%>