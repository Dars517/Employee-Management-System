package com.ems.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/AddEmployeeServlet", "/addemployee" })
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd = request.getRequestDispatcher("./AddEmployee.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		
		//final configuration
		final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DB_URL = "jdbc:mysql://localhost:3306/employee_management";
		final String DB_USER = "root";
		final String DB_PWD = "root";
		
		Connection con = null;
		PreparedStatement ps = null;
		String msg = "";
		
		try
		{
			Class.forName(DB_DRIVER);
			con = DriverManager.getConnection(DB_URL,DB_USER,DB_PWD);
			
			con.setAutoCommit(false);
			
			int eid = Integer.parseInt(request.getParameter("eid"));
			String name = request.getParameter("name");
			String dept = request.getParameter("dept");
			double sal = Double.parseDouble(request.getParameter("sal"));
			
			ps = con.prepareStatement("INSERT INTO employee VALUES(?,?,?,?)");
			ps.setInt(1, eid);
			ps.setString(2, name);
			ps.setString(3, dept);
			ps.setDouble(4, sal);
			
			int rows = ps.executeUpdate();
			
			msg = "<div class=\"alert alert-success text-center\" role=\"alert\">Record Saved Succesfully !!!</div>";
			
			con.commit();
		}
		catch(Exception e)
		{
			
			if(e instanceof SQLIntegrityConstraintViolationException)
			{
				msg = "<div class=\"alert alert-danger text-center\" role=\"alert\">This Employee ID Is Already Exist !!!</div>";
			}
			else
			{
				msg = "<div class=\"alert alert-danger text-center\" role=\"alert\">Unable To Save The Record !!!</div>";
			}
			
			try 
			{
				con.rollback();
			} 
			catch (SQLException e1) 
			{
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if(con != null)	
				{
					con.close();
				}
			}
			catch(Exception ie)
			{
				ie.printStackTrace();
			}
		}
		
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher("./AddEmployee.jsp");
		rd.forward(request, response);
	}

}
