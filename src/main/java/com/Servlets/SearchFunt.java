package com.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dbconnection.Dbconnection;

/**
 * Servlet implementation class SearchFunt
 */
@WebServlet("/SearchFunt")
public class SearchFunt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFunt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try{
			
			String soure = request.getParameter("sourc");
			String desti = request.getParameter("destin");
			Connection con = Dbconnection.GetConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from flight where sourcee ='"+soure+"' and destination = '"+desti+"'");
			
			while(rs.next())
			{
	
					rs.getString(1);
					rs.getString(2); 
					rs.getString(3); 
					rs.getString(4); 
					rs.getString(5); 
					rs.getString(6); 
					response.sendRedirect("RegisterPassenger.jsp?book=" + rs.getString(1));

				
			
			HashMap<String, String> booking = new HashMap<String, String>();
			booking.put("airpt", rs.getString(1));
			booking.put("airlir", rs.getString(2));
			booking.put("soe", rs.getString(3));
			booking.put("desit", rs.getString(4));
			booking.put("seait", rs.getString(5));
			booking.put("prct", rs.getString(6));
			
			HttpSession session = request.getSession();
			session.setAttribute("bkdetil", booking);
			RequestDispatcher dispatcher = request.getRequestDispatcher("FinalPage.jsp");
			dispatcher.forward(request, response);
			
			
				
			}
			
		}
		catch(Exception ex)
		{
			
		}
	}

}
