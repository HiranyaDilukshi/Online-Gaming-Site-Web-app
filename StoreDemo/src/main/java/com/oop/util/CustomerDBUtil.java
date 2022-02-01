package com.oop.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Customer;

public class CustomerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean validate(String username, String password) {
		
		try {
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

public static List<Customer> getCustomer(String userName) {
	
	ArrayList<Customer> customer = new ArrayList<>();
	                                //arraylistobject
	
	try {
		
		con = dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where username='"+userName+"'";
		                                                        //columnnameindb //parametername
		rs = stmt.executeQuery(sql);
		   //object
		
		//if username and password correct fetch the relevent user's data
		while (rs.next()) {
			int id = rs.getInt(1);
			                      //column index in DB
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			//create customer object and put values variables into construcor
			Customer cus = new Customer(id,name,email,phone,username,password);
			//pass customer object to arraylist object
			customer.add(cus);
		}
		
	} catch (Exception e) {
		
	}
	
	return customer;	
}
	
public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
    	
    	isSuccess = false;    
		
    	try {
    		con = dbconnect.getConnection();
			
			stmt = con.createStatement();
    	    String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }

public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {
	                                 //updateservlet values
	try {
		
		con = dbconnect.getConnection();
		stmt = con.createStatement();
		//update customer table set name=//column name=parameter value
		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
				+ "where id='"+id+"'";
		//update for relevent id
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

public static List<Customer> getCustomerDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	try {
		
		con = dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1); //column index of the table given as the number.
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			Customer c = new Customer(id,name,email,phone,username,password);
			cus.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return cus;	
}

public static boolean deleteCustomer(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		
		con = dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from customer where id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
	
}
