package com.ems.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ems.entites.Employee;
import com.ems.entites.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet({ "/LoginServlet", "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		// final configuration
		final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DB_URL = "jdbc:mysql://localhost:3306/employee_management";
		final String DB_USER = "root";
		final String DB_PWD = "root";

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(DB_DRIVER);
			
			con = DriverManager.getConnection(DB_URL,DB_USER,DB_PWD);
			
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			
			//always use AND instead coma, otherwise syntax error occur
			ps = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
			ps.setString(1, email);
			ps.setString(2, pwd);
			
			rs = ps.executeQuery();
			
			if(rs.next())
			{
				User user = new User();
				user.setUname(rs.getString("uname"));
				user.setEmail(rs.getString("email"));
				user.setMobnum(rs.getString("mobnum"));
				user.setPassword(rs.getString("password"));
				
				HttpSession session = request.getSession(true);
				session.setAttribute("userObj", user);
				
				//request.setAttribute("userObj", user);
				RequestDispatcher rd = request.getRequestDispatcher("./home.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("msg","Invalid Email or Password !!!");
				RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				con.close();
				ps.close();
				rs.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}

	}

}
