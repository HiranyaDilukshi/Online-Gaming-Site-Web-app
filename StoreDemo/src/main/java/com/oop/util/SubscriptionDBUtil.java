package com.oop.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.oop.model.Subscription;
import com.oop.model.subscriptionInterface;

public class SubscriptionDBUtil implements subscriptionInterface {

	 private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
	public  boolean validate(String username,String CID) {
			
			try {
				con = dbconnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from subscriptions where username='"+username+"'and CID='"+CID+"'";
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
	
	
	
	public  List<Subscription> getSubscription(String username,String CID) {
		
		ArrayList<Subscription> subscription = new ArrayList<>();
		                                //arraylistobject
		
		try {
			
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from subscriptions where username='"+username+"'and CID='"+CID+"'";
			                                          //columnnameindb //parametername
			rs = stmt.executeQuery(sql);
			   //object
			
			//if username and password correct fetch the relevent user's data
			while (rs.next()) {
				int SID=rs.getInt(1);
				String user= rs.getString(2);
				                      //column index in DB
				String cid = rs.getString(3);
				String name = rs.getString(4);
				String date = rs.getString(5);
				String amount = rs.getString(6);
				
				
				//create customer object and put values variables into construcor
				Subscription s= new Subscription(SID,user,cid,name,date,amount);
				//pass customer object to arraylist object
				subscription.add(s);
			}
			
		} catch (Exception e) {
			
		}
		
		return subscription;	
	}


	public  boolean insertsubscription(String username,String CID,String name,String date,Float amount) {
		
		isSuccess = false;    
		
		try {
			con = dbconnect.getConnection();
			
			stmt = con.createStatement();
		    String sql = "insert into subscriptions values (0,'"+username+"','"+CID+"','"+name+"','"+date+"','"+amount+"')";
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



	public  boolean deleteSubscription(String sid) {
		
		int convsid = Integer.parseInt(sid);
		
		try {
			
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from subscriptions where SID='"+convsid+"'";
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


	public  List<Subscription> getSubscriptionDetails(String sid) {
		
		int convertedID = Integer.parseInt(sid); 
		
		ArrayList<Subscription> sub = new ArrayList<>();
		
		try {
			
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from subscriptions where SID='"+convertedID +"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int SID= rs.getInt(1);
				                      //column index in DB
			
				String username= rs.getString(2);
				String CID= rs.getString(3);
				String name = rs.getString(4);
				
				String date = rs.getString(5);
				
				String amount = rs.getString(6);
				
				Subscription s = new Subscription( SID,username,CID,name,date,amount);
				sub.add(s);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		return sub;	
	}

	


	}


