package com.oop.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.oop.model.Library;
import com.oop.model.libraryInterface;

public class LibraryDBUtil implements libraryInterface{

	
    private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public boolean validate(String CID) {
		
		try {
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from library where CID='"+CID+"'";
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

//make a Library type list and output the relevent user's data
public  List<Library> getLibrary(String CID) {
	
	ArrayList<Library> library = new ArrayList<>();
	                                //arraylistobject
	
	try {
		
		con = dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from library where CID='"+CID+"'";
		                                          //columnnameindb //parametername
		rs = stmt.executeQuery(sql);
		   //object
		
		//if username and password correct fetch the relevent user's data
		while (rs.next()) {
			
			
			                 //column index in DB
			int PID=rs.getInt(1);
			String cid= rs.getString(2);
			int GID = rs.getInt(3);
			String name = rs.getString(4);
			int size = rs.getInt(5);
			String status = rs.getString(6);
			int timeleft = rs.getInt(7);
			String location = rs.getString(8);
			String date = rs.getString(9);
			String description = rs.getString(10);
			
			
			//create a object call lib and put values in variables into construcor
			Library lib = new Library(PID,cid,GID,name,size,status,timeleft,location,date,description);
			//pass lib object to arraylist object
			library.add(lib);
		}
		
	} catch (Exception e) {
		
	}
	
	return library;	
}








public  boolean insertshipping(String CID,int GID,String name) {
	
	isSuccess = false;    
	
	try {
		con = dbconnect.getConnection();
		
		stmt = con.createStatement();
	    String sql = "insert into library values (0,'"+CID+"','"+GID+"','"+name+"',NULL,NULL,NULL,NULL,NULL,NULL)";
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

public  boolean updatelibrary(String pid, String gid, String name, String size, String status, String timeleft,
		String location, String date, String description) {
	
	
	
try {

	int convertedPID = Integer.parseInt(pid); 
	int convertedGID = Integer.parseInt(gid); 
	int convertedSIZE = Integer.parseInt(size); 
	int convertedTIME = Integer.parseInt(timeleft); 
         con = dbconnect.getConnection();
         stmt = con.createStatement();
         //update customer table set name=//column name=parameter value
         
     /*String sql = "update library set GID='"+convertedGID+"',name='"+name+"',size='"+convertedSIZE+"',status='"+status+"',time_left='"+convertedTIME+"',location='"+location+"',date='"+date+"'description='"+description+"'"
      + "where PID='"+convertedPID+"'";*/
     
         
         String sql="update library set GID='"+convertedGID+"',name='"+name+"',size='"+convertedSIZE+"',status='"+status+"',time_left='"+convertedTIME+"',location='"+location+"',description='"+description+"'"+ "where PID='"+convertedPID+"'";
       //update for relevent id
		int s = stmt.executeUpdate(sql);
		
		if(s > 0) {
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

public  List<Library> getLibraryDetails(String pid) {
	
	int convertedID = Integer.parseInt(pid);
	
	
	
	ArrayList<Library> lib = new ArrayList<>();
	
	try {
		
		con = dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from library where PID='"+convertedID +"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int PID=rs.getInt(1);
			String CID= rs.getString(2);
			                      //column index in DB
			int GID = rs.getInt(3);
			String name = rs.getString(4);
			int size = rs.getInt(5);
			String status = rs.getString(6);
			int timeleft = rs.getInt(7);
			String location = rs.getString(8);
			String date = rs.getString(9);
			String description = rs.getString(10);
			Library l = new Library(PID,CID,GID,name,size,status,timeleft,location,date,description);
			lib.add(l);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return lib;	
}




public  boolean deleteLibrary(String pid) {
	
	int convpid = Integer.parseInt(pid);
	
	try {
		
		con = dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from library where PID='"+convpid+"'";
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
