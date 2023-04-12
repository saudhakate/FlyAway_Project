<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

 <%@ page import="com.Servlets.*" %>   
 <%@ page import="com.Dbconnection.*" %> 
  <%@include file="AdminDashboard.jsp" %>

 <%
 
 	String id = request.getParameter("id");
	 String airp = request.getParameter("airportt");
	 String airline = request.getParameter("airlinee");
 	String sour = request.getParameter("sourcee");
 	String desti = request.getParameter("destinatione");
	 String seat = request.getParameter("seatse");
 	String prices = request.getParameter("pricee");
 	//System.out.println("source dsa= " + id+" airport= "+ airp+" airp= "+ airline+" airline= "+ sour+" sour= "+ desti+" desti= "+ seat+" seat="+ prices);
 
 	try{
 		
 		Connection con = Dbconnection.GetConnection();
 		Statement st = con.createStatement();
 		st.executeUpdate("update flight set Airport='" + airp +"', airline='"+airline+"', sourcee='"+ sour +"', destination='"+ desti +"', seats='"+ seat+ "', price='"+prices+"' where Airport="+id+"'");
 		response.sendRedirect("ViewAllFlight.jsp?msg=done");
 	}
 	catch(Exception ex)
 	{
 		System.out.println(ex);
 	response.sendRedirect("ViewAllFlight.jsp?msg=wrong");
 	}
 	
 
 %>