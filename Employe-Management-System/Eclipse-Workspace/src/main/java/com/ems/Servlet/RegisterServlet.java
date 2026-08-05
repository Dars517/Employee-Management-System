package com.ems.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLIntegrityConstraintViolationException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/RegisterServlet", "/register" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./Register.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		response.setContentType("text/html");

		// final configuration
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
			
			String uname = request.getParameter("uname");
			String email = request.getParameter("email");
			String mobnum = request.getParameter("mobnum");
			String pwd = request.getParameter("pwd");
			
			ps = con.prepareStatement("INSERT INTO users VALUES(?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, mobnum);
			ps.setString(4, pwd);
			
			int status = ps.executeUpdate();
			
			if(status > 0)
			{	
				RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
				rd.forward(request, response);
			}
			else 
			{
				msg = "Failed To Create Account !!!";
				request.setAttribute("msg", msg);
				RequestDispatcher rd = request.getRequestDispatcher("./Register.jsp");
				rd.forward(request, response);
			}
				
		}
		catch(SQLIntegrityConstraintViolationException p)
		{
			msg = "Email Is Already EXIST !!!";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("./Register.jsp");
			rd.forward(request, response);
		}
		catch(Exception e)
		{
			msg = "Unknown Problem !!!";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("./Register.jsp");
			rd.forward(request, response);
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
				if(ps != null)
				{
					ps.close();
				}
			}
			catch(Exception ie)
			{
				ie.printStackTrace();
			}
		}
		
	}

}
