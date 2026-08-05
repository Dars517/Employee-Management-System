package com.ems.entites;

public class Employee 
{
	private int eid;
	private String name;
	private String dept;
	private double sal;
	
	//default Constructor
	public Employee()
	{
		
	}
	
	public Employee(int eid, String name, String dept, double sal) 
	{
		
		this.eid = eid;
		this.name = name;
		this.dept = dept;
		this.sal = sal;
	}

	public int getEid() 
	{
		return eid;
	}

	public void setEid(int eid) 
	{
		this.eid = eid;
	}

	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getDept() 
	{
		return dept;
	}

	public void setDept(String dept) 
	{
		this.dept = dept;
	}

	public double getSal() 
	{
		return sal;
	}

	public void setSal(double sal) 
	{
		this.sal = sal;
	}

	@Override
	public String toString() 
	{
		return "Employee [eid=" + eid + ", name=" + name + ", dept=" + dept + ", sal=" + sal + "]";
	}

}
