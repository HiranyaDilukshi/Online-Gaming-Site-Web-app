package com.customer;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;

public class CustomerDBUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<Customer> validate(String userName, String password){
	ArrayList<Customer> cus= new ArrayList<>();
		                   //arraylistobject
		
		
		
		//create database connection
		//String url="jdbc:mysql://localhost:3306/hotel";
		//String user="root";
		//String pass="";
		//validate
		
		try {
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			//Class.forName("com.mysql.jdbc.Driver");
			
			//Connection con=DriverManager.getConnection(url,user,pass);
			//Statement stmt=con.createStatement();
			
			String sql="select * from customer where username='"+userName+"'and password='"+password+"'";
					                                //columnnameindb //parametername
			//ResultSet rs=stmt.executeQuery(sql);
			          //object
			
			rs=stmt.executeQuery(sql);
			
			//if username and password correct fetch the relevent user's data
			
		if(rs.next()) {
			//if there is a user with that un and password
			
			int id=rs.getInt(1);
					         //column index in DB
			String name=rs.getString(2);
			String email=rs.getString(3);
			String phone=rs.getString(4);
			String userU=rs.getString(5);
			String passU=rs.getString(6);
			
			
			//create customer object and put values variables into construcor
			Customer c=new Customer(id,name,email,phone,userU,passU);
			
			//pass customer object to arraylist object
			cus.add(c);
			
		}
		
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return cus;
	}
	



        public static boolean insertcustomer(String name,String email,String phone,String username,String password)
        {
        	  
        	  boolean isSuccess=false;
        
      		try {
      			con=DBConnect.getConnection();
    			stmt=con.createStatement();
    			
      			
    			//pass the values into database
    			String sql="insert into customer values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
    			                        //dbtablename   //autoincrement
    			int rs=stmt.executeUpdate(sql);
    			
    			//either (1) the row count for SQL Data Manipulation Language (DML) statementsor (2) 0 for SQL statements that return nothing
    			if(rs>0) {
    				isSuccess=true;
    			}
    			else {
    				isSuccess=false;
    			}
      		}
        	  catch(Exception e)
      		{
        		  e.printStackTrace();
        	  }
        	  
        	  
        	  return isSuccess;
        	  
      }
}
        
        



