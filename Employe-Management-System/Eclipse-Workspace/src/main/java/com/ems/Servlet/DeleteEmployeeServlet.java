package com.ems.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ems.entites.Employee;

@WebServlet({ "/DeleteEmployeeServlet", "/Delete" })
public class DeleteEmployeeServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//final configuration
		final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DB_URL = "jdbc:mysql://localhost:3306/employee_management";
		final String DB_USER = "root";
		final String DB_PWD = "root";
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		//accepting the input from search bar and which buttun he click
		String seid = request.getParameter("seid");
		String sbtn = request.getParameter("sbtn");
		
		String qry = "";
		
		if(sbtn==null || seid.isEmpty() || sbtn.equals("Refresh"))
		{
			qry = "Select * From employee ORDER BY eid";
		}
		else if(sbtn.equals("search"))
		{
			qry = "SELECT * FROM employee WHERE eid=" + seid;
		}
		
		
		List<Employee> employees = new ArrayList<Employee>();
		//out.println(employees.isEmpty()); //to check list is empty
		
		try
		{
			Class.forName(DB_DRIVER);
			
			con = DriverManager.getConnection(DB_URL,DB_USER,DB_PWD);
			
			ps = con.prepareStatement(qry);
			
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				int eid = rs.getInt("eid");
				String name = rs.getString("name");
				String dept = rs.getString("dept");
				double sal = rs.getDouble("sal");
				
				employees.add(new Employee(eid,name,dept,sal));
				
				//employees.add(new Employee(rs.getInt("eid"),rs.getString("name"),rs.getString("dept"),rs.getDouble("sal")));
				//in one line
			}
			
			//out.println(employees.isEmpty()); //to check data is coming or not
			//you can print here to check data is coming or not
			/*for(Employee e : employees)
			{
				out.println("Employee ID  : " + e.getEid());
				out.println("Name         : " + e.getName());
				out.println("Department   : " + e.getDept());
				out.println("Salary       : " + e.getSal());
				out.println("--------------------------------");
			}*/
			
			request.setAttribute("employees", employees);
			RequestDispatcher rd = request.getRequestDispatcher("./DeleteEmployee.jsp");
			rd.forward(request,response);
		}
		catch(Exception e)
		{
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
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Connection con = null;
		PreparedStatement ps = null;
		
		//FINAL CONFIGURATION
		final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DB_URL = "jdbc:mysql://localhost:3306/employee_management";
		final String DB_USER = "root";
		final String DB_PWD = "root";
		
		try
		{
			Class.forName(DB_DRIVER);
			
			con = DriverManager.getConnection(DB_URL,DB_USER,DB_PWD);
			
			// taking that eid came from script function to delete
			int eid = Integer.parseInt(request.getParameter("seid"));
			
			//System.out.println(eid);
			
			ps = con.prepareStatement("DELETE FROM employee WHERE eid=?");
			ps.setInt(1, eid);
			
			int sval = ps.executeUpdate();
			
			if(sval>0)
			{			
				out.println("Success");
			}
			else
			{
				out.println("failed");	
			}
		}
		catch(Exception ie)
		{
			System.out.println("Unable To Delete Record !!!");
			out.println("failed");
			ie.printStackTrace();
		}
		finally
		{
			try
			{
				con.close();
				ps.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

}
