package com.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dbconnection.Dbconnection;

/**
 * Servlet implementation class FlightAdd
 */
@WebServlet("/FlightAdd")
public class FlightAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlightAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String airport = request.getParameter("airport");
		String airline = request.getParameter("airline");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String seats = request.getParameter("seats");
		String price = request.getParameter("price");
		
		try
		{
		Connection con = Dbconnection.GetConnection();
		PreparedStatement ps = con.prepareStatement("insert into flight(Airport,airline,sourcee,destination,seats,price) value(?,?,?,?,?,?)");
		
		ps.setString(1, airport);
		ps.setString(2, airline);
		ps.setString(3, source);
		ps.setString(4, destination);
		ps.setInt(5, Integer.parseInt(seats));
		ps.setInt(6, Integer.parseInt(price));
		ps.executeUpdate();
		response.sendRedirect("Airline.jsp?msg=done");
		
		}
		catch(Exception ex)
		{
			response.sendRedirect("Airline.jsp?msg=wrong");
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
